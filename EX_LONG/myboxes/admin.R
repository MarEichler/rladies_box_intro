
box::use(
  tidyr[tribble]
)

#' Listing Out Variables and their Names 
varnames <- tribble(
  ~var, ~name
  , "manufacturer", "Manufacturer"
  , "model"       , "Model Name"
  , "displ"       , "Engine Displacement in Liters"
  , "year"        , "Year of Manufacturing"
  , "cyl"         , "Number of Cylinders"
  , "trans"       , "Transmission Type"
  , "drv"         , "Drive Type"
  , "cty"         , "City Miles per Gallon"
  , "hwy"         , "Highway Miles per Gallon"
  , "fl"          , "Fuel Type"
  , "class"       , "Class"
)


#' Pull Name to Use in Plot 
#'
#' @param VARst A Character string 
#'
#' @return A Character full name 
#' @export
#'
#' @examples
#' name("manufacturer")
name <- function(VARst){
  varnames[which(varnames$var == VARst),]$name
}
