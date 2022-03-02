# Intro to the [`{box}`](https://klmr.me/box/) Package 

Files for Thursday, March 10, 2022 R Ladies - Twin Cities 


## R and Package Informaiton 

R version 4.1.1 (2021-08-10) -- "Kick Things"

| Package | Version (I used) | Description | 
|:----|:----|:--------|
[`{box}`](https://klmr.me/box/)    | 1.1.0 | Create modules | 
[`{cowplot}`](https://wilkelab.org/cowplot/index.html)| 1.1.1 | Layout multiple plots, using `plot_grid()` | 
[`{glue}`](https://glue.tidyverse.org/)   | 1.5.1 | Create text strings | 
[`tidyverse`](https://www.tidyverse.org/) [`{dplyr}`](https://dplyr.tidyverse.org/)  | 1.0.7 | Data manipulation | 
[`tidyverse`](https://www.tidyverse.org/) [`{ggplot2}`](https://ggplot2.tidyverse.org/)| 3.3.5 | Create plots and charts | 
[`tidyverse`](https://www.tidyverse.org/) [`{stringr}`](https://stringr.tidyverse.org/)| 1.4.0 | Manipulate character strings | 
[`tidyverse`](https://www.tidyverse.org/) [`{tidyr}`](https://tidyr.tidyverse.org/)  | 1.1.3 | Create tibbles |


### [`{glue}`](https://glue.tidyverse.org/) is a another way to combine text then with `paste()`/`paste0()` 

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

