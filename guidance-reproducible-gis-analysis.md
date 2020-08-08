---
layout: withtoc
title: "Some (incomplete) guidance to creating reproducible maps with GIS software"
---

> The following information was provided by several sources. We wish to thank Keith Jenkins (Cornell University).

## Creating reproducible ArcGIS-produced maps

ArcGIS has a tool called ModelBuilder, which is a graphical
interface that lets you create a workflow of processing tools, their
input parameters, and their outputs.  These models can effectively
turn a complex flow into something that looks like just another
processing tool, so that the same model can be run on another input,
or with different starting parameters.  There may be some variations in
the format between ArcGIS software versions that should be
investigated when considering their use for reproducibility.  Models
can also be exported to a Python script, which might be better from a
reproducibility perspective, although they will still depend on access
to licensed ArcGIS python libraries in order to run.  It is also
possible to write ArcPy scripts by hand.

Esri's newer ArcGIS Pro (as opposed to the
older ArcMap) has "[ArcGIS Notebooks](https://pro.arcgis.com/en/pro-app/arcpy/get-started/pro-notebooks.htm)" which are based on Jupyter.  
However, it seems many Esri users are still using the older ArcMap.

### Resources

Esri Academy has many [ArcGIS tutorials and web courses](https://www.esri.com/training/catalog/search/).  Some are
marked as free.  Some universities have site licenses.  

## Creating reproducible maps using QGIS

The open-source QGIS has a graphical modeler similar to the ArcGIS
ModelBuilder, and it can also export models to Python scripts.  PyQGIS
is similar to ArcPy, and both are closely tied to their own software
structures and functionalities.  

### Resources

- [Official QGIS documentation on Graphical Modeler](https://docs.qgis.org/3.10/en/docs/user_manual/processing/modeler.html)
- Ujaval Gandhi has developed several [QGIS-related courses](https://courses.spatialthoughts.com/), and makes
his training materials available online, including "Python Foundation
for Spatial Analysis", "Customizing QGIS with Python", and "Automating
GIS Workflows with QGIS".
- [PyQGIS Programmer's Guide](https://locatepress.com/ppg3) (2018 book)


## Creating reproducible maps using Python

There are  some great
stand-alone Python packages like GeoPandas, Rasterio, and PySAL.

## Creating reproducible maps using R

There are also ways to create maps in R.

## You can help

We are always looking to expand this resource. Please suggest additions and expansions of this guide through a Github [issue](https://github.com/social-science-data-editors/guidance/issues/new/choose) or pull request.

