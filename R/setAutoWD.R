#' This function sets the working directory to the source file location.
#' Must be using RStudio
#' @param NA
#' @keywords set working directory, setwd
#' @export
#' @examples
#' setAutoWD

setAutoWD <- function(...){
  setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
}
