
### LOAD BOX MODULE ##
## May have to edit pathway depending on your current working directory 

box::use(box/greet) 
greet$say_hello("Martha")

## TRY changing  the greeting to a different word, like 'Hey' ## 
box::reload(greet)
greet$say_hello("Martha")
