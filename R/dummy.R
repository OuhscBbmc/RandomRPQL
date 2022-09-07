#' @title
#' Example title is an incomplete sentence --no period
#'
#' @description
#' "Description" is a series of complete sentence
#'
#' @param x Integer to increment Required.
#' @param y Amount to increment.  Defaults to 1. Required.
#'
#' @return
#' An [base::integer]
#'
#' @details
#' Adds one.
#'
#' @note
#' Use "note" for something more obscure than a "description"?
#'
#' @author
#' Yutian Thompson
#'
#' @examples
#' dummy(0L)
#' dummy(1L)
#' dummy(0L, 2L)

#' @export
dummy <- function(x, y = 1L) {
  checkmate::assert_integer(x, any.missing = TRUE, len = 1)
  checkmate::assert_integer(y, any.missing = TRUE, len = 1)

  x + y
}
