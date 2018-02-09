#' A function to convert file path text on clipboard to standard R format
#'
#' This converts \ to \\ from text on clipboard
#' @param None All that is required is that a file path is on the clipboard
#' @keywords file path
#' @export
#' @examples
#' myFilePath()

myFilePath <- function(){
  fp  <- gsub ( "\\\\",  "/", readClipboard())
  return(fp)
}
