#' @title
#' Example title is an incomplete sentence --no period
#'
#' @description
#' "Description" is a series of complete sentences.
#' See https://r-pkgs.org/man.html.
#' Keep these documentation lines under 80 or 100 characters
#' (I forgot which )
#'
#' @param x Integer to increment.  Required.
#' @param y Amount to increment.  Defaults to 1. Required integer.
#'
#' @return
#' A [base::integer] that is incremented by `y`.
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
#'
#' @importFrom rlang .data
#' @export
dummy <- function(x, y = 1L) {
  checkmate::assert_integer(x, any.missing = TRUE, len = 1)
  checkmate::assert_integer(y, any.missing = TRUE, len = 1)

  d <-
    mtcars |>
    dplyr::select(
      .data$hp,           # In dplyr verbs, prefix most variables names with `.data` to avoid warnings from R CMD check.
    )

  x + y
}
