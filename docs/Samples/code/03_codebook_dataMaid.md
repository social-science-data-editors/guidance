---
title: "Example codebook in R"
author: "Lars Vilhuber"
date: "October 1, 2018"
output: 
  html_document: 
    keep_md: yes
---



## Pretty example

There are a variety of ways one can describe data in R, but one of the more convenient ways is to use the [`dataMaid`](https://cran.r-project.org/web/packages/dataMaid/index.html)  package on CRAN.

### Installing dataMaid
`dataMaid` is on CRAN, so we install it from there.

```r
# from https://www.r-bloggers.com/loading-andor-installing-packages-programmatically/
is_installed <- function(mypkg) is.element(mypkg, installed.packages()[,1])
load_or_install<-function(package_names)
{
  for(package_name in package_names)
  {
    if(!is_installed(package_name))
    {
       install.packages(package_name,repos="http://lib.stat.cmu.edu/R/CRAN")
    }
    library(package_name,character.only=TRUE,quietly=TRUE,verbose=FALSE)
  }
}
# calling our two functions:
load_or_install(packages)
```

Then we can easily load it, and use the `makeCodebook()` command. 

```r
library(foreign)
# we use the same dataset as for the Stata example
autos <- read.dta("http://www.stata-press.com/data/r9/auto.dta")
library(dataMaid)
makeDataReport(autos,
			   replace=TRUE,
			   openResult = FALSE,
			   codebook = TRUE,
			   file="codebook_autos.Rmd")
```

The codebook will be called [codebook_autos.pdf](codebook_autos.pdf), but the intermediate RMarkdown file [codebook_autos.Rmd](codebook_autos.Rmd) can also be tweaked.

### References

```r
citation(package="dataMaid")
```


To cite package 'dataMaid' in publications use:

  Anne Helby Petersen and Claus Thorn Ekstrøm (2018). dataMaid: A
  Suite of Checks for Identification of Potential Errors in a Data
  Frame as Part of the Data Screening Process. R package version
  1.1.2. https://CRAN.R-project.org/package=dataMaid

A BibTeX entry for LaTeX users is

  @Manual{,
    title = {dataMaid: A Suite of Checks for Identification of Potential Errors in a
Data Frame as Part of the Data Screening Process},
    author = {Anne Helby Petersen and Claus Thorn Ekstrøm},
    year = {2018},
    note = {R package version 1.1.2},
    url = {https://CRAN.R-project.org/package=dataMaid},
  }

