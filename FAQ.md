---
layout: withtoc
title: "Frequently Asked Questions"
---
... although some are not frequently asked, but might nevertheless be useful. Below questions and answers in random order.

### Do I need to release my entire code history?

> We work on github already. Is there anyway to make just a "release" public in github without making public the entire code history and issue tickets? 

It all depends if you are comfortable with that, and if this is one paper out of multiple ones stemming from the same project.

If not, then what I suggest is to do the following

- clean up the repo (possibly in a branch)
- on Github, there is no way to fork to your own space, and a fork would carry the entire history anyway. So this assumes manual interaction (I'm going to assume you use the command line for this, this works in git-bash, or bash on Linux/OSX).
- create a new clone of your (now cleaned) repo, and switch to the clean branch
   ```
   git clone (WHATEVER)
   cd whatever
   git branch "cleaned"
   ```

- now wipe out all git information:
   ```
   rm -rf .git
   ```

- create a new repo
   ```
   git init
   ```

- Add all files
   ```
   git add *
   ```

 (careful with subdirs)

- Push to a new Github repo
  - (on Github, create an empty repo, then push to it)
  - (if using the Github Desktop, instead "add existing repo" to the Github Desktop, then push to Github.com)
- Now enable this new repo for the [Zenodo integration](https://guides.github.com/activities/citable-code/)
- Create a release
  - This is now your submission release, cleaned of all history and issues
- Cite the DOI of your replication archive in your main text.

### My repo is complex - I only want to share a portion 

Scenario: Author keeps several papers related to an ongoing or long-running project in a single repo, and wants to isolate code for tidy submission alongside an "offshoot paper".

In this case, it has been suggested to use the `git filter-branch` approach, which is essentially a way to split off a subset of a repo into a new repo (e.g. a subdirectory paper-1). It will conveniently inherit the commit history as well (but see above if that is not desired). See guide at [https://help.github.com/en/articles/splitting-a-subfolder-out-into-a-new-repository](https://help.github.com/en/articles/splitting-a-subfolder-out-into-a-new-repository).

(Thanks to @MichaelChirico for suggesting)

### Data Citation without Online Link

> Do you have any examples of data citation for proprietary data that does not have an online link? All the examples are much more formal than the random spreadsheets [agency 1]  sent over! [agency 2] has a more formal naming system, but again, there's no persistent indicator for the datasets because they are not accessible.

A known problem with no clear solution. Here's how I try to approach the problem:

 - A citation has author, title, and a publisher, with optional other locators. (see [Chicago Manual of Style (subscription)](https://www.chicagomanualofstyle.org/book/ed17/part3/ch14/psec014.html) and [CMS Quick Guide on citations](https://www.chicagomanualofstyle.org/tools_citationguide/citation-guide-2.html). 
 
Note that Chicago-style does not actually require the locator information - see the examples for "E-book" Kindle.
 
> "Electronic content presented without formal ties to a publisher or sponsoring body has the authority equivalent to that of unpublished or self-published material in other media."

Thus, one can construct the citation as
    - Author: the provider of the data (the agency)
    - Title: whatever the provider would recognize and re-furnish to a third-party
    - Publisher: the provider of the data (or its higher-level institution, e.g., the government department or ministry)
    - Locators (optional): maybe something along the lines of "Multiple electronic files" with possible additional information ", provided to the author under DUA (date or any contract number)"

An example might thus be:

> Agency 1. 2007. *Name of DataSet*. Boston: Commonwealth of Massachusetts. Multiple electronic files.

For more information, see the [AEA Data Editor's guidance on Data Citations](https://aeadataeditor.github.io/aea-de-guidance/addtl-data-citation-guidance.html).

### The URL works for me. Why are you complaining that it is not robust/persistent/permanent?

This may happen for both data files and documents by non-standard publishers. We explain what this means, and various ways to deal with it.

A URL is simply a locator for a file on the internet. However, they are not all created equal. In particular, files on sites from anything other than robust institutions (archives, journals, newspapers) should be considered to be *transitory*: here today, gone tomorrow. This often applies to even big companies that are not in the business of publishing with the goal of long-term preservation. It also includes URLs that obviously point to storage providers: Dropbox.com, Google Drive, AWS, Github.io, etc. 

For instance, the file `https://s3.amazonaws.com/aws.upl/nwica.org/unitedstates2014.pdf` is hosted on Amazon AWS, a commercial provider, presumably by the website of NWICA (`nwica.org`). If tomorrow NWICA decides to change suppliers for their webservices, and migrates their website `nwica.org` to the site of `myhoster.com`, that URL will change. What is less likely to change is the original "landing page" from which "unitedstates2014.pdf" could be downloaded, though that can also change a few years from now. For preservation, the PDF could be copied onto an institution whose business it is to preserve files, such as Zenodo, or Archive.org, where it becomes "permanently" available (or at least at much longer).

#### Solutions

- Third-best: Cite the original landing page, with an access date, as any other URL on the web:

> NWICA. 2015. "How WIC Impacts the People of the United States of America." Accessed at https://nwica.org/documents/unitedstates2014/ on August 2, 2017. 

and provide a copy of the file, if copyright and license permit. 

- Second-best: Use [Archive.org's Save a Page feature](https://web.archive.org/) to make a copy of the file, and then cite the stable URL thus generated. 

> NWICA. 2015. "How WIC Impacts the People of the United States of America." Accessed via Archive.org at https://web.archive.org/web/20200205043504/https://s3.amazonaws.com/aws.upl/nwica.org/unitedstates2014.pdf on February 4, 2020.

- First-best: Ask the publisher to provide a stable URL. 

### Data Citation with only a top-level Online Link

Many databases with an online interface make it hard to find an easy-to-cite URL. Nevertheless, a few clicks can often show a referenceable URL. Here's an example: 

#### OECD Statistics
The top-level URL is [https://stats.oecd.org/](https://stats.oecd.org/), and (almost) never changes. However, the [User Guide](https://stats.oecd.org/Content/themes/OECD/static/help/WBOS%20User%20Guide%20(EN).PDF?page=34), page 34, shows how to share a URL for a particular query. The usual citation rules for URLs then can be applied.

### Some econometrics papers might be accompanied by (for example) an R or Stata package (perhaps published on CRAN or SSC). What about surfacing references to associated packages more prominently?

First, packages on [CRAN](https://cran.r-project.org/) and the [Statistical Software Components](https://ideas.repec.org/s/boc/bocode.html) can be cited. AEA citation guidance is currently silent on software components, but it is not wrong to cite them, and other disciplines do it regularly. [CRAN](https://cran.r-project.org/) in fact has elements of a "proper archive" (SSC does NOT). All R packages can [generate a (Bibtex) citation](https://stat.ethz.ch/R-manual/R-devel/library/utils/html/citation.html). 

Second, it is possible to submit such packages to various journals, where they are reviewed and published with DOI:
- [R Journal](https://journal.r-project.org/)
- [Stata Journal](https://www.stata-journal.com/)
- [Journal of Statistical Software](https://www.jstatsoft.org/)


### I have been told by the Data Editor to remove PSID data from my submitted materials. What do I do?

Per the [PSID website](https://psidonline.isr.umich.edu/Guide/FAQ.aspx?Type=8), authors are not allowed to post extracts of their data online. The reason is that any user needs to agree to the PSID terms of use before being given access to the data. However, the PSID has provided authors with the ability to deposit their data extracts and/or [their derived data in a repository](https://www.openicpsr.org/openicpsr/psid), precisely for the purpose of allowing for sharing in compliance with their [Terms of use](http://simba.isr.umich.edu/U/CondUse.aspx). 

In order to comply with the [PSID Terms of use](http://simba.isr.umich.edu/U/CondUse.aspx), you should do the following:

- [ ] Create a new deposit at the [PSID repository](https://www.openicpsr.org/openicpsr/psid/deposit-instructions). Be sure to choose the PSID repository! (it can be confusing)
  - Give the deposit the title "Supplementary data for: (TITLE OF YOUR PAPER)"
  - Upload only the data files related to PSID
  - Fill out as much of the additional information as you can, including the Time Period covered. 
  - Go through the process to "Publish" this data
  - You will obtain a DOI that looks somewhat like `https://doi.org/10.3886/E123456V1`. Copy that down.
- Return to your AEA deposit
- [ ] Delete your PSID files that you just uploaded to the PSID repository
- [ ] In the "Related Publications", add the DOI you just copied down as a "related" publication
- [ ] Update your README and any other instructions to identify the DOI for the files that a replicator must download separately in order to reproduce your results.
- [ ] Don't forget to **cite the DOI you copied down in your manuscript!**
- [ ] Per the [PSID website](https://psidonline.isr.umich.edu/Guide/FAQ.aspx?Type=8), you should include the following acknowledgement: 

    The collection of data used in this study was partly supported by the National Institutes of Health under grant number R01 HD069609 and R01 AG040213, and the National Science Foundation under award numbers SES 1157698 and 1623684.

- PSID also wants you to send copies of the manuscript to them, or add the DOI of your published article to their bibliography. Please do so, supporting them!

### How can I ensure that the confidential data is preserved?

The ideal promise that has the highest credibility is a commitment from the provider of the confidential data to maintain the data for a number of years.

A second-best solution requires that you inspect your data use agreement. Can *you* archive the data in a robust fashion
 (using whatever tools your university has)? Some DUA allow for that, others don't. The promise then becomes that *you*/your university will guarantee persistence of the data for X years.

A better variant of that is when the DUA allows you to share the data with others that have also demonstratably signed a DUA with the provider. The data provider controls the access, you (your archive) provides the data.
