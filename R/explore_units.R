#' @title Display the list of supported units
#'
#' @description \code{convert} accepts a vector of numeric values and
#' converts them from one unit to another. Approximately 1,300 units
#' are available.
#'
#' @param shiny Whether to launch an interactive shiny app or return a character vector of
#' unit types.
#' @examples
#' explore_units()
#'
#' @export

explore_units <- function(){

<<<<<<< HEAD

||||||| merged common ancestors
<<<<<<< HEAD
=======
>>>>>>> f5bf13998023e2c9a2006b7f1ca2235ebe6e5bf9
    appDir <- system.file("shiny_examples", "app", package = "convertr")

    if (appDir == "") {
      stop("Could not find example directory. Try re-installing `convertr`.", call. = FALSE)
    }
    shiny::runApp(paste0(appDir), display.mode = "normal")
}