// Stata codebook example
/***
# Codebook example for STATA

The source code for this file is [here](02_codebook_plaintext.do).

## Simple example

The following is [perfectly acceptable content](02_codebook_plaintext.txt),
but not necessarily pretty to view.
The core code only requires native commands. Note that it is important that
output be to a plaintext log file, as SMCL (Stata's fancy log format)
is not portable.
***/
capture close log
sysdir set PLUS "./ado/"
set more 1
set linesize 147
log using "02_codebook_plaintext.txt", replace text
// not run: use my_input_data
di
sysuse auto
/*==== File structure ====*/
describe
/*==== Summary statistics ====*/
codebook
qui log c
// also translate this program
// This requires a bit of setup, see 01_codebook_fancy.do
// markdoc "02_codebook_plaintext.do", replace export(md) install
