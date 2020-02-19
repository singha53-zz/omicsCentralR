#' The omics central logo, using ASCII or Unicode characters
#'
#' Use [crayon::strip_style()] to get rid of the colors.
#'
#' @param unicode Whether to use Unicode symbols. Default is `TRUE`
#'   on UTF-8 platforms.
#'
#' @md
#' @export
#' @examples
#' omicscentral_logo()

omicscentral_logo <- function(unicode = l10n_info()$`UTF-8`) {
  logo <- c(
"  __                             ___                             _  ",
" /\\_\\/           o              / (_)                           | | ",
"|    | _  _  _       __   ,    |      _   _  _  _|_  ,_    __,  | | ",
"|    |/ |/ |/ |  |  /    / \\_  |     |/  / |/ |  |  /  |  /  |  |/  ",
" \\__/   |  |  |_/|_/\\___/ \\/    \\___/|__/  |  |_/|_/   |_/\\_/|_/|__/")

  hexa <- c("*", ".", "o", "*", ".", "*", ".", "o", ".", "*")
  if (unicode) hexa <- c("*" = "\u2b22", "o" = "\u2b21", "." = ".")[hexa]

  cols <- c("red", "yellow", "green", "magenta", "cyan",
    "yellow", "green", "white", "magenta", "cyan")

  col_hexa <- purrr::map2(hexa, cols, ~ crayon::make_style(.y)(.x))

  for (i in 0:9) {
    pat <- paste0("\\b", i, "\\b")
    logo <- sub(pat, col_hexa[[i + 1]], logo)
  }

  structure(crayon::blue(logo), class = "omicscentral_logo")
}

#' @export

print.omicscentral_logo <- function(x, ...) {
  cat(x, ..., sep = "\n")
  invisible(x)
}
