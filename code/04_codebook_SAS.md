---
title: "Example codebook in SAS"
author: "Lars Vilhuber"
date: "October 1, 2018"
output:
  html_document:
    keep_md: yes
---





## Get the auto.dta file

```sashtml
/* this next step is a kludge */
/* options SSLCALISTLOC="/usr/lib64/R/library/RCurl/CurlSSL/cacert.pem";
proc http method="get" out=auto url="http://www.stata-press.com/data/r9/auto.dta";
run;*/
x wget -O auto.dta "http://www.stata-press.com/data/r9/auto.dta" 2>/dev/null 1>&2;

```

## Create the codebook

```sashtml
filename auto "auto.dta";
proc import datafile=auto out=auto dbms=dta;
run;
proc contents;
proc means;
run;

```


<div class="branch">
<a name="IDX"></a>
<div>
<div align="left">
<!--BEGINTABLE--><table class="table" cellspacing="0" cellpadding="7" rules="groups" frame="hsides" summary="Procedure Contents: Attributes">
<colgroup>
<col>
<col>
<col>
<col>
</colgroup>
<tbody>
<tr>
<th class="l rowheader" scope="row">Data Set Name</th>
<td class="l data">WORK.AUTO</td>
<th class="l rowheader" scope="row">Observations</th>
<td class="l data">74</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Member Type</th>
<td class="l data">DATA</td>
<th class="l rowheader" scope="row">Variables</th>
<td class="l data">12</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Engine</th>
<td class="l data">V9</td>
<th class="l rowheader" scope="row">Indexes</th>
<td class="l data">0</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Created</th>
<td class="l data">10/05/2018 10:28:11</td>
<th class="l rowheader" scope="row">Observation Length</th>
<td class="l data">112</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Last Modified</th>
<td class="l data">10/05/2018 10:28:11</td>
<th class="l rowheader" scope="row">Deleted Observations</th>
<td class="l data">0</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Protection</th>
<td class="l data"> </td>
<th class="l rowheader" scope="row">Compressed</th>
<td class="l data">NO</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Data Set Type</th>
<td class="l data"> </td>
<th class="l rowheader" scope="row">Sorted</th>
<td class="l data">NO</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Label</th>
<td class="l data"> </td>
<th class="l rowheader" scope="row"> </th>
<td class="l data"> </td>
</tr>
<tr>
<th class="l rowheader" scope="row">Data Representation</th>
<td class="l data">SOLARIS_X86_64, LINUX_X86_64, ALPHA_TRU64, LINUX_IA64</td>
<th class="l rowheader" scope="row"> </th>
<td class="l data"> </td>
</tr>
<tr>
<th class="l rowheader" scope="row">Encoding</th>
<td class="l data">latin1  Western (ISO)</td>
<th class="l rowheader" scope="row"> </th>
<td class="l data"> </td>
</tr>
</tbody>
</table>
<!--ENDTABLE--></div>
</div>
<br>
<a name="IDX1"></a>
<div>
<div align="left">
<!--BEGINTABLE--><table class="table" cellspacing="0" cellpadding="7" rules="groups" frame="hsides" summary="Procedure Contents: Engine/Host Information">
<colgroup>
<col>
<col>
</colgroup>
<thead>
<tr>
<th class="c b header" colspan="2" scope="colgroup">Engine/Host Dependent Information</th>
</tr>
</thead>
<tbody>
<tr>
<th class="l rowheader" scope="row">Data Set Page Size</th>
<td class="l data">65536</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Number of Data Set Pages</th>
<td class="l data">1</td>
</tr>
<tr>
<th class="l rowheader" scope="row">First Data Page</th>
<td class="l data">1</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Max Obs per Page</th>
<td class="l data">584</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Obs in First Data Page</th>
<td class="l data">74</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Number of Data Set Repairs</th>
<td class="l data">0</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Filename</th>
<td class="l data">/tmp/SAS_workDAA600001F1E_zotique2/auto.sas7bdat</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Release Created</th>
<td class="l data">9.0401M0</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Host Created</th>
<td class="l data">Linux</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Inode Number</th>
<td class="l data">1963626</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Access Permission</th>
<td class="l data">rw-r--r--</td>
</tr>
<tr>
<th class="l rowheader" scope="row">Owner Name</th>
<td class="l data">vilhuber</td>
</tr>
<tr>
<th class="l rowheader" scope="row">File Size (bytes)</th>
<td class="l data">131072</td>
</tr>
</tbody>
</table>
<!--ENDTABLE--></div>
</div>
<br>
<a name="IDX2"></a>
<div>
<div align="left">
<!--BEGINTABLE--><table class="table" cellspacing="0" cellpadding="7" rules="groups" frame="hsides" summary="Procedure Contents: Variables">
<colgroup>
<col>
</colgroup>
<colgroup>
<col>
<col>
<col>
<col>
<col>
<col>
</colgroup>
<thead>
<tr>
<th class="c b header" colspan="7" scope="colgroup">Alphabetic List of Variables and Attributes</th>
</tr>
<tr>
<th class="r b header" scope="col">#</th>
<th class="l b header" scope="col">Variable</th>
<th class="l b header" scope="col">Type</th>
<th class="r b header" scope="col">Len</th>
<th class="l b header" scope="col">Format</th>
<th class="l b header" scope="col">Informat</th>
<th class="l b header" scope="col">Label</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">10</th>
<td class="l data">displacement</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data"> </td>
<td class="l data"> </td>
<td class="l data">Displacement (cu. in.)</td>
</tr>
<tr>
<th class="r rowheader" scope="row">12</th>
<td class="l data">foreign</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data">FOREIGN.</td>
<td class="l data"> </td>
<td class="l data">Car type</td>
</tr>
<tr>
<th class="r rowheader" scope="row">11</th>
<td class="l data">gear_ratio</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data">6.2</td>
<td class="l data"> </td>
<td class="l data">Gear Ratio</td>
</tr>
<tr>
<th class="r rowheader" scope="row">5</th>
<td class="l data">headroom</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data">6.1</td>
<td class="l data"> </td>
<td class="l data">Headroom (in.)</td>
</tr>
<tr>
<th class="r rowheader" scope="row">8</th>
<td class="l data">length</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data"> </td>
<td class="l data"> </td>
<td class="l data">Length (in.)</td>
</tr>
<tr>
<th class="r rowheader" scope="row">1</th>
<td class="l data">make</td>
<td class="l data">Char</td>
<td class="r data">18</td>
<td class="l data">$18.</td>
<td class="l data">$18.</td>
<td class="l data">Make and Model</td>
</tr>
<tr>
<th class="r rowheader" scope="row">3</th>
<td class="l data">mpg</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data"> </td>
<td class="l data"> </td>
<td class="l data">Mileage (mpg)</td>
</tr>
<tr>
<th class="r rowheader" scope="row">2</th>
<td class="l data">price</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data"> </td>
<td class="l data"> </td>
<td class="l data">Price</td>
</tr>
<tr>
<th class="r rowheader" scope="row">4</th>
<td class="l data">rep78</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data"> </td>
<td class="l data"> </td>
<td class="l data">Repair Record 1978</td>
</tr>
<tr>
<th class="r rowheader" scope="row">6</th>
<td class="l data">trunk</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data"> </td>
<td class="l data"> </td>
<td class="l data">Trunk space (cu. ft.)</td>
</tr>
<tr>
<th class="r rowheader" scope="row">9</th>
<td class="l data">turn</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data"> </td>
<td class="l data"> </td>
<td class="l data">Turn Circle (ft.)</td>
</tr>
<tr>
<th class="r rowheader" scope="row">7</th>
<td class="l data">weight</td>
<td class="l data">Num</td>
<td class="r data">8</td>
<td class="l data"> </td>
<td class="l data"> </td>
<td class="l data">Weight (lbs.)</td>
</tr>
</tbody>
</table>
<!--ENDTABLE--></div>
</div>
<br>
</div>
<div class="branch">
<p style="page-break-after: always;"><br/></p><hr size="3"/>
<a name="IDX3"></a>
<div>
<div align="left">
<!--BEGINTABLE--><table class="table" cellspacing="0" cellpadding="7" rules="groups" frame="hsides" summary="Procedure Means: Summary statistics">
<colgroup>
<col>
<col>
</colgroup>
<colgroup>
<col>
<col>
<col>
<col>
<col>
</colgroup>
<thead>
<tr>
<th class="l b header" scope="col">Variable</th>
<th class="l b header" scope="col">Label</th>
<th class="r b header" scope="col">N</th>
<th class="r b header" scope="col">Mean</th>
<th class="r b header" scope="col">Std Dev</th>
<th class="r b header" scope="col">Minimum</th>
<th class="r b header" scope="col">Maximum</th>
</tr>
</thead>
<tbody>
<tr>
<th class="l stacked_cell data"><table width="100%" border="0" cellpadding="7" cellspacing="0">
<tr>
<th class="l data top_stacked_value">price</th>
</tr>
<tr>
<th class="l data middle_stacked_value">mpg</th>
</tr>
<tr>
<th class="l data middle_stacked_value">rep78</th>
</tr>
<tr>
<th class="l data middle_stacked_value">headroom</th>
</tr>
<tr>
<th class="l data middle_stacked_value">trunk</th>
</tr>
<tr>
<th class="l data middle_stacked_value">weight</th>
</tr>
<tr>
<th class="l data middle_stacked_value">length</th>
</tr>
<tr>
<th class="l data middle_stacked_value">turn</th>
</tr>
<tr>
<th class="l data middle_stacked_value">displacement</th>
</tr>
<tr>
<th class="l data middle_stacked_value">gear_ratio</th>
</tr>
<tr>
<th class="l data bottom_stacked_value">foreign</th>
</tr>
</table></th>
<th class="l stacked_cell data"><table width="100%" border="0" cellpadding="7" cellspacing="0">
<tr>
<th class="l data top_stacked_value">Price</th>
</tr>
<tr>
<th class="l data middle_stacked_value">Mileage (mpg)</th>
</tr>
<tr>
<th class="l data middle_stacked_value">Repair Record 1978</th>
</tr>
<tr>
<th class="l data middle_stacked_value">Headroom (in.)</th>
</tr>
<tr>
<th class="l data middle_stacked_value">Trunk space (cu. ft.)</th>
</tr>
<tr>
<th class="l data middle_stacked_value">Weight (lbs.)</th>
</tr>
<tr>
<th class="l data middle_stacked_value">Length (in.)</th>
</tr>
<tr>
<th class="l data middle_stacked_value">Turn Circle (ft.)</th>
</tr>
<tr>
<th class="l data middle_stacked_value">Displacement (cu. in.)</th>
</tr>
<tr>
<th class="l data middle_stacked_value">Gear Ratio</th>
</tr>
<tr>
<th class="l data bottom_stacked_value">Car type</th>
</tr>
</table></th>
<td class="r stacked_cell data"><table width="100%" border="0" cellpadding="7" cellspacing="0">
<tr>
<td class="r data top_stacked_value">74</td>
</tr>
<tr>
<td class="r data middle_stacked_value">74</td>
</tr>
<tr>
<td class="r data middle_stacked_value">69</td>
</tr>
<tr>
<td class="r data middle_stacked_value">74</td>
</tr>
<tr>
<td class="r data middle_stacked_value">74</td>
</tr>
<tr>
<td class="r data middle_stacked_value">74</td>
</tr>
<tr>
<td class="r data middle_stacked_value">74</td>
</tr>
<tr>
<td class="r data middle_stacked_value">74</td>
</tr>
<tr>
<td class="r data middle_stacked_value">74</td>
</tr>
<tr>
<td class="r data middle_stacked_value">74</td>
</tr>
<tr>
<td class="r data bottom_stacked_value">74</td>
</tr>
</table></td>
<td class="r stacked_cell data"><table width="100%" border="0" cellpadding="7" cellspacing="0">
<tr>
<td class="r data top_stacked_value">6165.26</td>
</tr>
<tr>
<td class="r data middle_stacked_value">21.2972973</td>
</tr>
<tr>
<td class="r data middle_stacked_value">3.4057971</td>
</tr>
<tr>
<td class="r data middle_stacked_value">2.9932432</td>
</tr>
<tr>
<td class="r data middle_stacked_value">13.7567568</td>
</tr>
<tr>
<td class="r data middle_stacked_value">3019.46</td>
</tr>
<tr>
<td class="r data middle_stacked_value">187.9324324</td>
</tr>
<tr>
<td class="r data middle_stacked_value">39.6486486</td>
</tr>
<tr>
<td class="r data middle_stacked_value">197.2972973</td>
</tr>
<tr>
<td class="r data middle_stacked_value">3.0148649</td>
</tr>
<tr>
<td class="r data bottom_stacked_value">0.2972973</td>
</tr>
</table></td>
<td class="r stacked_cell data"><table width="100%" border="0" cellpadding="7" cellspacing="0">
<tr>
<td class="r data top_stacked_value">2949.50</td>
</tr>
<tr>
<td class="r data middle_stacked_value">5.7855032</td>
</tr>
<tr>
<td class="r data middle_stacked_value">0.9899323</td>
</tr>
<tr>
<td class="r data middle_stacked_value">0.8459948</td>
</tr>
<tr>
<td class="r data middle_stacked_value">4.2774042</td>
</tr>
<tr>
<td class="r data middle_stacked_value">777.1935671</td>
</tr>
<tr>
<td class="r data middle_stacked_value">22.2663399</td>
</tr>
<tr>
<td class="r data middle_stacked_value">4.3993537</td>
</tr>
<tr>
<td class="r data middle_stacked_value">91.8372190</td>
</tr>
<tr>
<td class="r data middle_stacked_value">0.4562871</td>
</tr>
<tr>
<td class="r data bottom_stacked_value">0.4601885</td>
</tr>
</table></td>
<td class="r stacked_cell data"><table width="100%" border="0" cellpadding="7" cellspacing="0">
<tr>
<td class="r data top_stacked_value">3291.00</td>
</tr>
<tr>
<td class="r data middle_stacked_value">12.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">1.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">1.5000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">5.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">1760.00</td>
</tr>
<tr>
<td class="r data middle_stacked_value">142.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">31.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">79.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">2.1900001</td>
</tr>
<tr>
<td class="r data bottom_stacked_value">0</td>
</tr>
</table></td>
<td class="r stacked_cell data"><table width="100%" border="0" cellpadding="7" cellspacing="0">
<tr>
<td class="r data top_stacked_value">15906.00</td>
</tr>
<tr>
<td class="r data middle_stacked_value">41.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">5.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">5.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">23.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">4840.00</td>
</tr>
<tr>
<td class="r data middle_stacked_value">233.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">51.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">425.0000000</td>
</tr>
<tr>
<td class="r data middle_stacked_value">3.8900001</td>
</tr>
<tr>
<td class="r data bottom_stacked_value">1.0000000</td>
</tr>
</table></td>
</tr>
</tbody>
</table>
<!--ENDTABLE--></div>
</div>
<br>
</div>

## References
- “SAS Using R Markdown (Windows).” n.d. Accessed October 5, 2018. https://www.ssc.wisc.edu/~hemken/SASworkshops/Markdown/SASmarkdown.html.
