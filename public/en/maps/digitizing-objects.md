---
description: Digitizing Objects
---

# Digitizing Objects

### Properties

**Objects selectable**

Use this option to make objects from this layer selectable. Uncheck this option if a layer only contains objects which shall not be selected.

**Show in overview map**

Select this option to display the selected layer in the overview map in the lower left corner.

### Display for object data

In this view, details about the currently selected GeoDin objects in the map are displayed. The layouts used can contain links to other layouts, making it possible to browse the detail data of the objects.

Elements with links can be identified by their colour and the different mouse cursor. Click on the object link to display further detailed information about the object.

### Quick search

In the Quick Search field, simple searches for objects on the map can be made to navigate to these objects. After entering the search key word, a dropdown list shows all items where the condition is true. By pressing the ENTER-Key or by clicking on the symbol to the right , the object can be highlighted.

The search field can be configured to different searches (depending on the layer), as described in **Quick search**.

### Preferences

**Draw scalebar**

Choose this option to draw a scale bar in the lower right corner of the map window.

**Flash existing objects while selecting in GOM**

Elements selected in the GeoDin object manager (GOM) can be selected to blink in the Map. The objects from the object manager can be easily recognized in the map.

Only objects which can be displayed in the map will blink, objects not in the map are ignored.

### Adding map data to the document management

## Preparing GIS data for GeoDin Maps

GeoDin Maps shows GeoDin objects in a spaital contex. Map information has to first be added to the GeoDin database using the integrated document management.

Geographic map information can be either grid (JPG, TIFF, ECW\*) or vector data (SHAPE, DXF).

\
&#xNAN;_**Note:**_ _ECW is a new highly efficient grid format._

**Adding documents to the Document management**

1\. First the [Document management](../navigating-the-geodin-workspace/documents/managing-documents.md) is started.

2\. If required add new folders using the **New Folder** button to create an organised structure.

3\. Then choose **New document** within the hierachy just created.

4\. Navigate to the chosen file and select it.

5\. In some cases an item is composed of several individual files with different extensions and hence cannot be added to the database. This is not only the case with SHAPE (.shp) files, but also with raster files where spatial information is stored in separate files. To resolve this GeoDin creates a link to the files that are saved outside of the database.

6.The next step is to choose the document description type "**(DOC) GeoDin layer**". In the same dialogue window the final step in the adding document process is to describe the contents of the document along with any other necessary comments. This final step can be repeated at a later date as more information becomes available.

7\. End the documenet management with **Close**.

**Making GeoDin data available for GeoDin Maps**

GeoDin data is made available as queries and groups. First of all a group of data has to be defined. This can be added via drag and drop from the GeoDin Object Manager to the map window. This makes a duplicate of the query available in the map and is independent of the original query and any subsequent changes that may be made to it.

Both user-defined and system queries can be shown in the map window. All the result fields defined in these queries will be available in the map window. If a field is not defined then it cannot be used for labelling or other presentation options. These fileds are defined under the node " Results fields (ArcGIS/Export)" in the query.

Additionally specific layouts can be defined in the query for displaying the relevant data. Choose the button **Favourite layouts** to define which layouts are to be used for the query (these need to be multi object capable, e.g. time lines from several objects) or the results of the query (single object frame layouts).

### Search in polygons

You can use this tool to make a location-based selection of objects. All objects in a previously selected polygon of a surface layer are selected.

**Polygon layer:**

Select one of the offered polygon layers that contains one or more polygons in which GeoDin objects are to be searched.

**Selection / or Condition**

If the option Selection is selected, select one or more polygons of the surface layer defined in the first step by clicking on them on the map. If you want to select the corresponding surface layer according to defined attributes, use the option Condition and enter the corresponding data using the SQL syntax.

_\[Buffer]_

If you would like to optionally set an extended search radius around the selected surface layers, enter this in meters.

**GeoDin-Layer:**

Specify the layer that contains the GeoDin objects to be determined. Note: Only layers with GeoDin objects are available for selection, no other point layers added to the map (\*.shp or similar). If \[Automatically update preview ] is checked, the found objects are displayed in the preview window (loading process varies depending on the scope of the search result).

**Select objects**

By clicking on \<Select objects> the selected objects are displayed at the node "Object selection" in the GeoDin object manager.

If a layout is displayed in the [Display for object data](digitizing-objects.md) of the map, it is filled with the data of the found objects. It is recommended to use a layout with [Multi object frame](../data-visualization/layouts/object-frames.md) if more than one object is found by the "Search in polygons".

### Mini graphics for the layer

With the option "**Mini graphics**" you can place your objects in the map layouts of your choice, e.g. showing a _drill log_ or a _measurement diagram_.

Add a new layout with the buttons **Add New Element** (to the end of the layout list) or **Insert New Element** (above the selected layout).

With the button  ![Duplicate](../.gitbook/assets/icons/duplicate.png) **Duplicate element** you duplicate the selected layout. If you want to make changes to the list without an immediate update, use the button **Edit without update** .

The following setting options are available for editing the mini graphics:

(All changes are immediately visible on the map so you can check the result immediately.)

_\[Activated]_

By ticking the box, the mini graphic is visible on the map. So you can keep numerous layouts available on the object layer, only the activated ones will be displayed.

**Layout:**

Select a layout by navigating to the storage location using the button on the right.

**Alignment:**

Here you set how the layout should be aligned to the object symbol.

**Transparency:**

If you want to make the mini graphics inserted into the map transparent in order not to cover the underlying map completely, move the slider until the desired result is achieved.

**Max. allowed image overlapping %:**

Depending on the zoom level and the proximity of the holes to each other, layouts may overlap. To optimize the display, you can set the maximum allowed overlap of adjacent layouts in % of the layout area.

_\[Draw frame]_

Check the box to draw a frame around the layout whose color and line width you can specify.

### Digitise object

With the function "Digitise objects" it is possible to draw point, line and area objects directly in GeoDin Maps and save them as objects.

The digitisation process takes place in four steps.

**Choose object type and destination project**

**Map contents to GeoDin data fields**

[Create geometry in the map window](digitizing-objects.md)

[Input general data](../navigating-the-geodin-workspace/objects/general-data.md)

In order to digitise objects in the integrated GIS, it is assumed that the map has a coordinate system.

### Choose object type and destination project

Defining the type of object and the target object is the first step in digitising objects in the maps module. Various settings can be made in a new window that opens when the function is started.

In the **object type** field, the type of object to be created can be selected; only object types that provide GEOWKT geometry tables are permitted. These object types (e.g. examination areas) must be installed beforehand.

In the next section, the project assignment for the new object is defined. There are two possibilities for this:

1. Manual assignment: simple selection of the project in which the object is to be saved later.
2. Definition via a field of a map layer: the field must contain the PRJID (for this case, use the button **<...>** in field "Take from map" and select the corresponding field in the new window).
