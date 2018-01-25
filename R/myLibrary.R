#' A function to install packages if they do not exist
#'
#' This function checks if needed packages are installed and installs and loads all requested packages.
#' @param my.packages List all packages needed. There is no default.
#' @keywords library, install.packages
#' @export
#' @examples
#' my.packages <- c('dplyr','ggplot2')
#' myLibrary(my.packages)

myLibrary <- function(my.packages){
  usePackage <- function(p)
  {
    if (!is.element(p, installed.packages()[,1]))
      install.packages(p, dep = TRUE)
    require(p, character.only = TRUE)
  }

  lapply(my.packages, usePackage)
}

