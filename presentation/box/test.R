box::use(
    glue[glue]
  , stringr[str_to_lower, str_to_title]
)


greeting <- "Hello" #not exported so can be used WITHIN box module but NOT EXTERNALLY 

#' Greet Someone when Given a Name  
#' @param name A character string 
#' @return Greeting wtih input name  
#' @export 
#' @examples 
#' say_hello("Martha")
say_hello <- function(name){
  to_use <- str_to_title(str_to_lower(name))
  glue("{greeting}, {to_use}")
}