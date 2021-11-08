---
layout: withtoc
title: Data and Code Availability Statements - Sample text
---

### What are Data and Code Availability Statements (DCAS)

Data and Code Availability Statements (DCAS) can take on many forms. The examples below are taken from economics articles. For examples from other domains, see

- [Springer](https://www.springernature.com/gp/authors/research-data-policy/data-availability-statements/12330880)
- [Hindawi](https://www.hindawi.com/research.data/#statement.templates)

DCAS expand on and complement [data citations](Data_citation_guidance.md).

Note that not all the examples listed above may be admissible by the journal you are submitting to. 


This site provides a [template README](/template_README/) that incorporates the DCAS into the README, as is the style for many journals in economics. 

### Examples

#### Example for public use data included in data archive:

> The paper uses data obtained from IPUMS (Ruggles et al, 2017). IPUMS-CPS does not currently provide the ability to store or reference custom extracts, but allows for redistribution for the purpose of replication. The archive contains the extracted data, codebook in the folder "data/IPUMS". The data citation in the main article has the full URL. 


#### Example for public use data not included in data archive:

> Data from the Socioeconomic High-resolution Rural Urban Geographic Dataset on India, Version 1.0  (Asher and Novosad, 2019) is used in this paper. The full dataset and documentation can be downloaded from https://doi.org/10.7910/DVN/DPESAK.

#### Example for public use data with required permission:

> The paper uses IPUMS Terra data. IPUMS-Terra does not allow for redistribution, except for the purpose of replication archives. Permissions as per https://terra.ipums.org/citation have been obtained, and are documented within the "data/IPUMS-terra" folder.


#### Example for confidential data: 

> The data for this project are confidential, but may be obtained with Data Use Agreements with the Massachusetts Department of Elementary and Secondary Education (DESE). Researchers interested in access to the data may contact [NAME] at [EMAIL], also see www.doe.mass.edu/research/contact.html. It can take some months to negotiate data use agreements and gain access to the data. The author will assist with any reasonable replication attempts for two years following publication.

#### Example for Government registers

In some cases, governments have a list of their (named) registers. For instance, Statistics Denmark provides the full list of registers at [http://www.dst.dk/extranet/forskningvariabellister/Oversigt%20over%20registre.html](http://www.dst.dk/extranet/forskningvariabellister/Oversigt%20over%20registre.html). These can be used to craft data citations (see [Data citation guidance](https://social-science-data-editors.github.io/guidance/addtl-data-citation-guidance.html#government-registers)). Data availability statements should describe how each such register can be accessed:

> The information used in the analysis combines several Danish administrative registers (as described in the paper). The data use is subject to the European Union’s General Data Protection Regulation(GDPR) per new Danish regulations from May 2018. The data are physically stored on computers at Statistics Denmark and, due to security considerations, the data may not be transferred to computers outside Statistics Denmark. Researchers interested in obtaining access to the register data employed in this paper are required to submit a written application to gain approval from Statistics Denmark. The application must include a detailed description of the proposed project, its purpose, and its social contribution, as well as a description of the required datasets, variables, and analysis population. Applications can be submitted by researchers who are affiliated with Danish institutions accepted by Statistics Denmark, or by researchers outside of Denmark who collaborate with researchers affiliated with these institutions.

(Example taken from [Fadlon and Nielsen, AEJ:Applied 2021](https://doi.org/10.1257/app.20170604)).

#### Example for code during the editorial process

> Code for data cleaning and analysis is provided as part of the replication package. It is available at https://dropbox.com/link/to/code/XYZ123ABC for review. It will be uploaded to the [JOURNAL REPOSITORY] once the paper has been conditionally accepted.

#### Example for code for publication

> Code for data cleaning and analysis is provided as part of the replication package. It is available at https://doi.org/10.xxxx/path/to/journal/archive.

(Note the difference with the temporary Dropbox location during the review process, and the permanent location at publication time.)

#### Example for code that is already available

> All code for data cleaning and analysis associated with the current submission is available at http://doi.org/10.5281/zenodo.400356. Any updates will also be published on Zenodo, and the final DOI cited in the manuscript.

### IPUMS

Authors frequently ask about the ability or not to redistribute IPUMS data. Licenses are displayed when conducting the annual registration process (or upon first registration). Generically, IPUMS prohibits all redistribution, with certain carve-outs (as of 2019-11-25)

> IPUMS-USA Redistribution: You will not redistribute the data without permission.
>>You may not redistribute any data from IPUMS-USA Full Count data. For IPUMS-USA Sample data, you may publish a subset of the data to meet journal requirements for accessing data related to a particular publication. Contact us for permission for any other redistribution of IPUMS-USA Sample data; we will consider requests for free and commercial redistribution. 

> IPUMS-CPS Redistribution: You will not redistribute the data without permission.
>> You may publish a subset of the data to meet journal requirements for accessing data related to a particular publication. Contact us for permission for any other redistribution; we will consider requests for free and commercial redistribution. 

> NHGIS Redistribution: You will not redistribute the data without permission.
>> You may publish a subset of the data to meet journal requirements for accessing data related to a particular publication. Contact us for permission for any other redistribution; we will consider requests for free and commercial redistribution. 

In all cases, IPUMS requires citation.

## Additional examples

Further examples can be found 

- [for commercial data](DCAS_Commercial_data.md)
- [for various restricted data](DCAS_Restricted_data.md)