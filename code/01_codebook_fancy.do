// Stata codebook example
/***
# Codebook example for STATA
The source code for this file is [here](01_codebook_fancy.do).

## Prettier example
This is a bit more involved example, but illustrates the core code.

## Requirements
This fancier example leverages the [`markdown`](http://haghish.com/statistics/stata-blog/reproducible-research/markdoc.php) package as of 2018-10-01.
Here we install it locally to this project.
***/
set more 1
set linesize 147
qui shell mkdir ado
sysdir set PLUS "./ado/"
// The following lines need to be run the first time this code is run (not ideal)
// not run: net install github, from("https://haghish.github.io/github/")
// not run: github install haghish/markdoc
// not run: markdoc, install

/***
Once the markdoc package is installed, we can create marginally fancier
codebooks as well (see [the output](01_codebook_fancy.md)).

## Fancy introduction
For instance we could write a fancy introduction here.

## File structure
We can now describe the file structure.
***/
sysuse auto
describe
/***
## Summary statistics
***/
codebook
// also translate this program
// markdoc "01_codebook_fancy.do", replace export(md) install
