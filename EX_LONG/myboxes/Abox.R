
box::use(
  ./admin
  , dplyr[...]
  , magrittr[`%>%`]
  , ggplot2[...]
  , glue[...]
  , stats[reorder]
)



#' Create Data for Frequency Plot 
#'
#' @param VARst A character string
#'
#' @return DF to use in plot 
#'
#' @examples
#' createdata("manufacturer")
createdata <- function(VARst){
  
  toPlot <- ggplot2::mpg %>%
    rename(VAR = all_of(VARst)) %>% 
    count(VAR) %>%
    mutate(VAR = reorder(VAR, n)) %>%
    arrange(VAR)
  
  return(toPlot)
}


#' Create Frequency Plot 
#'
#' @param VARst A character string
#'
#' @return A ggplot2 frequency plot 
#' @export
#'
#' @examples
#' createplot("manufacturer")
createplot <- function(VARst){
  OUT <- createdata(VARst) %>% 
    ggplot(., aes(x = n, y = VAR)) + 
    geom_col() + 
    labs( 
      title = glue("Frequency of {admin$name(VARst)}")
      , subtitle = "mpg data set"
      , y     = glue("{admin$name(VARst)}")
      , x     = "Count"
    )
  return(OUT)
}