---
description: Groundwater Visualizations
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Groundwater Visualizations

### Groundwater

Using the graphic element *Groundwater* groundwater levels can be shown in the graph, as far as appropriate coded information have been entered in the layer description or in the groundwater table.

See also **Data source**

The corresponding triangle symbols and depths are used and - if necessary - further information added. If increased or decreased groundwater levels have been entered, this is shown in the graph using the appropriate direction arrows.

**The element name**

The element name is used mainly to identify the graphic elements of a GeoDin graph better in the tree view of graphic elements. By using significant names for graphic elements a complex graph can be designed very clear. For some graphic elements a related element can be entered. Here also the element name is used.

[Drawing layer](layouts/layout-editor-basics.md)

Display of the drawing layer, on which the graphic element is placed. Using the icon **In another layer** the graphic element can be moved in anther drawing layer. You find further information on drawing layers in the chapter [Drawing layer](layouts/layout-editor-basics.md).

**Arrangement in the fore- or background**\
\
Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/28 -->

### Data source

If the current object has more than one layer table, the chosen layer table, which contains groundwater information, can be selected. In the setting \"Automatic\" the first available layer table of a borehole is used.

For object types, in which the groundwater level information is recorded in separate tables (e.g. SEP3) a selection here has no influence, because the information is always read from this special table.

**Examples for coding of groundwater level information:SEP compatible boreholes (standard location SEP-compatible etc.)**

The coding of the groundwater levels id done in the data field additional information in the layer data collection mask. The codes can be:

gw - Groundwater level

gws - Groundwater level increased

gwf - Groundwater level decreased

gwr - Groundwater level stationary

gwa - Groundwater artesian

Following the code at least the measured depth has to be entered in round brackets.

**Example:** gw(3.90)

Optionally any additional text, like for example date information, can be added in the round brackets.

Here the semicolon is used as separator.

**Example:** gw(3.90; 01.08.2005)

Groundwater levels above the surface level (artesian) are marked with the symbol \<**+**\> (plus) in front of the depth information.

**Example:** gwa(+0.8)

In the dictionary settings the features of the groundwater triangles for the given codes are defined. These settings can be changed in the dictionary.

**SEP 3 boreholes**

For boreholes in the SEP 3 format the groundwater level information is not entered in the borehole table, but in a separate collection mask \'groundwater\'.

Here artesian groundwater levels are entered by putting a \<**-**\> (minus) symbol in front, which means a negative value. The negative value describes a state above the surface level, positive values describe states below the surface level. <!-- src: help/05/34 -->

### Graphic properties

Select here if the Tag lines for the measured depths should be drawn. Otherwise only the groundwater symbols are displayed (and labeled). Using the option -Scale width to fit- the width of the graphic element is automatically adjusted to the labeling width.

With the option -Tag lines right- you can define the starting side of the tag lines. By default this is the right side. By deselecting it can be switched to the left side, which will ignore any NORM-settings.

**Presentation modus**

This option defines which language (standard) is used for presentation and hence what symbols are displayed. the standard setting is \"automatic\".

**Show in legend**

Define whether the groundwater symbols are to be shown in the automatic legend for the same object frame.

**Symbol**

*\[draw symbol\]*

Defines whether symbols are to be shown.

*\[Colour from dictionary\]*

Allows a different colour from the standard colour to be used. The colour setting is defined using the **fill pattern** button in the relevat dictionary.

**Tags**

*\[Draw tags\]*

Defines whether tags are drawn at measured depths in addition to the groundwater symbols (and labels).

*\[Colour from dictionary\]*

Allows a different colour from the standard colour to be used. The colour setting is defined using the **fill pattern** button in the relevat dictionary.

*\[Tags right\]*

Defines on which side of the element a tag is drawn from. The standard setting if from the right - if it is deactivated then frim the left.

**Labelling**

*\[Colour from dictionary\]*

Allows a different colour from the standard colour to be used. The colour setting is defined using the **fill pattern** button in the relevat dictionary.

*\[fit width\]*

the graphic element width is automatically adjusted to the labelling width. <!-- src: help/05/36 -->

### Groundwater symbols

Select here the line type for the presentation of groundwater symbols.

A line or outline is displayed in the chosen Color and Line type. To select a color, which is not available in the drop down menu, click in the list on the first entry **\"Individually\"**. In the color dialogue you can adjust a new color.

The line thickness can be chosen in mm or pixels. The selection should be done in mm by preference. In this case the thickness of the lines in the preview is not equal to the print output and not depending on the used print resolution. The selection of a line thickness in pixels is only suitable for graphs, which are only viewed on the screen. <!-- src: help/05/37 -->

### Consistency

Selection of the view of consistency, compactness and groundwater on the right side of the borehole.

*\[draw\]*

Deacivate this option if you don\'t want consistency, compactness and groundwater to be drawn.

*\[Show in legend\]*

Define whether the symbols for consistency, compactness and groundwater are to be shown in the automatic legend.

**Line type:**

Define how the lines are drawn - a detailed description can be found [Line type](../configuration/fill-patterns-and-symbols.md). <!-- src: help/05/3172 -->

### Show filters

If an existing well design is added to a groundwater measurement place, this option can be used to add the presentation of the filter length in the borehole cross-section. <!-- src: help/05/3277 -->
