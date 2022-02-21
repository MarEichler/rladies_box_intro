# Intro to the [`{box}`](https://klmr.me/box/) Package 

Files for Thursday, March 10, 2022 R Ladies - Twin Cities with Martha Eichlersmith


## R and Package Informaiton 

R version 4.1.1 (2021-08-10) -- "Kick Things"

| Package | Version | Description | 
|:----|:----|:--------|
`{ggplot2}`| 3.3.5 | Create plots and charts | 
`{dplyr}` | 1.0.7 | Data manipulation | 
`{glue}` | 1.5.1 | Create text strings | 
`{cowplot}` | 1.1.1 | Layout multiple plots | 


[`{glue}`](https://glue.tidyverse.org/) is a another way to combine text then with `paste()`/`paste0()` 

```r
name <- "Martha" 

#with paste0() 
paste_out <- paste0("Hello ", name)
paste_out
#> [1] "Hello Martha"
class(paste_out)
#> [1] "character"

#with {glue}, anything in curly brakes is evaluated as R code 
glue_out <- glue::glue("Hello {name}")
glue_out
#> Hello Martha
class(glue_out)
#> [1] "glue"      "character"
```

