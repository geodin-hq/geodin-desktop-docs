---
description: >-
  Get GeoDin data out to CAD and GIS: export layouts as DXF from the internal
  PDF printer, and export query results as point shape files for ArcGIS.
---

# CAD & GIS Exports

GeoDin's internal PDF printer can export layouts as DXF files for use in AutoCAD or other CAD software.

DXF export makes GeoDin graphical output (borehole logs, cross-sections) directly consumable in AutoCAD workflows.

The internal PDF printer supports vector output (not just raster), preserving quality for CAD and publication use.

## Exporting query results as a shape file

<!-- src: help/H0000007849#export-shape-files -->

The **Export shape files** method turns the result of a GeoDin query into a point shape file that any GIS can read. It sits inside the **Publish and export** method, which is available on object and measurement point nodes as well as on queries and groups.

{% stepper %}
{% step %}
#### Step 1: Select the source

Select the object node, measurement point node, query, or group whose data you want to export.
{% endstep %}

{% step %}
#### Step 2: Open the export method

Open **Publish and export** and choose the method **Export shape files**.
{% endstep %}

{% step %}
#### Step 3: Decide whether to add the shape in ArcGIS

The option to add the shape in ArcGIS is only active when the GeoDin Extension for ArcGIS is already connected to GeoDin. If it is not connected, create the shape here and add it to the ArcGIS project - or to any other GIS - manually afterwards.
{% endstep %}

{% step %}
#### Step 4: Run the export and name the output

Click **&lt;Execute&gt;**, then either select an existing output shape or enter a new name for it.
{% endstep %}
{% endstepper %}

For the ArcGIS side of the connection, see [ArcGIS integration](../integrations/arcgis/overview.md).

## Reference: shape attributes written by the export

<!-- src: help/H0000007849#shape-attributes -->

GeoDin always creates a **point data shape**. The result fields of the query are attached to it as attribute fields, with two rules worth knowing before you design the query:

* **Short field names when several tables are involved.** If a query draws on more than one GeoDin table, the short names of the fields are used in the shape. The complete `tablename.fieldname` notation exceeds the maximum field length allowed by the shape attribute column definition.
* **XCOORD and YCOORD are added automatically.** So that the point data can be located, the fields `XCOORD` and `YCOORD` from the GeoDin general data are added to the object automatically. They appear as shape attributes even when they are not part of the query result fields.

The coordinate system the exported coordinates belong to is the one stored on the object - see [Coordinate Systems and EPSG](coordinate-systems-and-epsg.md).
