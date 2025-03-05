---
layout: withtoc
title: "Sample Stata Configurations"
---

### Single configuration file with relative paths

- Encouraged:
```
global basepath "C:/My Documents/Paper 15/"
global includes "${basepath}/includes"
global inputdata "${basepath}/inputdata"
global tables    "${basepath}/text/tables"
set matsize 11000
```

### Use of relative paths in main program for inclusions

 Discouraged:
```
include "C:\My Documents\yesterdays programs\submodule.do"
```
- Encouraged:
```
include "includes/submodule.do"
```
or
```
include "${includes}/submodule.do"
```

### Installing packages in a project-specific directory

Reset the "PERSONAL" ado directory. In the config file, include
```
sysdir set PERSONAL "$basepath/ado/personal"
sysdir set PLUS "$basepath/ado/plus"
```
Stata will then install the new extension into that directory instead of c:\ado\plus ([source](https://www.stata.com/support/faqs/programming/personal-ado-directory/) )

You can then create a single dependency file that is run before all others:
```
00_install.do:
/* run this only when updating the packages */
/* all packages necessary to run the main.do have */
/* been included in this replication package */
include "config.do"
ssc install package1
ssc install package2
ssc install package3
```
or even better, [from here](https://github.com/gslab-econ/template/blob/master/config/config_stata.do):
```
00_install.do:
/* run this only when updating the packages */
/* all packages necessary to run the main.do have */
/* been included in this replication package */
include "config.do"
/* Source: https://github.com/gslab-econ/template/blob/master/config/config_stata.do */
program main
    * *** Add required packages from SSC to this list ***
    local ssc_packages ""
    * *** Add required packages from SSC to this list ***

    if !missing("`ssc_packages'") {
        foreach pkg in "`ssc_packages'" {
            dis "Installing `pkg'"
            quietly ssc install `pkg', replace
        }
    }

    * Install packages using net
    quietly net from "https://somewhere.on.inter.net/repo/supercode/"
    quietly cap ado uninstall magic
    quietly net install magic
end
main
```

and in your main program
```
include "config.do"
package1 lhs rhs, param(param1)
```
will always work, because it no longer requires download, and fixes the version of the packages used.