#' Manipulate the options
#'
#' functions to manipulate the options.
#'
#' @param opt a possible value indicating the option(s) to return
#' @param a the value for option a
#' @param b the value for option b
#'
#' @return in case of \code{setOpt} the old options. In case of
#' \code{getOpt}, the options.
#'
#' @examples
#' getOpt()
#' getOpt("b")
#'
#' setOpt( a = "another value")
#' getOpt("a")
#'
#' @rdname getOpt
#' @export
getOpt <- function( opt = c("a","b")){
  opt <- match.arg(opt, several.ok = TRUE)
  out <- as.list(pkgopt)
  return(out[opt])
}

#' @rdname getOpt
#' @export
setOpt <- function(a,b){
  out <- list()

  if(!missing(a)){
    out[["a"]] <- pkgopt[["a"]]
    pkgopt[["a"]] <- a
  }

  if(!missing(b)){
    out[["b"]] <- pkgopt[["b"]]
    pkgopt[["b"]] <- b
  }
  return(invisible(out))
}
