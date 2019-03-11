Workout 1
================
Ryan Roggenkemper
March 10, 2019

``` r
library(ggplot2)
```

    ## Warning: package 'ggplot2' was built under R version 3.5.2

``` r
library(dplyr)
```

    ## Warning: package 'dplyr' was built under R version 3.5.2

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
all_five = read.csv("../data/shots-data.csv")
all_five$made = c(0, 1)[(all_five$shot_made_flag=="shot_yes") + 1L]
```

2PT Effective Shooting % by Player
----------------------------------

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <fct>          <int> <dbl>     <dbl>
    ## 1 Andre Iguodala   210   134     0.638
    ## 2 Kevin Durant     643   390     0.607
    ## 3 Stephen Curry    563   304     0.540
    ## 4 Klay Thompson    640   329     0.514
    ## 5 Draymond Green   346   171     0.494

3PT Effective Shooting % by Player
----------------------------------

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <fct>          <int> <dbl>     <dbl>
    ## 1 Klay Thompson    580   246     0.424
    ## 2 Stephen Curry    687   280     0.408
    ## 3 Kevin Durant     272   105     0.386
    ## 4 Andre Iguodala   161    58     0.360
    ## 5 Draymond Green   232    74     0.319

Effective Shooting % by Player
------------------------------

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <fct>          <int> <dbl>     <dbl>
    ## 1 Kevin Durant     915   495     0.541
    ## 2 Andre Iguodala   371   192     0.518
    ## 3 Klay Thompson   1220   575     0.471
    ## 4 Stephen Curry   1250   584     0.467
    ## 5 Draymond Green   578   245     0.424

Article: Why Andre Iguodala should be the new star of the Warriors' offense
===========================================================================

### Introduction

Every sport has moments that revolutionize how it is played. For high jump, it was when Dick Fosbury introduced the Fobsbury Flop, jumping backwards over the bar instead of staying upright, and almost instantaneously showing the world a new and better approach to the high jump. In this article, I intend to do something similar for basketball. Right now, basketball is dominated by long-range shooters. Players like Steph Curry, who consistently score 3-point shots, are given as many opportunities to do so as possible by their teammates because those shots are worth more than 2-pointers, and Steph (and similar players) can make them. I will argue that the optimal way to play is in fact to open up as many opportunities as possible for short-range shooters like Andre Iguoala, who is more commonly known as Iggy.

### Background

There is little background for this article. I do not know much about the nuances of basketball, and I am reasonably certain an idea like this has not been suggested in earnest before, as is being done here. Nevertheless, I believe this theory could be fruitfully put to use, in part because it is so different from how the game is currentl played that other teams would be caught by suprise.

### Data

The data this article is based on consists of information from the 2016 season about all of the shots taken by 5 players from the Golden State Warriors: Stephen Curry, Kevin Durant, Andre Iguodala, Klay Thompson, and Draymond Green. It was collected by me from the Github repository of UC Berkeley's Statistics 133 course. I do not know how the data was originally gathered/collected from. Generally, sample sizes of 5 are on the small side for producing statistically significant results. However, in this case, because there is data for 5 players, and basketball allows for exactly 5 players per team to be on the court, it is the opinion of the author that this sample size is perfect.

### Analysis

The analysis supporting this claim will primarily be based on tables showing shooting averages for each of the five players, from within the 3-point line, outside the 3-point line, and for all shots. These tables can be seen below:

##### 2PT Effective Shooting % by Player

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <fct>          <int> <dbl>     <dbl>
    ## 1 Andre Iguodala   210   134     0.638
    ## 2 Kevin Durant     643   390     0.607
    ## 3 Stephen Curry    563   304     0.540
    ## 4 Klay Thompson    640   329     0.514
    ## 5 Draymond Green   346   171     0.494

##### 3PT Effective Shooting % by Player

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <fct>          <int> <dbl>     <dbl>
    ## 1 Klay Thompson    580   246     0.424
    ## 2 Stephen Curry    687   280     0.408
    ## 3 Kevin Durant     272   105     0.386
    ## 4 Andre Iguodala   161    58     0.360
    ## 5 Draymond Green   232    74     0.319

##### Effective Shooting % by Player

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <fct>          <int> <dbl>     <dbl>
    ## 1 Kevin Durant     915   495     0.541
    ## 2 Andre Iguodala   371   192     0.518
    ## 3 Klay Thompson   1220   575     0.471
    ## 4 Stephen Curry   1250   584     0.467
    ## 5 Draymond Green   578   245     0.424

<img src="../images/gsw-shot-charts.png" width="80%" style="display: block; margin: auto;" />
