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

## Creating reproducible maps using QGIS

The open-source QGIS has a graphical modeler similar to the ArcGIS
ModelBuilder, and it can also export models to Python scripts.  PyQGIS
is similar to ArcPy, and both are closely tied to their own software
structures and functionalities.  

## Creating reproducible maps using Python

There are  some great
stand-alone Python packages like GeoPandas, Rasterio, and PySAL.

## Creating reproducible maps using R

There are also ways to create maps in R.