#' A function to convert file path text on clipboard to standard R format.
#'
#' This converts \ to \\ from text on clipboard
#' @param NA
#' @keywords file path
#' @export
#' @examples
#' myFilePath()

myFilePath <- function(){
  fp  <- gsub ( "\\\\",  "/", readClipboard())
  return(fp)
}
