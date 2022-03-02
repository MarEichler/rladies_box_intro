
box::use(
    glue[glue]
  , stringr[str_to_title]
)

#' not exported, used WITHIN only 
greeting <- "Hello" 

#' Greet Someone when Given a Name  
#' @param name A character string 
#' @return Greeting with input name  
#' @export 
#' @examples 
#' say_hello("Martha")
say_hello <- function(name){
  to_use <- str_to_title(name)
  glue("{greeting}, {to_use}")
}
