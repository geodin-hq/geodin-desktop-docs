---
description: Cross Section Layouts
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Cross Section Layouts

### Axis range

In the section Interval the option -User defined- can be selected. If choosing the option -Automatic- the actual measurement values are used to define the lower and upper limit of the axis (minimum and maximum value). By choosing the option -Round**-** the main division ticks are rounded at the minimum and the maximum of the displayed interval to an even number. By entering a percent value you can decide of how many percent the displayed interval is exceeded, so that the minimum and maximum value do not match with the diagram margins.

For the presentation of the values also the options Logarithmic and/or Mirror axis are available.

The selection of the Main divisions can be done by entering the parting unit or the entry of a number of main divisions. If choosing the view area -Automatic-, the selection -Number of main divisions- is often more sensible, than the setting of a division unit. Not depending on the overall area of the view (for example 0 - 5 or 0 - 50000) a sensibly displayable number of main divisions is created.

Also the number of Help ticks and the number of decimal points can be selected. The option -Cut surplus decimals- cuts surplus zeros in the labelling. This setting is especially useful, if logarithmic axis are displayed, to get to a labelling like: 0,001 - 0,01 - 0,1 - 1 - 10 - 100 - 1000 etc.. <!-- src: help/05/687 -->

### Presentation options

If you choose the presentation type bar or curve for the series of a data sequence graph, you have the option to interrupt the bar or curve, if it is known, that sections exist, in which samples were not taken continuously, and the bar or curve leads to the impression that measured values are available. Here giving the length of the section, from which the section is not examined, is necessary.

The chosen setting is valid for all series of the diagram and does therefore not have to be selected for each individual series. Besides this general setting you have also the possibility to select this option separately for each series.

For this see also:

[bar / curve](../layouts/measurement-value-graphics.md) <!-- src: help/05/1607 -->

### Layout list

A layout list is a collection of individual layouts (\*.GLO) in a single file (\*.GLL = GeoDin-LayoutList) or in a file that summarises and stores references to the individual layouts (\*.GLC = GeoDin-LayoutCollection).

\*.GLC files have the advantage that when a layout is changed, the changed layout is automatically used. In a \*.GLL file, on the other hand, the layout must also be exchanged or adapted there.

***Note:*** *\*.GLL files can no longer be created, only existing ones can be opened. Use \*.GLC files for creating a layout list in the future.*

A layout list has advanced features compared to a single layout:

- Layouts can be combined into a [Reports](../../reporting/report-templates.md). Reports allow the printout of several layouts in a given order, e.g. the complete documentation of a borehole with general data sheet, representation of the geology and representation of the well design

- (e.g. backfill, casing/screens)

- In addition, the following applies only to \*.GLL files:

  - Compilation of layouts in groups, e.g. to find a specific layout more quickly.

  - Layout lists can contain images (e.g. company logos) that can be used in all layouts of the layout list. This saves storage space and allows the image to be exchanged in one place without having to edit each individual layout.

Layout lists/layout collections are also used in the [Create and edit graphic](../layouts/layout-editor-basics.md) method to get quickly to a specific layout.

Editing a layout list file takes place in the GeoDin graphics window (see also [Create and edit graphic](../layouts/layout-editor-basics.md)). Here the opening of a layout list file takes place either via the function **Open file** or - if the standard layout list is to be opened -- more quickly via the button **Standard layout list**.

***Note:*** *This is only possible with a \*.GLL file, as only a \*.GLL file can be declared as the standard layout list.* <!-- src: help/05/1907 -->

### Undo

Here the maximum number of steps and the maximum of memory available for the function **Undo changes** are selected.

The actual capacity of memory is indicated. If large cross-section graphics are created often and sufficient PC-RAM is available, the maximum available memory should be greatly increased.

***Note:*** *If 0 is chosen as maximum number of steps, the undo function is deactivated.* <!-- src: help/05/3227 -->

### Show filters

If an existing well design is added to a groundwater measurement place, this option can be used to add the presentation of the filter length in the borehole cross-section. <!-- src: help/05/3277 -->

### Snap

To make freehand constructions easier, especially while creating geological cross-sections, the snap function provides the exact connection of one graphic element to another. When creating new or moving existing ends, corners or nodal points, a point is dragged automatic to an existing end, corner or nodal point. The preset distance for searching points is adjustable. The snap function works independently of drawing layers and treats the graphic elements of all areas in the same manner. The snap function is activated and deactivated using the menu entry ***Preferences**\\**Snap*** or the shortcut **Ctrl+K**.

The snap distance - that is the maximum distance, which cannot be exceeded for connecting one point automatically to another, can be adjusted between 1 and 50 mm. The selection of the distance is possible using the menu entry ***Preferences**\\**Snap preferences***.

Graphic elements, with nodes that are influenced by the snap function are:\
line, rectangle, polyline and borehole profile.

 <!-- src: help/05/3379 -->

### Import layer boundaries

For the import of layer boundaries in GeoDin the menu function ***File**\\**Import**\\**Layer boundaries*** is available. For this an existing profile cross-section in the current graph is required.

\
Using the icon **Import file** the selected file is opened.

Example:

0 4444440.00000 5555200.00000 50.2\
0 4444425.00000 5555180.00000 50.7\
0 4444430.00000 5555150.00000 50.3\
0 4444450.00000 5555100.00000 51.1\
0 4444410.00000 5555050.00000 50.3\
END

The file contains the 4 columns:

1\. Column = 0\
2. Column = Easting\
3. Column= Northing\
4. Column = Elevation

***Attention:*** *The coordinate systems used in the section and the import file must match and must be at right angles.*

The polyline resulting from the file is shown in the left preview, so that a control with the real line of section is possible. The elevation values of coordinates, which do not match exactly with the line of section, are projected perpendicular on the line of section.


The icon **Add layer boundary** transfers polylines in the graph. Without leaving the dialogue, more layer boundaries can be imported. <!-- src: help/05/3490 -->

### Scales

These layout interfaces contain setting options for horizontal and vertical scales and are usable for layouts, which contain the following graphic elements:

[Borehole log](../borehole-logs/creating-borehole-logs.md)

[Well design](../../navigating-the-geodin-workspace/objects/well-design-data.md)

[Data sequence](../../data-collection/import/data-sequences.md)

[Samples](../../navigating-the-geodin-workspace/objects/sample-data.md) <!-- src: help/05/3651 -->

### Labeling

The Layout interfaces option offers input possibilities for text elements and is usable for layouts, which contain the graphic elements [Text](../layouts/text-macros-and-variable-text.md) and [Variable text](../layouts/text-macros-and-variable-text.md). <!-- src: help/05/3662 -->

### Cross-section

The tool for the creation of profile cross-sections automatically places geologic objects in the graphics at a pre-defined scale. The line of section can be defined using the mouse. In a cross-section, different scenarios can be created for the presentation and combination of borehole logs, well design plans etc.

Creating a profile cross-section consists of several steps:

1.  Selection of boreholes for the presentation in the site plan

2.  Defining the line of section

3.  Selection of an appropriate horizontal and vertical scale and the correct position on the paper

4.  adapting the presentation parameters for borehole logs, well design, cone penetration tests etc.

The construction of a cross-section can be started by different methods:

1\) Start at a query or group of objects

By double-clicking on the method icon ![Cross-section](.gitbook/assets/icons/cross-section.png) **Cross-section**:


the graphic window is opened, the cross-section is started and all objects of the query are loaded into the site plan view of the cross-section.

2\) Start at the menu ***Extras**\\**Cross-Section*** in the graphic window

This will start the cross-section without objects bein added automatically. Objects can be added manually to the site plan or list of objects by drag & drop into the window \<Cross-section Objects\>.

\
3) Navigate the to the branch \"Cross-section\" in the properties of the current graphic.

There, the desired cross-section can be selected. By clicking the **Start** button, the property branches to create and modify cross-sections are made available.

**Graphic elements of a cross-section**

The graphic elements of the profile cross-section are stored in special drawing layers. Editing these graphic elements is possible only by changing the properties in the cross-section. It is not possible to select the elements with the mouse. To manipulate the elements individually, the cross-section elements must be written into standard graphic layers with the function **\"Break up cross-section\"**. Each object is written into a special layer. These layers are shown in the layer list with a cross-section symbol, they can not be edited, but it is possible to select whether a layer is displayed or not.

All setting made in the cross-section, like defining the line of section, changing the scale or the display properties of an scenario is visible immediately. The changes in the display properties are automatically made for all suitable objects.

**Start and Close**

To start or resume work on a cross-section (and thus the contained graphics elements), the switch **Start** is used. The branches for selecting objects, defining the line of section, setting the scales and for changing the cross-section scenarios are displayed. The \<Close\> switch ends editing the cross-section and the branches with the settings are hidden.

**Refresh cross-section**

With this button, the objects in the cross-section are read again from the database and the cross-section is refreshed. This option can be used to transfer changes made to the data in the database to the cross-section.

**Options**

Define here in which way the objects in the cross-section are stored in the cross-section graphic.

1.  Save object data in the cross section graphic

Use this option to save the borehole data / object data in the graphic file. Changes in the data for these boreholes will have no effect on the displayed graphic when opening the file again (static cross section).

The cross section can be modified later, a connection to the database in which the object data is stored is not necessary. To edit this graphic at another PC, a connection to the GeoDin database is not necessary. (This option is not available if the cross section contains elements which require a database connection, for example measurement values in a data sequence)

1.  Save object link in the cross section graphic

Use this option to save only a link to the borehole data / object data in the graphic file. Changes in the data for these boreholes will be effective when opening the graphic file again (dynamic cross section).

To edit the cross section graphic, a connection to the current database is necessary. Without this database, the graphic can not be displayed. If possible, save the file in the documents branch of the current database. This way it is assured that database access to borehole data / object data is available when opening the cross section graphic. For editing at another computer, exchange the database (with the included cross section graphic).

**Break up cross-section**

If it is necessary to edit the individual graphic elements of a cross-section, the cross-section can be dissolved with the **Break up cross-section** switch. Then, the graphic elements and layers are unlocked and the individual elements can be selected and edited normally.

***Attention:*** *The link to the cross-section is lost and can not be restored if the cross-section is dissolved. It is then no longer possible to edit the display general properties for the element, or set the scales of the cross-section. The objects loaded and the line of section are removed from the current cross-section.*

**Drawing order**

The entire cross-section can be moved as a whole to the fore- or background relative to the other objects.

With the buttons **Visible** and **Invisible**, the drawing layers of the current cross section are made invisible with a single click. This can be used to remove the cross-section temporarily from the graphic. <!-- src: help/05/7393 -->

### Objects

By selecting the branch ***Objects*** at a cross-section, the window \<Cross-section: Objects\> opens. The window is freely scalable and stays visible until another branch in the object properties tree is selected or the window is closed.

Objects needed for the cross-section or for orientation in the site plan can be added directly by Drag & Drop from the GeoDin object manager. Single objects, queries or groups can be selected with the mouse and can be dropped either onto the list or the site plan. If an object is already included in the list, it is not added again.

Objects for a cross-section can be loaded from any database or project, i.e. it is not necessary to store data for a cross-section in one project or database.

In the site plan, the objects loaded are presented with a sign and a label, the site plan can be zoomed and moved as necessary with the available tools.

**Borehole list:**

The selected boreholes are displayed in a site plan presentation. An object can be selected either in the list or in the site plan, it is displayed in red in the site plan and marked in the list.

The coordinates of the object, elevation and depth of the borehole are diplayed below the list of objects.

An object deleted from the object list with the **Remove** button is also deleted from the site plan.

**Coordinate transformation**

If the coordinates of the boreholes are in different meridian zones, the coordinates can be transformed into a single zone. This is done by selecting the desired zone. The presentation in the site-plan is corrected accordingly, making it possible to define a line of section (This function is available for the Gaus-Krüger coordinate system).

If the boreholes are located on the *\[southern hemisphere\]* (Y coordinate increasing \"downward\"), checking the option -Southern hemisphere- will mirror the site plan.

It is possible to multiply the object coordinates with a selectable factor, if necessary.

Changing between the different parts of the cross-section (objects, line of section, scales, and cross-section scenarios) is possible by directly clicking on the branch in the object properties window, or by using the buttons in the upper right of the window. <!-- src: help/05/7396 -->

### Line of section

By selecting the branch ***Line of section*** at a cross-section, the window \'Cross-section: Line of section\' opens. The window is freely scalable and stays visible until another branch in the object properties tree is selected or the window is closed.

In this window, the line of section is defined.

To draw a line of section, two tools are available:



 With the first tool, the line of section itself is defined. The line of section can contain any number of nodal points. The position of a nodal point can be edited.

 With the second tool objects are projected onto the line of section. Objects are always projected at a right angle, using the shortest distance to the line of section. By clicking on a projected object, the borehole will be deselected. It is not possible to project objects already used as a nodal point.

The line of section can thus be constructed by connecting the individual objects, with the possiblility to project additional objects onto the section line. It is also possible to create a line of section with freely placed nodal points, and all objects are projected onto it.

The table at the right side of the window shows all nodal points and objects (those which are used as nodal points) with their coordinates.

It is possible to change the coordinates of the nodal points here. If a nodal point is located exactly at an object, the object name will be shown. If the coordinates of such a nodal point are changed, the borehole is no longer included into the cross-section, its name will not be displayed here (but the object could be projected onto the line of section). Nodal points which are not needed can be deleted from the list and the site plan with the **Remove nodal point** button.

With the button **Remove line of section**, the entire line of section can be deleted.

The line of section can be saved to a file with the **Save line of section** function. The coordinates of each nodal point are saved in the LIN format in an ASCII file:

1\
4444440.00000 5555200.00000\
4444418.67902 5555150.35802\
4444450.00000 5555100.00000\
4444410.00000 5555050.00000\
END\
END

It is possible to load the nodal points from an existing line of section with the **Load line of section** function, if the nodal points are stored in LIN format. This way lines of section from other programs can be imported.

Changing between the different parts of the cross-section (objects, line of section, scales, and cross-section scenarios) is possible by directly clicking on the branch in the object properties window, or by using the buttons in the upper right of the window. <!-- src: help/05/7398 -->

### Cross-section scenarios

Detailled scenarios can be created, loaded and saved.

A scene contains a graphic element, which is to be used to display information for all selected boreholes. So for example a scene could be the borehole log, another could be the variable text element with the borehole name. All depth related graphic elements like borehole logs, data sequences (for cone penetration tests, geophysical logging data or sample data), well design and groundwater levels can be used in a scene.

The following elements are available for scenes:

1.  Distance ruler

2.  Well design

3.  Report

4.  Borehole profile

5.  Ground surface

6.  Groundwater

7.  Depth scale

8.  Legend for borehole profiles

9.  Measurement graphic

10. Samples

11. Special features

12. Data sequences

13. Symbols

14. Variabler Text

The *legend* scene creates legend items for borehole profiles, special symbols, samples and groundwater elements.

As default the scenes borehole log, borehole name (variable text) and two scale bars are selected. Additionally elements can be added, removed or modified.

Use the button  to add more scenes and select the type of graphic element.

The sequence of the series defines the drawing order. The scene on top will be drawn first, the one on the bottom will be drawn last. In cases of an overlap in can be important, which element is drawn above the other. Change the order by using the arrow bars.

Cross-section scenes can be loaded and saved independent from boreholes as files and be re-used for different cross-sections. To create another cross-section with different boreholes you only have to load the scenario file. All predefined scenes are availble for the new cross-section and can be adjusted as required. You can create several of scenario files for different themes of cross-sections.

To save a scenario click **Save** The scenario will be saved in the selected folder with the file format \*.gsz.

With the button **Load** you can load a saved scenario to use it on another cross-section. <!-- src: help/05/7404 -->

### Cross section scene

For each scene a name can be chosen and the defined wether it schould be displayed in the graphic or not.

**Scene sizeElement width**

For the scene elements the display width can be defined. If the option \'automatic\' is chosen the cross-section modul calculates reasonable widths as default. If a data sequence like a penetration test should be displayed in a certain width it can be entered here. Widths from 1 to 100 mm are possible.

**Element height**

This option can only be selected for measurement graphics. Here, the desired height for the scene in the graphic can be selected.

**Relative scenario position**

Here the positions of the elements to display relative to the anchor point of the object can be modified for all elements in horizontal direction. The element \<Variable Text\> can also be moved in vertical direction.

The anchor point is shown on the following graphic:


The anchor point X:0, Y:0 is the calculated position (according to the coordinates and the elevation) of the object in the cross-section. The scene \'Borehole log\' is drawn exactly on the anchor point. The scenes \'Scale bar\' and \'Groundwater\' can only be moved vertical, since they have to be adjusted to the borehole log. The drawing point of the scale bar is 20 mm left of the borehole log (related to the anchor point), the relative scenario position is therefore X:-20, Y:0. The drawing point of the groundwater symbol is 10 mm right of the borehole. The relative scenario position is X:10, Y:0.

For variable text elements the alignment (section alignment in the properties of the text element), whether the text should be displayed above or below the borehole log. With the allignment \'Top\' the text element \'Borehole name\', will be added above the borhole (relative scenario position X:0,Y:-5). The scene \'Enddepth\' is added below the borehole log (relative scenario position X:-5,Y:5) since the option bottom was chosen.

**Using scenes**

Select here, if the scene should be applied on selected objects (default all objects) of the cross-section or only the first object from the left and the right. The last option is designed especially for scale bars, which usually should only appear on the outside of the cross-section. The individual settings can be done under [Objects to display](creating-cross-sections.md). <!-- src: help/05/7406 -->

### Distance ruler

With the help of the cross-section scenario \'Distance ruler\' additional labelling can be added to the objects shown in the section, for example the distance between objects. These are arranged in a horizontal line and usually shown beneath the cross-section. The ruler is composed of a configurable rectangle with the required [Labeling](creating-cross-sections.md).

The ruler starts at the position of the first cross-section object and ends at the last object on the right. The relative position of the start and end points can be defined using the two \'Position\' entry fields. <!-- src: help/05/10724 -->

### Horizontal scale

The scenario \'Horizontal scale\' creates a horizontal scale bar in a cross-section:


By defining the \'minimum width\' you can set the horizontal extent for the scale bar. Depending on the coordinate range for the cross-section, a horizontal scale bar will be created with rounded divisions, hence the minimum width settings may have a limited affect.

The postioning options allow you to place the horizontal scale bar to your requirements. <!-- src: help/05/10728 -->
