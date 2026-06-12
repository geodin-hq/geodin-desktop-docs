
# Cross Section Layouts

### Axis range

In the section Interval the option -User defined- can be selected. If choosing the option -Automatic- the actual measurement values are used to define the lower and upper limit of the axis (minimum and maximum value). By choosing the option -Round\*\*-\*\* the main division ticks are rounded at the minimum and the maximum of the displayed interval to an even number. By entering a percent value you can decide of how many percent the displayed interval is exceeded, so that the minimum and maximum value do not match with the diagram margins.

For the presentation of the values also the options Logarithmic and/or Mirror axis are available.

The selection of the Main divisions can be done by entering the parting unit or the entry of a number of main divisions. If choosing the view area -Automatic-, the selection -Number of main divisions- is often more sensible, than the setting of a division unit. Not depending on the overall area of the view (for example 0 - 5 or 0 - 50000) a sensibly displayable number of main divisions is created.

Also the number of Help ticks and the number of decimal points can be selected. The option -Cut surplus decimals- cuts surplus zeros in the labelling. This setting is especially useful, if logarithmic axis are displayed, to get to a labelling like: 0,001 - 0,01 - 0,1 - 1 - 10 - 100 - 1000 etc..

### Presentation options

If you choose the presentation type bar or curve for the series of a data sequence graph, you have the option to interrupt the bar or curve, if it is known, that sections exist, in which samples were not taken continuously, and the bar or curve leads to the impression that measured values are available. Here giving the length of the section, from which the section is not examined, is necessary.

The chosen setting is valid for all series of the diagram and does therefore not have to be selected for each individual series. Besides this general setting you have also the possibility to select this option separately for each series.

For this see also:

[bar / curve](../layouts/measurement-value-graphics.md)
### Layout list

A layout list is a collection of individual layouts (\*.GLO) in a single file (\*.GLL = GeoDin-LayoutList) or in a file that summarises and stores references to the individual layouts (\*.GLC = GeoDin-LayoutCollection).

\*.GLC files have the advantage that when a layout is changed, the changed layout is automatically used. In a \*.GLL file, on the other hand, the layout must also be exchanged or adapted there.

_**Note:**_ _\*.GLL files can no longer be created, only existing ones can be opened. Use \*.GLC files for creating a layout list in the future._

A layout list has advanced features compared to a single layout:

Layout lists/layout collections are also used in the [Create and edit graphic](../layouts/layout-editor-basics.md) method to get quickly to a specific layout.

Editing a layout list file takes place in the GeoDin graphics window (see also [Create and edit graphic](../layouts/layout-editor-basics.md)). Here the opening of a layout list file takes place either via the function **Open file** or - if the standard layout list is to be opened -- more quickly via the button **Standard layout list**.

_**Note:**_ _This is only possible with a \*.GLL file, as only a \*.GLL file can be declared as the standard layout list._

### Scales

These layout interfaces contain setting options for horizontal and vertical scales and are usable for layouts, which contain the following graphic elements:

[Borehole log](../borehole-logs/creating-borehole-logs.md)

[Well design](../../navigating-the-geodin-workspace/objects/well-design-data.md)

[Data sequence](../../data-collection/import/data-sequences.md)

[Samples](../../navigating-the-geodin-workspace/objects/sample-data.md)

Here, the desired horizontal and vertical scales of the cross-section can be defined.

If the option -Automatic page layout- is active, a suitable paper size is selected automatically. This way, the manual adaption of the page size in the \<Page layout> branch of the graphic properties is not necessary.

The position of the cross-section, measured from the upper left corner, can be set in the fields "Position X:" and "Position Y:". The position is also taken into account to calculate the necessary paper size.

It is possible to select different vertical scales for the ground elevation and for the borehole profiles. This is especially helpful in cases were the differences in elevation are large relative to the borehole depth. Otherwise, a reasonable scale for the start elevation would lead to a too small print of the borehole profiles.

The scales used in the cross-section can be written automatically in existing text elements. If a layout contains text elements with the content

$%SectionHorizontalScale$ (Horizontal scale of the cross-section)

$%SectionVerticalScale$ (Vertical scale of the cross-section)

the text will be replaced with the corresponding value for the scale. This way, any scale specifications in prepared layouts can be done automatically and do not need to be changed manually.
### Labeling

The Layout interfaces option offers input possibilities for text elements and is usable for layouts, which contain the graphic elements [Text](../layouts/text-macros-and-variable-text.md) and [Variable text](../layouts/text-macros-and-variable-text.md).

### Cross-section

The tool for the creation of profile cross-sections automatically places geologic objects in the graphics at a pre-defined scale. The line of section can be defined using the mouse. In a cross-section, different scenarios can be created for the presentation and combination of borehole logs, well design plans etc.

Creating a profile cross-section consists of several steps:

1. Selection of boreholes for the presentation in the site plan
2. Defining the line of section
3. Selection of an appropriate horizontal and vertical scale and the correct position on the paper
4. adapting the presentation parameters for borehole logs, well design, cone penetration tests etc.

The construction of a cross-section can be started by different methods:

1\) Start at a query or group of objects

By double-clicking on the method icon  ![Cross-section](../../.gitbook/assets/icons/cross-section.png) **Cross-section**:

the graphic window is opened, the cross-section is started and all objects of the query are loaded into the site plan view of the cross-section.

2\) Start at the menu _**Extras**\\**Cross-Section**_ in the graphic window

This will start the cross-section without objects bein added automatically. Objects can be added manually to the site plan or list of objects by drag & drop into the window \<Cross-section Objects>.

\
3\) Navigate the to the branch "Cross-section" in the properties of the current graphic.

There, the desired cross-section can be selected. By clicking the **Start** button, the property branches to create and modify cross-sections are made available.

**Graphic elements of a cross-section**

The graphic elements of the profile cross-section are stored in special drawing layers. Editing these graphic elements is possible only by changing the properties in the cross-section. It is not possible to select the elements with the mouse. To manipulate the elements individually, the cross-section elements must be written into standard graphic layers with the function **"Break up cross-section"**. Each object is written into a special layer. These layers are shown in the layer list with a cross-section symbol, they can not be edited, but it is possible to select whether a layer is displayed or not.

All setting made in the cross-section, like defining the line of section, changing the scale or the display properties of an scenario is visible immediately. The changes in the display properties are automatically made for all suitable objects.

**Start and Close**

To start or resume work on a cross-section (and thus the contained graphics elements), the switch **Start** is used. The branches for selecting objects, defining the line of section, setting the scales and for changing the cross-section scenarios are displayed. The \<Close> switch ends editing the cross-section and the branches with the settings are hidden.

**Refresh cross-section**

With this button, the objects in the cross-section are read again from the database and the cross-section is refreshed. This option can be used to transfer changes made to the data in the database to the cross-section.

**Options**

Define here in which way the objects in the cross-section are stored in the cross-section graphic.

1. Save object data in the cross section graphic

Use this option to save the borehole data / object data in the graphic file. Changes in the data for these boreholes will have no effect on the displayed graphic when opening the file again (static cross section).

The cross section can be modified later, a connection to the database in which the object data is stored is not necessary. To edit this graphic at another PC, a connection to the GeoDin database is not necessary. (This option is not available if the cross section contains elements which require a database connection, for example measurement values in a data sequence)

1. Save object link in the cross section graphic

Use this option to save only a link to the borehole data / object data in the graphic file. Changes in the data for these boreholes will be effective when opening the graphic file again (dynamic cross section).

To edit the cross section graphic, a connection to the current database is necessary. Without this database, the graphic can not be displayed. If possible, save the file in the documents branch of the current database. This way it is assured that database access to borehole data / object data is available when opening the cross section graphic. For editing at another computer, exchange the database (with the included cross section graphic).

**Break up cross-section**

If it is necessary to edit the individual graphic elements of a cross-section, the cross-section can be dissolved with the **Break up cross-section** switch. Then, the graphic elements and layers are unlocked and the individual elements can be selected and edited normally.

_**Attention:**_ _The link to the cross-section is lost and can not be restored if the cross-section is dissolved. It is then no longer possible to edit the display general properties for the element, or set the scales of the cross-section. The objects loaded and the line of section are removed from the current cross-section._

**Drawing order**

The entire cross-section can be moved as a whole to the fore- or background relative to the other objects.

With the buttons **Visible** and **Invisible**, the drawing layers of the current cross section are made invisible with a single click. This can be used to remove the cross-section temporarily from the graphic.
### Horizontal scale

The scenario 'Horizontal scale' creates a horizontal scale bar in a cross-section:

By defining the 'minimum width' you can set the horizontal extent for the scale bar. Depending on the coordinate range for the cross-section, a horizontal scale bar will be created with rounded divisions, hence the minimum width settings may have a limited affect.

The postioning options allow you to place the horizontal scale bar to your requirements.

Shared reference content for this area lives in [Creating Cross Sections](creating-cross-sections.md).
