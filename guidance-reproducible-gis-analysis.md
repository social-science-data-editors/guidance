---
layout: withtoc
title: "Some (incomplete) guidance to creating reproducible maps with GIS software"
---

> The following information was provided by several sources. We wish to thank Keith Jenkins (Cornell University).

## Some readings

Focussing on R:

- [Reproducible Cartography](https://riatelab.github.io/ReproducibleCartography/paper/paper.html) 
- [Reproducible GIS analysis with R](https://staff.washington.edu/phurvitz/r_gis/)

Mixing software:

- [RQGIS: Integrating R with QGIS forStatistical Geocomputing](https://journal.r-project.org/archive/2017/RJ-2017-067/RJ-2017-067.pdf) (*Jannes Muenchow, Patrick Schratz and Alexander Brenning , The R Journal (2017) 9:2, pages 409-428.* )

## Shapefiles

The typical input to any GIS system is a set of files collectively referred to as "[shapefiles](https://en.wikipedia.org/wiki/Shapefile)". These are often distributed as ZIP archives, but for any given proje ct, are generally within a separate directory. There are at least three *mandatory* files, ending in `shp`, `shx`, and `dbf`. The latter is the actual data being projected onto a map (in dBase IV format), and can be created and manipulated by other programs as well, including Stata, R, and Python. The `shp` file is the information about shapes on a map ("features"). Many features can be combined, using GIS programs. 

## Reproducibility principles

Because the `dbf` file is data, its sources should be clearly described in reproducible workflows. How is the core non-geographic data in the `dbf` being created, where does it come from? 

Map information (typically in the base `shp` file) comes from cartographic or statistical sources. For instance, some shapefiles in the US will be sourced from the U.S. Census Bureau, which uses them for various statistical activities. These sources should be clearly outlined.

Any processing to combine data in preparation of creating a map, as well as the processing steps to create the map, need to be described in a reproducible workflow.


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

