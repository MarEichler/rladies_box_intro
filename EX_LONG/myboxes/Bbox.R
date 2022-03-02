
box::use(
  ./admin
  , dplyr[...]
  , magrittr[`%>%`]
  , ggplot2[...]
  , glue[...]
)


#' Create Data for Slope Plot 
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
    group_by(year, VAR) %>% 
    summarize(mean = mean(cty), .groups = "keep")
  
  return(toPlot)
}


#' Create Slope Plot 
#'
#' @param VARst A character string
#'
#' @return A ggplot2 slope plot 
#' @export
#'
#' @examples
#' createplot("manufacturer")
createplot <- function(VARst){
  OUT <- createdata(VARst) %>% 
    ggplot(., aes(x = year, y = mean, color = as.character(VAR))) + 
    geom_line() +
    geom_point() + 
    scale_x_continuous(breaks = c(1999,2008)) + 
    scale_color_discrete(name = glue("{admin$name(VARst)}")) + 
    labs( 
      title = glue("Average City MPG by Year and {admin$name(VARst)}")
      , y     = "Average of City Miles per Gallon"
      , x     = "Year"
    )
  return(OUT)
}
