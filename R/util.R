# Import the piping operator
# As a package, we are forbidden (by good practice) from directly importing any
# other packages (i.e. using library or require functions). However, this code base
# makes extensive use of the dplyr//magrittr 'piping' operator (i.e. hits the pipe),
# and to refactor that out would be a massive pain. Instead, we simply directly
# define the operator here for use in the rest of the package.
# TODO This probably doesn't belong here, but at the moment there really isn't a better place to put it
`%>%` = magrittr::"%>%"

# The Pipe class uses the data.tree data structure as an attribute, which
# has class 'Node'. Define it here so the constructor knows what we're talking about
setOldClass("Node")

#' Collect and return the messages from a condition stack
#'
#' @param cond The condition from which to begin traversing the stack (from child to parent)
#'
#' @return A list of messages from the condition stack, including offending calls
get_cond_stack_messages =
  function(l = list(), cond) {
    slug = paste0("In ", cond$call[1], ": ", cond$message)
    l = unlist(append(l, slug))
    if (!is.null(cond$parent))
      l = get_cond_stack_messages(l = l, cond = cond$parent)
    return(l)
  }

# Find the mode of a vector
v_mode =
  function(v) {
    # Collect set of unique values in v
    uniqv = unique(v)
    # Find the unique value which appears most frequently in v
    mode_val = uniqv[which.max(tabulate(match(v, uniqv)))]
    # Find the element in v which matches the value of the mode value
    # This is done because in collecting the set of unique values in v, those
    # values may lose certain characteristics. Specifically, difftime objects
    # will be converted to numeric values, i.e. a vector of difftimes with a
    # mode of 24hrs will be converted to a vector of numerics, the mode of which
    # will be the integer 24. To preserve classes, we perform this final step to
    # return an element of the original vector which matches the mode value
    mode_ix = which(v == mode_val)[[1]]
    mode = v[mode_ix]
    return(mode)
  }

# Insert data into the test db
populate_test_db =
  function(con, table, dat, ...) {
    dplyr::copy_to(
      dest = con,
      df = dat,
      name = table,
      temporary = F,
      ...
    )
  }

#' Build a temporary testing DB
#'
#' Builds a temporary DB based on a snapshot. By default DB saved in temporary directory
#'
#' @param from_ Path of DB snapshot
#' @param to_ Path of temporary DB
#' @param dats Named list of data.frames to use to populate the DB.
build_temp_db =
  function(
    from_ = here::here("db", "temp_db_snapshot.db"),
    to_ = withr::local_tempfile(pattern = "metl_test_db"),
    dats = list(),
    ...
  ) {
    # Create a new instance of test db based on the stored snapshot
    # By doing this, we can maintain the more complex aspects of a fully
    # instantiated DB (like constraints and primary key definitions) without
    # having to recreate them ourselves every time
    file.copy(
      from = from_,
      to = to_
    )

    # Instantiate a connection to the new DB instance
    con =
      DBI::dbConnect(
        drv = RSQLite::SQLite(),
        to_,
        ...
      )

    # Populate db tables from `dats`
    for (n in names(dats)) {
      populate_test_db(
        con = con,
        table = n,
        dats[[n]],
        append = T
      )
    }

    return(con)
  }


#' Make timestamps unique
#'
#' Helper function for making timestamps unique. This is accomplished by looking for groups of identical timestamps within `v`, and if any are found each member of the group is incremented by `incr` so as to become a unique value. By default, `incr` is 1e-6 s, the smallest possible value which a POSIXct timestamp can record, and so the smallest differential by which two timestamps can be considered to be unique to one another.
#'
#' @param v The vector of timestamps (as integers)
#'
#' @return The same vectpr of timestamps as `v`, in the same order, but with any identical timestamps having been bumped to unique values.
bump_timestamps =
  function(v, incr = 1e-6) {
    data.frame(
      # Record the original order of the vector
      ix = seq(1, length(v)),
      # Add the timestamp vector as a column
      timestamp = v
    ) %>%
    # Group by timestamps to find any records with identical timestamps
    dplyr::group_by(timestamp) %>%
    # Add a field which describes each records position within its timestamp group
    # For most records, this will be 0, as they are the only record in their group
    # For any records which share a timestamp value, one will be given the value
    # of 0, the rest will be given sequentially increasing values (1, 2, 3, ...)
    dplyr::mutate(seq_n = seq(1,dplyr::n())) %>%
    dplyr::ungroup() %>%
    # Now we use the sequence value of each record to add a tiny amount of time
    # to the timestamp of each record. Testing suggests that the smallest
    # unit of time which can distinguish two timestamps is 1e-6s, so that's the
    # amount by which we'll increment the timestamps.
    # Again, for most records this will do nothing, as the sequence value will be
    # 0, but any records which share a timestamp will be 'bumped' off of their
    # original values to (hopefully) unique values.
    # NOTE: This method DOES ASSUME that a single round of bumping will be enough
    # to make all timestamps unique. This should be a reasonable expectation as
    # long as the timestamps are not being recorded at a rate exceeding 1000000/s
    dplyr::mutate(timestamp = timestamp + (incr)*(seq_n - 1)) %>%
    dplyr::arrange(ix) %>%
    dplyr::pull(timestamp)
  }
