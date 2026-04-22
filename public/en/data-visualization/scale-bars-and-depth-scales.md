---
description: Scale Bars and Depth Scales
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Scale Bars and Depth Scales

### Depth scale

This graphic element is used to display a separate *height scale*. It can be added to a object frame as often as required. Its features depend on the existence of at least one graphic element *Borehole log/Borehole tab* and/or one graphic element *Well design* and/or one graphic element *Data sequence* in the particular object frame.

The length of the graphic element is applied to the length of the object frame. The element can only be moved horizontally. All changes are done according to the vertical position and size of the main elements (borehole log, well design and data sequence).

The graphic element is shown by blue dashes, if there is no linked or embedded object in the object frame.

**The element name**

The element name is used mainly to identify the graphic elements of a GeoDin graph better in the tree view of graphic elements. By using significant names for graphic elements a complex graph can be designed very clear. For some graphic elements a related element can be entered. Here also the element name is used.

[Drawing layer](layouts/layout-editor-basics.md)

Display of the drawing layer, on which the graphic element is placed. Using the icon **In another layer** the graphic element can be moved in anther drawing layer. You find further information on drawing layers in the chapter [Drawing layer](layouts/layout-editor-basics.md).

**Arrangement in the fore- or background**\
\
Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/39 -->

### Scale

Here you can select the vertical scale.

The base unit of the paper is cm. You can also switch to m, in or ft.

If you wish to display objects in a system of units other than the one that they were recorded in, you can use the **Factor for depths** option to convert accordingly. The actual depths will be multiplied by the factor entered: for example metres to feet uses the factor 3.28084.

If you wish to display such an object in an inch per feet scale you can change the base paper unit to in and the factor to 3.28084.

If your object data is in feet already you just need to change the base paper unit to \"in\" and keep the factor at 1.

Per default a a layer or a sample interval etc. is not distributed on several pages, but the page break is placed at a layer or sample interval boundary. If a section in the selected vertical scale is greater than one page, the element is not shown (red dashed frame).

If you wish to present information, whereby a section (i.e. a layer or a sample) should not be split over several pages, use the option -Auto correct- to automatically correct the height scale.

Conversely the option for -New page- can be chosen, to allow the distribution of a unit on several pages (see below).

Using the option -Fit to page- the vertical scale is automatically calculated so that the object can be shown on one page. For very deep objects this may not be advisible, because not all the labeling text can be displayed on one page.

Besides the chosen scale the selection of a data field variable in the input field *\"Read from\"* is also possible. This works just like a variable text element, where the relation to a database field is defined by a variable in \$ symbols. Example: If the scale should be read from the basic data set "comment", \$comment\$ has to be entered in the input field. The option *\"Read from\"* allows you to store an \"ideal presentation scale\" in the data of a object, independent of the selected layout.

**Interval**

If the element (borehole log, data sequence etc.) should not be completely shown , it is possible to select part of the section using the option -Interval-. The input must be in m below surface. With activated option -Automatic- the whole object is shown.

\
Using the option -New page - User defined- a depth can be set, at which the page break should be performed. This is carried out at exactly at the selected depth, independent of the existence of a layer boundary, a sample interval boundary etc. This function should only be used with sensible scales (the preset area of for example 5m has to fit on the page) and with appropriate graphic element heights. If the graphic element does not have the required height, the drawing is still completed, but it the correct screen area may not always be refreshed.

With the option -New page - Automatically optimize- GeoDin recalculates a page break depth. Here GeoDin checks whether a layer or interval boundary is located in the possible page break area (ca. the last 10% presented on a page). If this is the case, the boundary is used as the separation; otherwise the layer or sample interval is divided between two pages. Is this option activated, an object is can be shown in any vertical scale.

With the option -Dynamic ground level- the automatic positioning of the ground level can be activated for a layout. The ground level is moved dynamically and the element always begins at the upper edge of the graphics element. If this option is inactive, the ground level always stays at the same vertical position, which for objects with large elements above ground level, may lead to graphic elements being hidden or even extending over the page margin.

**Angle**

The Angle of incline of a object can be entered while labeling an element with depth values and optionaly used for the graphic presentation of an element. First the data field for the amount of incline has to be defined. Using the options **0° = vertical** and **0° = horizontal** you can select, how the value of the inclination is interpreted:

0° = vertical

The value 0 or an empty data field represents a vertical borehole, the value 89 stands for a (nearly) horizontal borehole, the value 90 is ignored.

0° = horizontal

The value 90 or an empty data field represents a vertical borehole, the value 1 stands for a (nearly) horizontal borehole, the value 0 is ignored.

To label recalculated depths choose the option -Display adjusted inclination- (for example in the graphic element [Text](layouts/text-macros-and-variable-text.md)). Choosing the option -Display adjusted inclination- the graphic element is shown at a compressed scale related to the angle. This is important especially to correlate layers correctly for the presentation of a cross-section. If the option \<**Automatic**\> is activated, the labeling is always done with recalculated depth values. If only the labeling of the graphic element should be presented with recalculated depth values, whilst the graphic presentation uses the recommended scale, do not activate the option \<**Display adjusted inclination**\>. <!-- src: help/05/1160 -->

### Depth tag

Select here the line type for the depth tag line.

A line or outline is displayed in the chosen Color and Line type. To select a color, which is not available in the drop down menu, click in the list on the first entry **\"Individually\"**. In the color dialogue you can adjust a new color.

The line thickness can be chosen in mm or pixels. The selection should be done in mm by preference. In this case the thickness of the lines in the preview is not equal to the print output and not depending on the used print resolution. The selection of a line thickness in pixels is only suitable for graphs, which are only viewed on the screen. <!-- src: help/05/1269 -->

### Horizontal scale

Here the preferred **Horizontal scale** can be selected. Entered diameters of borehole and casing elements are drawn with accurate scale.

The option -Constant width- causes an automatic setting of the displayed (maximum) borehole diameter of the well design according to a fix value.

The option -Centre display- ensures that the well design always remains centered irrespective of the dta or horizontal scale.

Otherwise the standard settings for when the width of well design is changed result in:

1\) the left border is fixed and the well design is enlarged to the right when a new object is linked to the layout,

2)´the mid-axis is fixed and the well design is enlarged both to the left and right when a change is made to the horizontal scale , the constant width or the percentage width.

A **not scaled presentation of the borehole** is possible by entering \<\>0% in the particular entry field. The borehole is displayed smaller or larger according to the horizontal scale. All casing elements are still drawn in the selected scale. This option can be used to display fill patterns or staggered piezometers better.

If the maximum diameter of all casing/piezometer series, multiplied with the number of casing/piezometer series is larger than the diameter of the borehole, the following situation occurs:

Reality: Diameter of the borehole = D

Maximum diameter of the casing/piezometers series = MaxR


Presentation:

The presentation is not possible because MaxR\*4 \> D


The individual casing/piezometer series have to be displayed side by side, despite they are constructed staggered in reality. The relative borehole widening can solve the problem. <!-- src: help/05/1335 -->

### Depth axis

In this branch no properties can be selected. Choose a subordinate branch, to edit detail properties. <!-- src: help/05/1398 -->

### Move and scale

Selected graphic elements can be moved to a new **Position by dragging the element (or elements) with the left mouse button pressed. During such an operation the position on the paper is shown in the status bar.

To Scale **an element, select the element and drag one corner marker in the chosen direction. The size of the element is also shown in the status bar.

\
When scaling group or object frames, there are some special features:

• If a group frame is scaled using the corner marker, the group elements keep their size, which means they are not scaled.

• If a group frame is reduced so much, that the group elements would not fit into the new group frame, the group elements are reduced automatically.

• If a scaling of the group elements together with the group frame is required (no matter if it is extended or reduced), the crtl key must be pressed during the movement.

\
Rectangles and ellipses can be scaled to quadrants and circles, if you press the **crtl** key while scaling (and adding). With the same method you can draw exact vertical or horizontal lines.

You can enter an exact positioning or scaling (input of the coordinates with keys) in the branch \'Position\' in the object properties.

Moving one or more selected graphic elements is also possible directly with the keyboard using the shortcut:

**Ctrl + arrow key** Displacement 0,1 mm

**Shift + arrow key** Displacement 1 mm <!-- src: help/05/2415 -->

### Scales

These layout interfaces contain setting options for horizontal and vertical scales and are usable for layouts, which contain the following graphic elements:

[Borehole log](borehole-logs/creating-borehole-logs.md)

[Well design](../navigating-the-geodin-workspace/objects/well-design-data.md)

[Data sequence](../data-collection/import/data-sequences.md)

[Samples](../navigating-the-geodin-workspace/objects/sample-data.md) <!-- src: help/05/3651 -->

### Vertical scale

**Use of the layout quick settings**

Enter the vertical scale to be used in the presentation.

**Requirements in the layout**

The layout to be used has to contain at least one of the following graphic elements:

1.  Borehole log/Borehole Tab

2.  Well design

3.  Data sequence

4.  Sample element

**Results in the layout**

The layout quick settings are used on the following graphic elements:

1.  Borehole log/Borehole Tab

2.  Well design

3.  Data sequence

4.  Sample element <!-- src: help/05/3653 -->

### Axis scale time axis

**Using layout interfaces**

With this option the time axis scale can be adjusted

**Requirements in the layout**

The used layout has to contain at least one measurement value graphic. The diagram type [Time series](time-series-charts.md) has to be selected.

**Results in the layout**

The time axis scale of all time series in the layout will be affected. <!-- src: help/05/8992 -->

### Axis scale X-Axis

**Using layout interfaces**

With this option the the X-Axis scale of a XY-diagram can be adjusted.

**Requirements in the layout**

The used layout has to contain at least one measurement value graphic. The diagram type [XY-diagram](layouts/x-y-diagrams.md) has to be selected.

**Results in the layout**

All XY-diagrams in the layout apply the selected X-Axis scale. <!-- src: help/05/9006 -->

### Axis scale Y-Axis

**Using layout interfaces**

With this option the the Y-Axis scale of a XY-diagram can be adjusted.

**Requirements in the layout**

The used layout has to contain at least one measurement value graphic. The diagram type [XY-diagram](layouts/x-y-diagrams.md) has to be selected.

**Results in the layout**

All XY-diagrams in the layout apply the selected Y-Axis scale. <!-- src: help/05/9007 -->
