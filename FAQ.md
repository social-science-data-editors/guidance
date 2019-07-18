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

- now wipe out all git information:
   ```
   rm -rf .git

- create a new repo
   ```
   git init

- Add all files
   ```
   git add *

 (careful with subdirs)

- Push to a new Github repo
  - (on Github, create an empty repo, then push to it)
  - (if using the Github Desktop, instead "add existing repo" to the Github Desktop, then push to Github.com)
- Now enable this new repo for the [Zenodo integration](https://guides.github.com/activities/citable-code/)
- Create a release
  - This is now your submission release, cleaned of all history and issues
- Cite the DOI of your replication archive in your main text.

### Data Citation without Online Link
> Do you have any examples of data citation for proprietary data that does not have an online link? All the examples are much more formal than the random spreadsheets [agency 1]  sent over! [agency 2] has a more formal naming system, but again, there's no persistent indicator for the datasets because they are not accessible.

A known problem with no clear solution. Here's how I try to approach the problem:

 - A citation has author, title, and a publisher, with optional other locators. (see [Chicago Manual of Style (subscription)](https://www.chicagomanualofstyle.org/book/ed17/part3/ch14/psec014.html) and [CMS Quick Guide on citations](https://www.chicagomanualofstyle.org/tools_citationguide/citation-guide-2.html). 
 
Note that Chicago-style does not actually required the locator information - see the examples for "E-book" Kindle.
 
> "Electronic content presented without formal ties to a publisher or sponsoring body has the authority equivalent to that of unpublished or self-published material in other media."

Thus, one can construct the citation as
    - Author: the provider of the data (the agency)
    - Title: whatever the provider would recognize and re-furnish to a third-party
    - Publisher: the provider of the data (or its higher-level institution, e.g., the government department or ministry)
    - Locators (optional): maybe something along the lines of "Multiple electronic files" with possible additional information ", provided to the author under DUA (date or any contract number)"

An example might thus be:

> Agency 1. 2007. *Name of DataSet*. Boston: Commonwealth of Massachusetts. Multiple electronic files.
