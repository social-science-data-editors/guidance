---
layout: withtoc
title: "Guidance on Data Citation"
---


Journals offer guidance on citation, you may want to check there first. The guidance provided here is in addition, and may be the basis for future official guidance.

### Data Citations
Properly referencing data goes beyond just reproducibility - it is also proper scientific writing style. In the same way that authors use bibliographic references to "printed" resources, they should also be using such references for data resources, to give and receive credit where credit is due. Not referencing an article or book is at best an oversight, and at worst plagiarism - and the same should apply to data objects. Numerous guides and tutorials exist, some of which provide a variety of examples.

- DataONE [Tutorial on Data Citation](http://www.dataone.org/sites/all/documents/L09_DataCitation.pptx) and [generic guidance](https://www.dataone.org/citing-dataone)
- [ICPSR](https://www.icpsr.umich.edu/icpsrweb/ICPSR/curation/citations.jsp)
-  Force11's [Joint Declaration of Data Citation Principals](https://doi.org/10.25490/a97f-egyk)
- the AEA's  [Sample References](https://www.aeaweb.org/journals/policies/sample-references)
- [Michigan State University](http://libguides.lib.msu.edu/c.php?g=96245&p=626239)
- [UC Santa Cruz](https://guides.library.ucsc.edu/citedata)


### What to cite

In a nutshell, every dataset is to be cited. This is true for the main article as well as online appendices. In the past, use of data or code has been acknowledged in footnotes, and only rarely through bibliographic references. However,  if the dataset is used, it should appear in the bibliography. The same is true for code reused from previous papers, or provided by authors.

#### Data is published
The DOI is thus public, and all repositories will provide a suggested citation. One can also use [https://www.doi2bib.org/](https://www.doi2bib.org/) or [https://citation.crosscite.org/](https://citation.crosscite.org/) to get a citation (see below for additional tools).

####  Data is not published
This is trickier. The data does not necessarily have a title that is related to the paper. Some repositories allow authors to "reserve" a DOI (Zenodo) or to delay publication. For some repositories, the DOI, while not officially reserved, can be derived from information already available (see this FAQ for openICPSR, something similar may be possible at Dataverse).

In some cases, authors may be able to delay publication, and coordinate it with the publication of the article (openICPSR, possibly Zenodo).


### Where to cite
In all cases, data and code should be cited in the main manuscript. They should also be  referenced in the data availability statement (some journals) or the README (other journals). 

### How to cite

Many journals in economics require the Chicago style for citations and bibliographies [1](https://www.aeaweb.org/journals/policies/sample-references). However, the [Chicago Style Manual](https://www.chicagomanualofstyle.org/tools_citationguide/citation-guide-2.html)  provides few relevant examples for data citations. Applications like [Zotero](https://www.zotero.org/) and [Mendeley Desktop](https://www.mendeley.com/download-desktop/) also do not support data citations robustly, even though the underlying [Citation Style Language](https://citationstyles.org/) has had the concept of a "data" entry for several years.


[DataONE](https://www.dataone.org/citing-dataone) suggests content and style that resemble the generic working paper or article citation style (adapted to Chicago style):

> Westbrook JW, Kitajima K, Burleigh JG, Kress WJ, Erickson DL,
>    Wright SJ (2011) *Data from: What makes a leaf tough? Patterns of
>    correlated evolution between leaf toughness traits and demographic
>    rates among 197 shade-tolerant woody species in a neotropical forest.*
>    Dryad Digital Repository. http://dx.doi.org/10.5061/dryad.8525

[ICPSR](https://www.icpsr.umich.edu/icpsrweb/ICPSR/curation/citations.jsp) notes  that a citation should include the following items:
-   Title
-   Author
-   Date
-   Version
-   Persistent identifier (such as the Digital Object Identifier, Uniform Resource Name URN, or Handle System)

and provides a few examples, with some additional modifiers:

>    Esther Duflo; Rohini Pande, 2006, ``Dams, Poverty, Public Goods and
>    Malaria Incidence in India'', http://hdl.handle.net/1902.1/IOJHHXOOLZ
>    UNF:5:obNHHq1gtV400a4T+Xrp9g== *Murray Research Archive* [Distributor]
>    V2 [Version]

Finally, the [AEA style guide](https://www.aeaweb.org/journals/policies/sample-references)  suggests

>    Leiss, Amelia. 1999. ``Arms Transfers to Developing Countries, 1945--1968.''
>    Inter-University Consortium for Political and Social Research, Ann Arbor, MI.
>    ICPSR05404-v1. doi:10.3886/ICPSR05404 (accessed February 8, 2011).

This may be adjusted. An alternate citation may be

>    Leiss, Amelia. 1999. ``Arms Transfers to Developing Countries, 1945--1968.''
>    Inter-University Consortium for Political and Social Research, Ann Arbor, MI.
>    ICPSR05404-v1. https://doi.org/10.3886/ICPSR05404.

Citations to primary data can sometimes be hard to construct. If the data provider has a suggested citation, then you should use it. Alternatively, you can construct as per the above examples, for instance, as noted on the [AEA style guide](https://www.aeaweb.org/journals/policies/sample-references):

> Bureau of Labor Statistics. 2000–2010. “Current Employment Statistics: Colorado, Total Nonfarm, Seasonally adjusted - SMS08000000000000001.” United States Department of Labor. http://data.bls.gov/cgi- bin/surveymost?sm+08 (accessed February 9, 2011).

### Some additional guidance on tricky citations

- [Additional guidance on Data Citations](addtl-data-citation-guidance.md).
-  [Data citation without an online link](https://social-science-data-editors.github.io/guidance/FAQ.html#data-citation-without-online-link)
- Sample (unofficial) citations for Census Bureau datasets in the FSRDC can be found on [Zotero.org](https://www.zotero.org/groups/2245704/fsrdc/library) and on [Github](https://github.com/ncrncornell/cms-to-bib).

### Some Frequently Asked Questions

1. When providing data citations, please be sure to check that a URL is given. However, there are some subtleties:
   - If only a single file is downloaded from a website, the data citation should include the precise URL (https://data.com/path/to/file), not just a top-level URL (https://data.com)
   - If a URL is giving starting with "https://doi.org", then it is a DOI. Those do not need access dates. Otherwise, a website access needs a URL (by most citation styles).
   - Be sure to provide the DOI when both a DOI and a URL is available. A DOI is stable, a URL may not be.
   - Always check the URL by clicking on it,         Sometimes, the URL turns out to be generic/top-level, and does not show the file the replicator should be downloading. The replicator should be able to find the file using the URL, or with the instructions in the README.
2. Check for  a license/data use agreement. 
   - Just because data is visible does not mean it can be redistributed. By default, it is not (copyright). 
   - Regardless of redistribution rights, the  URL of the data use agreement should be included in the README/online appendix to fully describe data access conditions. 
   - Ideally,  a copy of the data use agreement or license should be included in the replication archive. This can be a copy of an email authorizing you to distribute the data, or a copy of the data use agreement on the website when you downloaded the data (which might be different from the current data use agreement!)
3. Some data use agreements may also require specific citations (of papers, of code). Verify that you are  compliant with all such requirements!
    - The same actually applies for Stata or R packages that may be downloaded.
    - It is R practice to cite all packages, and R makes that easy. This should be noted in the report, if not done. Citation in the README should be sufficient.
    - In Stata, some packages have citation requirements. Check the website of the author, sometimes also the *.ado file the author downloads. For instance, many authors use "reghdfe". See https://github.com/sergiocorreia/reghdfe#citation for a citation requirement.



### Tools
No tool is perfect, but you will likely find the one that works for your particular workflow. 
Some examples for specific software:
- [BibTeX](citations/guidance_data_citations.pdf)
- [BibLaTeX](citations/guidance_data_citations_biblatex.pdf)
- Zotero will have native dataset functionality starting in version 5.1, for now, some guidance for entering it can be found in [forums](https://forums.zotero.org/discussion/63616/new-citation-type-research-data-dataset). Note that support in the citation styles is also still lacking.
- [Mendeley Desktop](https://www.mendeley.com/download-desktop/).

General tools: 

- [CrossCite DOI formatter](https://citation.crosscite.org/)
- [Citation Machine](http://www.citationmachine.net/chicago-17-author-date/cite-a-digital/manual) - choose `Source type`=`Digital file` and put the URL and access date into the `Annotation` field.
- [Doi2Bib](https://www.doi2bib.org/) creates a bibtex entry one can put into a Bib file (if using Bibtex) or import into Zotero.

