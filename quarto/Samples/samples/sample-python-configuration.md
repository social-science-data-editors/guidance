---
layout: withtoc
title: "The Python Way"
---

### Single configuration file with relative paths

- Encouraged:

NEEDS CONTENT

### Use of relative paths in main program for inclusions

NEEDS CONTENT

### Dependency management

Python can manage dependencies through the use of the "requirements.txt" file (for more info, see [PIP documentation](https://pip.readthedocs.io/en/1.1/requirements.html)).

The requirements.txt will list the Python dependencies:
```
MyApp
Framework==0.9.4
Library>=0.2
```
which can then be installed in other users by running
```
pip install -r requirements.txt
```

A working environment can "freeze" the dependencies by running
```
pip freeze > requirements.txt
```
which needs to be edited down (maybe).