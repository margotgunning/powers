Intro
=====

This R package was built in STAT545 at UBC, and is intended for teaching/learning purposes only

Install
=======

This R package can be installed from github:

-   Note I haven't pushed the final version yet; will update README when I push the final version

``` r
#install.package("devtools")
devtools::install_github("margotgunning/powers")
```

    ## Downloading GitHub repo margotgunning/powers@master
    ## from URL https://api.github.com/repos/margotgunning/powers/zipball/master

    ## Installing powers

    ## "C:/PROGRA~1/R/R-34~1.2/bin/x64/R" --no-site-file --no-environ --no-save  \
    ##   --no-restore --quiet CMD INSTALL  \
    ##   "C:/Users/Margot/AppData/Local/Temp/RtmpmiUFiX/devtools3f5c74941042/margotgunning-powers-ea7fd18"  \
    ##   --library="C:/Users/Margot/Documents/R/win-library/3.4"  \
    ##   --install-tests

    ## 

Here's a short example
======================

This can also be seen in the vignette, which I also haven't finished yet

``` r
powers::square(2)
```

    ## [1] 4

``` r
#>[1] 4

powers::cube(9)
```

    ## [1] 729

``` r
#>[1] 729

powers::box_cox_transform(2,-1)
```

    ## [1] 0.5

``` r
#>[1] 0.5

powers::inverse_box_cox_transform(0.5,-1)
```

    ## [1] 2

``` r
#>[1] 2
```

For development
===============

Not much to say here because this is a learning tool.

There is an internal function called pow that is the machinery for the sqaure function, and cube function.

The box-cox transformation functions do not use the internal function pow. Something else I wanted to look at was adding in a condition to make a dataframe in the input for response and t\_params had lenghts greater than one; but I did not have time to do this.
