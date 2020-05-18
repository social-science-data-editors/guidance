---
layout: withtoc
title: "Guidance on Data Citations"
---


One of the most vexing issues is how to cite data. This document goes through a few common scenarios not covered elsewhere.

## What is not a data citation

Many authors initially neglect to add data citations, or do not know how to add a data citation. Often, we see authors cite papers with supplementary data, but not databases or other data:

> We use data acquired from the NHL, dates of power outages collected by Tremblay et al (2018), augmented with information on the language and grammar skills of hockey players provided by the Ethnologue database.

(note absence of citation for NHL and Ethnologue data). In the above example, three datasets are used, but only one is cited in some fashion.

### Better

The above example can be improved as follows:

> We use data acquired from the NHL (NHL, 2018), dates of power outages collected by Tremblay et al (2018, 2019), augmented with information on the language and grammar skills of hockey players provided by the Ethnologue database (Eberhard et al, 2019).

with the reference list having the following entries:

> - Eberhard, David M., Gary F. Simons, and Charles D. Fennig (eds.). 2019. *Ethnologue: Languages of the World.* Twenty-second edition. Dallas, Texas: SIL International. Online version: http://www.ethnologue.com.
> - National Hockey League. 2018. *NHL Game Database 1917-2018*. National Hockey League Hall of Fame, Toronto, ON. Accessed February 29, 2019.
> - Tremblay, Réjean, Ken Dryden, and José Theodore. 2018. "The impact of power outages on goal-keeping in the NHL", *Journal of National Hockey Leagues*, vol 32, iss. 1. 
> - Tremblay, Réjean, Ken Dryden, and José Theodore. 2019. "Power outages during NHL games (updated)", *Canadian Hockey Dataverse*, doi:10.1234/nhl.lnh.haha 

## Why data citations

The [Data Citation Principles](https://doi.org/10.25490/a97f-egyk) note that (emphasis added):

> Sound, reproducible scholarship rests upon a foundation of robust, accessible data. For this to be so in practice as well as theory, data must be accorded due importance in the practice of scholarship and in the enduring scholarly record. In other words, data should be considered legitimate, **citable products of research**. Data citation, **like the citation of other evidence and sources**, is good research practice and is part of the scholarly ecosystem supporting data reuse.

- Data citation increases the findability, accessibility, interoperability, and re-usability of research data (known as [FAIR](https://www.go-fair.org/fair-principles/)). 
- Through data citations, data providers can link to articles ([sometimes automatically](https://www.crossref.org/services/event-data/)), allowing them to show the academic value of the data and continue providing the services around data creation.
- Data citations open a new path to finding relevant science, by reaching the linked articles through data search interfaces, like [openICPSR](https://www.openicpsr.org/openicpsr/search/aea/studies), [Data-Pass](http://www.data-pass.org/), and [Google Dataset Search](https://toolbox.google.com/datasetsearch).

## Generic Guidance

The AEA follows the Chicago Manual of Style (CMOS), with several [additions on the AEA website](https://www.aeaweb.org/journals/policies/sample-references). As the [CMOS states](https://www.chicagomanualofstyle.org/book/ed17/part3/ch14/psec014.html), one of the criteria for a useful citation is conveying authority and permanence:

> Electronic content presented without formal ties to a publisher or sponsoring body has the authority equivalent to that of unpublished or self-published material in other media.

[They also note](https://www.chicagomanualofstyle.org/book/ed17/part3/ch14/psec014.html) that 

> Authors should note that anything posted on the internet is “published” in the sense of copyright and must be treated as such for the purposes of complete citation and clearance of permissions, if relevant.

Several standard citations options may be  relevant for data citations:

### Websites

When citing information from websites, including data downloaded from websites, use the general website citation style for data:

> 
Google. 2017. “Privacy Policy.” Privacy & Terms. Last modified April 17, 2017. https://www.google.com/policies/privacy/.

> Yale University. n.d. “About Yale: Yale Facts.” Accessed May 1, 2017. https://www.yale.edu/about-yale/yale-facts.

- Note that the [AEA suggests](https://www.aeaweb.org/journals/policies/sample-references) using footnotes for some types of websites (Newspapers, Online Encyclopedias, and Reference Works). You should use the full citation with entry in the list of references for data downloaded from websites.
- Note that this does NOT apply when the data have a permanent URL, a DOI, or a suggested citation!

### Online databases

CMOS has a [recommendation for online databases](https://www.chicagomanualofstyle.org/book/ed17/part3/ch14/psec257.html):

> NASA/IPAC Extragalactic Database (object name IRAS F00400+4059; accessed April 6, 2016). http://ned.ipac.caltech.edu/.

which would be cited in the text as `NASA/IPAC Extragalactic Database`.

### Data distributed as supplementary data

The [CMOS provides examples](https://www.chicagomanualofstyle.org/book/ed17/part3/ch14/psec187.html) of how to cite supplementary materials that are attached to a specific article:

> Suárez-Rodríguez, M. and C. Macías Garcia. 2014. "There Is No Such a Thing as a Free Cigarette: Lining Nests with Discarded Butts Brings Short-Term Benefits, but Causes Toxic Damage." *Journal of Evolutionary Biology* 27, no. 12 (December 2014): 2719–26, https://doi.org/10.1111/jeb.12531, data deposited at Dryad Digital Repository, https://doi.org/10.5061/dryad.4t5rt.

The [AEA guidance](https://www.aeaweb.org/journals/policies/sample-references) also provides an example, which links to the article landing page:

> Romer, Christina D., and David H. Romer. 2010. “The Macroeconomic Effects of Tax Changes: Estimates Based on a New Measure of Fiscal Shocks: Dataset.” *American Economic Review.* https://doi.org/10.1257/aer.100.3.763.

Note however that modern data citation guidance suggest that both the article and the data used by the article should be cited, and this can lead to confusion. With the 2019 move of the AEA to a data archive, the correct citation for the above supplement would be:

> Romer, Christina D., and David H. Romer. 2010. “The Macroeconomic Effects of Tax Changes: Estimates Based on a New Measure of Fiscal Shocks” *American Economic Review.* no. 3 (June 2010): 763–801. https://doi.org/10.1257/aer.100.3.763.

with the supplemental data separately cited as 

> Romer, Christina D., and David H. Romer. 2010. "Replication data for: The Macroeconomic Effects of Tax Changes: Estimates Based on a New Measure of Fiscal Shocks." *American Economic Association [publisher]*, * Inter-university Consortium for Political and Social Research [distributor]*, https://doi.org/10.3886/E112357V1

## Specific Guidance

The key to data citations is that the creator, the name, the location, and the date last accessed for a data source should be clear. This pertains to online data, offline data, physical data, whether it is in boxes or on tapes, or in a corporate database behind a firewall. 

[ICPSR](https://www.icpsr.umich.edu/icpsrweb/ICPSR/curation/citations.jsp) notes that a citation should include the following items:

- Author
- Title
- Date
- Version
- Persistent identifier (such as the Digital Object Identifier, Uniform Resource Name URN, or Handle System)

Note that all but the URN would apply also for an offline database. Consider the citation of objects in archives: 

### Producer

Often, the creator of a dataset is an organization. The same way that an [organization as a work's author](https://www.chicagomanualofstyle.org/book/ed17/part3/ch15/psec037.html) can be cited:

> ISO (International Organization for Standardization). 1997. *Information and Documentation—Rules for the Abbreviation of Title Words and Titles of Publications*. ISO 4:1997. Paris: ISO.

an organization can be cited as the creator of a dataset:

> Standard and Poor's (S&P). 2017. *Compustat-Capital IQ*. S&P Global Market Intelligence. 

### Distributor

In many cases, the data are not distributed by the creator. This means the *distributor* takes on the role of a *publisher* (of a book, of data). So if using Compustat through the Wharton Research Data Services, one might cite as

> Standard and Poor's (S&P). 2017. *Compustat-Capital IQ*. Wharton Research Data Services. https://wrds-www.wharton.upenn.edu/pages/about/data-vendors/sp-global-market-intelligence/

If using the S&P 500 data, there may be multiple providers:

> S&P Dow Jones Indices LLC, *S&P 500 [SP500]*, retrieved from FRED, Federal Reserve Bank of St. Louis; https://fred.stlouisfed.org/series/SP500, January 24, 2020. 

> S&P Dow Jones Indices LLC, *S&P 500*, provided via Haver Analytics Data Subscription, February 24, 2018. 

with hopefully the same content. Note that often, such data is subject to copyright and redistribution restrictions (see [the page at FRED on SP500](https://fred.stlouisfed.org/series/SP500)). 


### Dates

In some cases, it isn't clear when the dataset was *published*, though it may be clear what time period the dataset covers. One way to address this may be by [using the "n.d." abbreviation for the date of publication](https://www.chicagomanualofstyle.org/book/ed17/part3/ch15/psec050.html):

> Standard and Poor's (S&P). n.d. *Compustat-Capital IQ (1982-2017)*. Wharton Research Data Services. Accessed April 6, 2018. https://wrds-www.wharton.upenn.edu/pages/about/data-vendors/sp-global-market-intelligence/

A related issue may arise when the dataset is comprised of multiple years, each of which has its own DOI. For instance, when accessing [multiple years of American Community Survey data on ICPSR](https://www.icpsr.umich.edu/icpsrweb/ICPSR/search/studies?q=american+community+survey), each of which has its own DOI:

| | | | |
|--|--|--|--|
|American Community Survey (ACS): Public Use Microdata Sample (PUMS), |2002| (ICPSR 3893)|
|American Community Survey (ACS): Public Use Microdata Sample (PUMS), |1998| (ICPSR 3888)| 2008-05-21|
|American Community Survey (ACS): Public Use Microdata Sample (PUMS), |1997| (ICPSR 3886)| 2008-05-21|
|American Community Survey (ACS): Public Use Microdata Sample (PUMS), |2003| (ICPSR 4117)| 2009-12-01|
|American Community Survey (ACS): Public Use Microdata Sample (PUMS), |2004| (ICPSR 4370)| 2008-10-14|
|American Community Survey (ACS): Public Use Microdata Sample (PUMS), |2009| (ICPSR 33802)| 2013-04-04|
|American Community Survey (ACS): Public Use Microdata Sample (PUMS), |2008| (ICPSR 29263)| 2011-11-08|
|American Community Survey (ACS): Public Use Microdata Sample (PUMS), |1996| (ICPSR 3885)| 2008-05-21|

One approach to this is to create a composite citation, with additional information available in an online data appendix or a Data Availability Statement:

> Bureau Of The Census. 2009. “American Community Survey (ACS): Public Use Microdata Sample (PUMS), 1997-2009.” *United States Department Of Commerce* [publisher].  ICPSR - Interuniversity Consortium for Political and Social Research. [distributor] DOIs listed in data appendix.

or

> Bureau Of The Census. 2009. “American Community Survey (ACS): Public Use Microdata Sample (PUMS), 1997-2009.” *United States Department Of Commerce* [publisher].  ICPSR - Interuniversity Consortium for Political and Social Research. [distributor] https://www.icpsr.umich.edu/icpsrweb/ICPSR/search/studies?q=american+community+survey (accessed November 21, 2019)

(and listing of exact DOIs in an appendix table).

### Offline access mechanism

Many datasets are available only under license, memorandum, contract, etc., and do not have a formal online presence. This is quite similar to traditional offline archives, for instance manuscript collections. For such collections, [CMOS suggests](https://www.chicagomanualofstyle.org/book/ed17/part3/ch15/psec054.html):

> Kallen, Horace. *Papers*. YIVO Institute for Jewish Research, New York.
> [Merriam, Charles E. *Papers*. Special Collections Research Center, box 26, folder 17. University of Chicago Library.](https://www.chicagomanualofstyle.org/book/ed17/part3/ch14/psec229.html)

and usage in the text as

> Alvin Johnson, in a memorandum prepared sometime in 1937 (Kallen Papers, file 36), observed that ...

Similar citations can be constructed for offline databases:

> Bloom, Nick. 2019. *Confidential survey data on Cameroon business processes*. Stanford Secure Access Center (file "cameroon-bloom.zip"). Stanford University.

### No formal access mechanism

In some cases (not infrequently), access to data is through informal means. The [CMOS allows for citation of such information](https://www.chicagomanualofstyle.org/book/ed17/part3/ch15/psec053.html), without inclusion in the references. 

> (A. P. Møller, unpublished data; C. R. Brown and M. B. Brown, unpublished data)

We would deviate from that suggestion, ask for inclusion in the reference list, and simply suggest using *unpublished data* as the locator, similar to a URN, in the reference list:

> Møller, A. P. n.d. “Data on Crocodile Sightings in Manhattan.” unpublished data. Accessed February 29, 2019.

