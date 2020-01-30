#' Finds the definition(s) for a given acronym
#'
#' @param acronym the computer acronym
#'
#' @return a data frame with the definitions
#' @export
#'
#' @examples
#' defs <- get_definitions("AAP")
#' defs
#' defs$definition
#' # [1] "Address Allocation Protocol (Multicast)"
#' # [2] "Applications Access Point"
#' # [3] "Association of American Publishers (Org., USA)"
get_definitions <- function(acronym) {
  vera::vera[vera::vera$acronym == toupper(acronym), ]
}
