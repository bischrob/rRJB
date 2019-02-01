#' A function to install packages if they do not exist
#'
#' This function checks if needed packages are installed and installs and loads
#' all requested packages.
#' @param
#' @keywords set working directory, setwd
#' @export
#' @examples
#' myLibrary('dplyr','ggplot2')

myLibrary <- function(...){
  myPackages <- c(...)
  usePackage <- function(p)
  {
    if (!is.element(p, installed.packages()[,1]))
      install.packages(p, dep = TRUE)
    require(p, character.only = TRUE)
  }

  lapply(myPackages, usePackage)
}


