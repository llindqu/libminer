#definition of our first function
lib_summary <- function() {
  pkgs <- utils::installed.packages() #take all packages on the machine
  pkg_tbl <- table(pkgs[, "LibPath"]) #tabulates by library path
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE) #turns into dataframe
  names(pkg_df) <- c("Library", "n_packages") #gives it column names
  pkg_df #returns dataframe
}
