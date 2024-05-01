#' Identifier class. Used to identify if a given directory belongs to a particular make/model of tag, based on available metadata
#'
#' Base class. Not intended to be implemented directly.
Identifier =
  setRefClass(
    "Identifier",
    fields =
      list(
        identify_ = "function"
      ),
    methods =
      list(
        # Returns TRUE/FALSE indicating if the metadata in the passed directory matches the patterns expected of the tag type with which this Identifier child class is associated
        identify =
          function(d) {
            identify_(d)
          }
      )
  )


#' Tag Identifier
#'
#' Maps raw tag data to the appropriate Decoder based on structure of the raw data. Used internally by the [TagProcessor] class.
#'
#' @details The logic implemented by this class makes decisions based on some pretty nitty-gritty details, like naming conventions, file-types present, number of files present, etc. As such, it's crucial that the data has not been altered by the user in any way since being extracted from the tag and/or run through any post-processing software, as even a very small change (by human standards) can result in a directory becoming un-identifiable.
#' @export
TagIdentifier =
  #----
setRefClass(
  "TagIdentifier",
  fields =
    list(
      decoders = "list"
    ),
  methods =
    list(
      identify =
        function(d) {
          "Applies the Identifiers of all known Decoders to the directory. Returns results as a data.frame"
          # Initialize tibble
          t__ =
            # First field 'dc' is a list of all possible decoders
            tibble::tibble(dc = .self$decoders)

          # Update the tibble to include the name associated with each decoder
          t__['name'] =
            t__[['dc']] %>%
            lapply(
              function(dc) {dc$label}
            ) %>%
            unlist()

          # Apply the identifier of each decoder in the tibble to the directory in question
          # and record the results
          t__ =
            cbind(
              t__,
              t__[['dc']] %>%
                lapply(
                  function(dc) {
                    tryCatch(
                      {
                        return(
                          c(
                            'result' = dc$identifier$identify(d),
                            'message' = ""
                          )
                        )
                      },
                      error =
                        function(cond) {
                          return(
                            c(
                              'result' = FALSE,
                              'message' = cond$message
                            )
                          )
                        }
                    )
                  }
                ) %>%
                do.call(rbind, .) %>%
                as.data.frame() %>%
                dplyr::mutate(
                  # For some reason the ID results get turned into characters
                  # Here we convert them back to Boolean values
                  result = ifelse(result == "TRUE", T, F)
                )
            )

          # Return the dataframe
          return(t__)
        }
    )
)
