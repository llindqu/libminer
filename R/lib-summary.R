#' R Library Summary
#'
#' Provides a brief summary of the package libraries on your machine. Yay!
#'
#' @return A data.frame containing the count of packages in each of the user's
#'   libraries
#' @export
#'
#' @examples
#' lib_summary()


lib_summary <- function() {
  ...
}
lib_summary <- function() {
  pkgs <- utils::installed.packages() #take all packages on the machine
  pkg_tbl <- table(pkgs[, "LibPath"]) #tabulates by library path
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE) #turns into dataframe
  names(pkg_df) <- c("Library", "n_packages") #gives it column names
  pkg_df #returns dataframe
}
