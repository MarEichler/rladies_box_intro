
box::use(
  tidyr[tribble]
)

#' Title
#'
#' @param x 
#'
#' @return
#' @export
#'
#' @examples

varnames <- tribble(
  ~var, ~name
  , "manufacturer", "Vehicle Manufacturer"
  , "model"       , "Vehicle Model Name"
  , "displ"       , "Engine Displacement in Liters"
  , "year"        , "Year of Manufacturing"
  , "cyl"         , "Number of Cylinders"
  , "trans"       , "Transmission Type"
  , "drv"         , "Drive Type"
  , "cty"         , "City Miles per Gallon"
  , "hwy"         , "Highway Miles per Gallon"
  , "fl"          , "Fuel Type"
  , "class"      , "Vehicle Class"
)


#' Title
#'
#' @param x 
#'
#' @return
#' @export
#'
#' @examples
m <- function(x){
  
}