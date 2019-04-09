## Suggested Information for Data and Code Hosting

### Trusted Repositories
Journals and institutions have assessed a number of trusted repositories:
- [CoreTrustSeal](https://www.coretrustseal.org/) has a certification process
- [re3data.org](https://www.re3data.org/) lists research data repositories
- [Nature](https://www.nature.com/sdata/policies/repositories), [F1000Research](https://f1000research.com/for-authors/data-guidelines#hosting), and [PLOS](https://journals.plos.org/plosone/s/data-availability) (and soon the AEA) have lists of trusted repositories.
- These generally include at least the following:
  -  [Dryad Digital Repository](http://datadryad.org/)
  -  [figshare](http://figshare.com/)
  -  [Harvard Dataverse Network](http://thedata.harvard.edu/dvn/)
  -  [ICPSR](https://www.icpsr.umich.edu/icpsrweb/) and [OPENICPSR](https://www.openicpsr.org/openicpsr/)
  -  [Open Science Framework](http://osf.io/)
  -  [Zenodo](http://zenodo.org/)
- Many universities have formal document repositories that may be able to assume such a role; talk to your (data) librarian
- Restricted-access and secure data centers also assume the role of trusted repositories:
  - e.g. [Federal Statistical Research Data Centers](https://www.census.gov/fsrdc) for a variety of statistical microdata in the US
  - e.g. [Cornell Restricted Access Data Center (CRADC)](https://ciser.cornell.edu/data/secure-data-services/cradc/) for an example of a campus-wide secure data center and archive
  - e.g. [Centre d’accès sécurisé aux données (CASD)](https://www.casd.eu/) for an example of a European equivalent of the FSRDCs
  - e.g. [Health Care Cost Institute](https://www.healthcostinstitute.org/about-hcci/) for an example of an industry-based data center for research
- Note that some data archives can also handle restrictions on data dissemination for various reasons
  - [ICPSR](https://www.icpsr.umich.edu/icpsrweb/content/datamanagement/confidentiality/) can handle certain types of confidential data
  - [Zenodo](http://about.zenodo.org/policies/) can handle license-based restricted access
- We note that acceptable access restrictions are limited to concerns of confidentiality or third-party licensing. We do not accept (permanent) access restrictions where
  - the author is the sole arbitrar of access
  - sharing is not allowed because of personal interests (future publications, patents, etc.)

### NOT ACCEPTABLE
A variety of (unfortunately) commonly used web-accessible locations are not acceptable as data repositories for the purpose of an article's supplementary materials:
- [Github](https://github.com), because a project's owner can delete a git repository at any time (but see [this page](https://guides.github.com/activities/citable-code/) on how to leverage Zenodo to enable proper archiving of code and software) (see also [FAQ #1](FAQ.md#faq-1));
- Google pages, university and personal faculty web pages - they can all be deleted by the owner or by the employer (the university) without regards to archival characteristics of its contents (but talk to your university library - they may have a way to facilitate archiving of web pages - and investigate the [Wayback Machine](https://archive.org/) for a similar purpose);
- Dropbox, Box.com, and similar cloud-based data and file sharing services - again, they can all be deleted at short notice, or when payment stops

## Challenges in Hosting of Data and Code at Restricted-Access Data Centers
Users of restricted-access data centers (RADC, such as [FSRDCs](https://www.census.gov/fsrdc),  [CASD](https://www.casd.eu/), etc.) face certain challenges in the handling of data and code as described in this document:

- researchers (end-users) may not be able to provide DOI or similar persistent identifiers for some data
- researchers may not be able to discern the presrvation policy for certain data sets
- researchers may not be able to remove all code from the center, or such removal is subject to restrictions
- data citation guidance may be lacking, or may not be obvious (see [Data Citation Guidance](Data_citation_guidance.md) for general guidance)

### A few guidelines

- Request as much code as the RADC  will allow the researcher to remove. Subsequently handle it equivalently to the [general code guidance](Requested_information_code.md), but make special note (placeholders, explanatory text) of any redacted information.
- In addition, some RADC may provide the ability to deposit code internally and confidentially. Use such interal repositories, and make a note of their location in the publicly deposited code or in supplementary documents.

### Self-generated repositories
If a RADC has at least an archival or backup policy of sufficient length (e.g., 10 or more years), but does not offer a formal repository, then the following procedure allows users to find and request code and data
- As before, request as much code as is feasible, and deposit it in a public repository (e.g., openICPSR, Dataverse, Zenodo). **Don't publish it yet.**
- If possible at such repositories, pre-register a `DOI`
  - At Zenodo: click the appropriation request button, and a `DOI` will be assigned, e.g., _10.5281/zenodo.`NNNNN`_.
  - At openICPSR: projects are called `openicpsr-NNNNN`. The `DOI` is derived from the project number as _10.3886/E`NNNNN`V1_.
  - If you already have a DOI assigned to your manuscript or (published) paper, you can _alternatively_ use that (see [10.1093/restud/rdw057](https://doi.org/10.1093/restud/rdw057) for an excellent example).
- In the RADC, create a two-level directory with the name of the `DOI`.
- Move both data (following guidelines outlined [here](Requested_information_code.md)) and **all** code (not just the confidential part) to subdirectories. The resulting directory structure will look something like this:
```
/some/path/project/10.5281/zenodo.NNNNN/:
      data/original/rawdata.dta
      data/derived/analysis.dta
      programs/01_cleaning.do
      programs/02_analysis.do
```
- Confirm with the RADC's administrative staff how long project files are kept as archives or in backup (often 5-10 years)
- Add a statement to the public README.md (and to article materials). See [Sample RADC Statement 1](sample_radc_statement1.md) and [Sample RADC Statement 2](sample_radc_statement2.md).

### Some examples
- Fort (2016) [10.1093/restud/rdw057](https://doi.org/10.1093/restud/rdw057), in the supplementary materials ([local copy](copies/Fort2016-Readme.pdf))
-  Groen, Kutzbach, and Polivka (2019, forthcoming) (link to be supplied upon publication)
