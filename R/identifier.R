Condition =
#' Condition class.
#'
#' Used to define a condition the conditions which a directory must satisfy to be considered a valid tag directory.#'
#'
#' @field condition function. Function which returns TRUE if the directory satisfies the condition, FALSE otherwise.
#' @field message character. Message to be displayed if the condition is not satisfied.
  setRefClass(
    "Condition",
    fields = list(
      condition = "function",
      message = "character",
      optional = "logical"
    ),
    methods =
      list(
        initialize =
          function(
            # By default, conditions should not be optional
            optional = F,
            ...
          ) {
            callSuper(
              optional = optional,
              ...
            )
          },
        check =
          function(d) {
            condition(d)
          }
      )
  )


#' Identifier class. Used to identify if a given directory belongs to a particular make/model of tag, based on available metadata
#'
#' Base class. Not intended to be implemented directly.
#'
#' @export Identifier
Identifier =
  setRefClass(
    "Identifier",
    fields =
      list(
        conditions = "list"
      ),
    methods =
      list(

        identify =
          function(d) {
            "Returns TRUE if all Conditions pass, otherwise returns FALSE"
            lapply(
              conditions,
              function(c) c$check(d)
            ) %>%
            unlist %>%
            all()
          },

        failed_conditions =
          function(d) {
            "Returns a list of all conditions which failed"
            Filter(
              function(c) !c$check(d),
              conditions
            )
          },

        failed_condition_messages =
          function(d) {
            "Returns a list of all messages from conditions which failed"
            failed_conditions(d) %>%
            lapply(
              function(c) c$message
            ) %>%
            unlist()
          },

        valid =
          function(d) {
            "Returns TRUE if all non-optional Conditions pass"
            Filter(
              function(c) !c$optional,
              conditions
            ) %>%
            lapply(
              function(c) c$check(d)
            ) %>%
            unlist %>%
            all()
          }
      )
  )


#' Tag Identifier
#'
#' Maps raw tag data to the appropriate Decoder based on structure of the raw data. Used internally by the [Pipe] class.
#'
#' @details The logic implemented by this class makes decisions based on some pretty nitty-gritty details, like naming conventions, file-types present, number of files present, etc. As such, it's crucial that the data has not been altered by the user in any way since being extracted from the tag and/or run through any post-processing software, as even a very small change (by human standards) can result in a directory becoming un-identifiable.
#' @export TagIdentifier
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
