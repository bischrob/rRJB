#' A function to install packages if they do not exist
#'
#' This function checks if needed packages are installed and installs and loads
#' all requested packages. Additionally, the package warnings are suppressed.
#' @param myPackages List all packages needed. There is no default.
#' @keywords library, install.packages
#' @export
#' @examples
#' myPackages <- c('dplyr','ggplot2')
#' myLibrary(myPackages)

myLibrary <- function(myPackages){
  usePackage <- function(p) 
  {
    if (!is.element(p, installed.packages()[,1]))
      install.packages(p, dep = TRUE)
    require(p, character.only = TRUE)
  }
  
  lapply(myPackages, usePackage)
}


