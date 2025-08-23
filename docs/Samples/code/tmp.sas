filename auto "auto.dta";
/* this next step is a kludge */
/* options SSLCALISTLOC="/usr/lib64/R/library/RCurl/CurlSSL/cacert.pem";
proc http method="get" out=auto url="http://www.stata-press.com/data/r9/auto.dta";
run;*/
x wget -O auto.dta http://www.stata-press.com/data/r9/auto.dta;
proc import datafile=auto out=auto dbms=dta;
run;
