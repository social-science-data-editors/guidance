# Requested information for data and code replication package
This is a draft document. Please provide comments by creating a [new issue](https://github.com/social-science-data-editors/guidance/issues/new) in this Github project.

## Readings
The following readings might be useful for structuring project, code, and data. It is useful to consult these at an early stage of the project, as subsequent adjustments will be small and incremental, rather than large and disruptive.

- Project Tier [https://www.projecttier.org/](https://www.projecttier.org/)
- Wilson G. et al (2016) "Good enough practices for scientific computing" [arXiv 1609.00037](https://arxiv.org/pdf/1609.00037.pdf)
- Gentzkow M, Shapiro JM. Code and Data for the Social Sciences: A Practitioner’s Guide; 2014. Available from: [http://web.stanford.edu/~gentzkow/research/CodeAndData.pdf](http://web.stanford.edu/~gentzkow/research/CodeAndData.pdf).

## Some concepts
We will refer to a (simplified) data structure as described below. Real-life data structures are often more complex, and the distinctions made in the simplified example should be adapted accordingly.

<div class="mermaid">
graph TD;
    subgraph Dataflow;
    A((Input data)) ==>  B[Cleaning programs];
    B ==> C((Analysis data));
    C ==> D[Analysis programs] 
    D ==> E((Outputs));
    end;
    B -.-> F(("Auxiliary data<br/>(created)"));
    F -.-> C;
    
</div>



## General Rules and Guidelines
### Requirements
We **require** that
- you cite the data
  - you should cite the data in your main manuscript
  - you should cite data separately in your online appendix
- you make analysis programs available
- you provide a README that describes the data acquisition and how to run the analysis process
- you make every effort to provide as much data as possible in an openly accessible fashion
- you make every effort to support reproducibility of your analysis
- you make every effort to transparently describe the creation of your analysis data

### Suggestions
We **strongly suggest** using some best-practices as suggested by the literature cited above:
- separation of code and data in directory structure and archive locations
- separation of read-only input data and modified "analysis" data
- a clearly defined sequence of processing (possibly through a script)
- citation of released code
- citation of data in the README (in addition to citing it in the article itself)
This document provides some practical guidance.

### Encourage
We **encourage** you
- to deposit data early in the research process, as soon as data is collected/ cleaned/ etc. This does not mean that the data becomes public at that time, only that the data has been "locked" in a specific state. See below for data hosting.
- to create a data publication, going into more depth about the data creation (if you created or collected your data)
- to consider splitting out independent components of your data creation (for instance, the auxiliary data described above) as a separately (useful) data deposit
- to also make programs that create the analysis data ("cleaning programs") available

## Citing Data and Code
All data should be cited, as per journal guidelines:
- [AEA guidelines](https://www.aeaweb.org/journals/policies/sample-references)
- [ReStud guidelines]
For a discussion with some suggestions, see [Data_citation_guidance](Data_citation_guidance.md).

## Data
Regarding the data, enough information should be provided
- to accurately describe the data so that somebody who doesn't have knowledge of the data can understand its principal (and salient) characteristics (**INFORMATION**);
- to be able to acquire the data (whether by download, by contract, by application process, etc.) (**ACCESSIBILITY**);
- to assure the reader (and the  Data Editor) that the data is available for a sufficiently long period of time (**PERSISTENCE**).

For details, see [Requested_information_data](Requested_information_data.md).


## Programs
We **strongly suggest**
- a clear documentation of all code (within the code/script files themselves, and through a README)
  - it should be clear from the code (and/or the README) where to find the information contained in **each table, figure, and in-text number**.
- provision of a master script ("master do file", "make file") and a description of how to run or invoke the master script in the README
- identification of all pre-requisites (data, code, programs, software, possibly operating system)
- (optionally, but useful) a record of how long the code sequence is expected to run - it will help potential replicators to know how to long to expect the programs to run

For details, see [Requested_information_code](Requested_information_code.md).

## Data and Code Hosting
The American Economic Association has made supplementary materials available on
its website since 2006. As the  popular and scientific web-accessible
global infrastructure has matured, other possibilities have opened up. We comment on important features to consider when depositing code and data.

### Principles
A code and data repository (or "archive") should satisfy a few criteria:
- be trustworthy
- be accessible to others
- be persistent, for instance through a continuity plan, but also to disallow deletion of objects
- guarantee some level of data integrity
- have version control

Not every web-based location is a code or data repository; on the other hand, numerous non-web based archives are legitimate locations for data to be found (e.g., National Archives).

For further details, see [Requested_information_hosting](Requested_information_hosting.md).
