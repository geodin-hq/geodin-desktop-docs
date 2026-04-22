---
description: Adding Layers
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Adding Layers

### Legend

In the legend, all layers of the map are displayed.

**Visibility**

Check (or un-check) the box in front of the layer name to display the layer in the map.

**Order**

The order of the layers can be simply changed by \"drag and drop\".

**Context menu**

 *Change parameter*

This function can be used to change parameters of GeoDin layers if [Parameterized query](../data-analysis/queries/parameterized-queries.md) have been used as the data basis for the layer. The changes are displayed accordingly in the map.

 *Zoom to layer*

With this function the map is zoomed to the extent of the selected layer.

 *Refresh*

Use this function to refresh linked data in the GIS window. A refresh can be necessary when new GeoDin locations have been added during the session or if you have changed shape-files or DXF-data using other tools.

 *Remove layer*

This function removes the selected layer from the map.

 *Assign to group*

Assign a layer to a specific group. All groups available in the map are shown. Change to the grouped layer view by clicking the tab  **at the bottom of the legend.

 *Export*

This function allows you to export a layer in the formats SHP, GML, MIF, KML and JSON.

 *Interpolation*

The function [Interpolation](../data-visualization/groundwater-visualizations.md) allows you to perform interpolaions on vector layers that contains point objects.

 *Properties*

You can edit the properties of the selected layer using this function **Properties**. The properties that can be changed depend on the type of layer.

 *Presentation options*

Vis the context mneu you can access **Presentation options** for the layer.

 *Attach presentation to document source* <!-- src: help/MP/5938 -->

### Selection properties

**Select in**

Select from the different options: all layers, active layer, top layer.

The selection tool then operates only in the selected layers.

**Color**

Here, the color for outlining and filling the selected objects can be set.

**Show outline only**

Select this option to mark a selection only with a coloured outline. If this option is not selected, the selected objects are colored transparently in the color selected above. This makes objects easy to recognize, but sometimes hides objects in the background. <!-- src: help/MP/7484 -->

### Settings

**Description**

The tabs **Layer** and **Section** are available for both vector and raster layers. Here, you can find general information and make some basic settings for the visualisation. Depending on the map size and the performance of the computer hardware, the display settings can be optimized. <!-- src: help/MP/7854 -->

### Vector

**Vector dialog box**

The *Vector* dialog box is the layer property dialog box for the vector type layers. It consists of 6 up to 8 settings tabs (depending of the vector layer format):

1.  *Layer tab*

2.  *Section tab*

3.  *Renderer tab*

4.  *Line tab* - appears only if the layer supports line type shapes

5.  *Area tab* - appears only if the layer supports polygon type shapes

6.  *Marker tab* - appears only if the layer supports point or multipoint type shapes

7.  *Label tab*

8.  *Chart tab* <!-- src: help/MP/7919 -->

### pixel

The **Raster** dialog box is the layer property dialog box for the raster type layers (images, grids). It consists of 3 settings tabs :

1.  *Layer tab*

2.  *Section tab*

3.  *Pixel tab* - appears if the layer was not recognized as a grid layer.

4.  *Grid tab* - appears only when the layer was recognized as a grid layer. <!-- src: help/MP/7920 -->

### Creating a new map

A GeoDin Map is made up of several individual map themes. The combination of layers, their settings, the order in the map and the general map settings are all saved in a map: hence a map is a kind of container.

**Creating a new map using the Document management method**

1\. First of all the [Document management](../navigating-the-geodin-workspace/documents/managing-documents.md)  is started.

2\. At this point it is advisable to create a folder hierachy to organize the documents using the **New folder** button. For instance this can be a folder for shape files, or another for layouts. The map document itself (created in the next step) can be in a folder, but it is often easier to have one or maps at the root level of the document management structure.

3\. Now create a new document (that is going to be the map) via the **New document** button.

4\. In the \<Add document\> dialogue window select the radio button -Create document- and then click on the new file icon and choose \"**Embedded GIS map\"** from the list and confirm by clicking the blue tick icon. This is referred to as \"Step 1\" at the top of the \<Add document\> window.

5\. You must then enter a file name for the map before proceeding by clicking the **Next** button. Note that by default maps are saved in the database but they can also be saved as discrete files.

6\. In this dialogue window (\"Step 2\") the available document descriptions in your GeoDin installation are shown in the top panel. The correct document type for a map is \"(DOC) GeoDin map\" which should be selected from the \<Chose document description type\> panel. If it is not visible (i.e. not available for your GeoDin installation) you must first install it by clicking the **\<**[Register document descriptions](../navigating-the-geodin-workspace/documents/document-organization.md)**\>** button.

6a. This brings up a new dialogue window with two panels. The top panel shows the documents types available in your installation and the registered document descriptions for your database in the bottom panel. Install the correct document type so that it appears in the top panel and then register it for the database by clicking the **Register** button. You can now close the window.

7\. Once installed and registered select the document type \"(DOC) GeoDin map\" from the top panel of the \<Add document\> window (i.e. \"Step 2\").

8\. Step 3 involves completing the description for the map document (content and comments). This data may also be entered later if required. Note that that the type of meta data that can be entered here depends on the document type selected. Be sure to have chosen \"(DOC) GeoDin map\" and not older document description types such as (EDC) or (ADC) etc. The newer DOC types are multilingual.

9\. Finally click the **OK** button to complete the creation of a GeoDin map. This is the basis on which further layers etc. can be added.

**Adding layers**

In a GeoDin Map you may display documents from the \"Document management\" (e.g. shapes, grid data) or GeoDin objects (e.g. boreholes and measurement points).

To add a new layer, simply drag & drop a node from the GeoDin Object Manager (GOM) into the map window. Layers are drawn in the order that they were added to the map i.e. the last layer added will be superimposed on all other layers. To change this drawing order select a layer with the mouse, press and hold whilst moving the layer up or down in the list.

**Deleting layers**\
The context menu for a layer has an option for deleting the layer. <!-- src: help/MP/7921 -->

### Adding map data to the document management

## Preparing GIS data for GeoDin Maps

GeoDin Maps shows GeoDin objects in a spaital contex. Map information has to first be added to the GeoDin database using the integrated document management.

Geographic map information can be either grid (JPG, TIFF, ECW\*) or vector data (SHAPE, DXF).

\
***Note:*** *ECW is a new highly efficient grid format.*

**Adding documents to the Document management**

1\. First the [Document management](../navigating-the-geodin-workspace/documents/managing-documents.md)  is started.

2\. If required add new folders using the **New Folder** button to create an organised structure.

3\. Then choose **New document** within the hierachy just created.

4\. Navigate to the chosen file and select it.

5\. In some cases an item is composed of several individual files with different extensions and hence cannot be added to the database. This is not only the case with SHAPE (.shp) files, but also with raster files where spatial information is stored in separate files. To resolve this GeoDin creates a link to the files that are saved outside of the database.

6.The next step is to choose the document description type \"**(DOC) GeoDin layer**\". In the same dialogue window the final step in the adding document process is to describe the contents of the document along with any other necessary comments. This final step can be repeated at a later date as more information becomes available.

7\. End the documenet management with **Close**.

**Making GeoDin data available for GeoDin Maps**

GeoDin data is made available as queries and groups. First of all a group of data has to be defined. This can be added via drag and drop from the GeoDin Object Manager to the map window. This makes a duplicate of the query available in the map and is independent of the original query and any subsequent changes that may be made to it.

Both user-defined and system queries can be shown in the map window. All the result fields defined in these queries will be available in the map window. If a field is not defined then it cannot be used for labelling or other presentation options. These fileds are defined under the node " Results fields (ArcGIS/Export)" in the query.

Additionally specific layouts can be defined in the query for displaying the relevant data. Choose the button **Favourite layouts** to define which layouts are to be used for the query (these need to be multi object capable, e.g. time lines from several objects) or the results of the query (single object frame layouts). <!-- src: help/MP/7925 -->

### Add WebTileLayer

Here you can add \"Web Tile\" layers or \"Web Map Tile Service\" layers (WMTS) .

Simply choose from the layers offered **Add layer**. <!-- src: help/MP/10586 -->

### Contour lines

The **\"Contour lines\"** method is available for layers of type *Grid* (\*.grd).

***Minimum:***

Enter the limit value(s) below which the values for the calculation of the contour lines are not to be taken into account.

***Distance:***

Enter the distance between the contour lines here.

**reset / get from grid**

Use this button to reset the entered values to automatically determined values that result from the existing data.

***Decimal places:***

Here you specify the number of decimal places for the displayed values.

*\[Save line values into attribute field\]*

Check this box if the line values are to be written to the attribute table of the newly created layer.

***Field name:***

The column created in the attribute table (see above) receives the column name entered here.

 Start the calculation with this button and get a first overview in the preview window.

 Save the result in Shape format, (\*.shp), Geography Markup Language (\*.gml), MapInfo File (\*.mif), Keyhole Markup Language (\*.km) or JavaScript Object Notation (\*.json). After saving, you will be asked whether the saved file should be transferred to the map and displayed. If you want this, confirm with ![Yes](.gitbook/assets/icons/yes.png) **\<Yes\>.** <!-- src: help/MP/10934 -->
