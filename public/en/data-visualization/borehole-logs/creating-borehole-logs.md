---
description: Creating Borehole Logs
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Creating Borehole Logs

### Report type

**Original data report**

Using this option you configure reports, which show the original data of the objects in summary. This can for example be a tabular presentation of a borehole tab, an overview of all samples of a borehole or tables of measurement values of the groundwater chemistry. Nearly all existing data in a GeoDin database can be documented in any combination.

**Report Calculation**

Using this option you create reports, which process measurement value data further before being used in a report or calculate statistic parameters. The type of report is not always displaying the original values of the database. You can select the report types:

**List comparison**

**Statistic**

**Annual statistics**

**Laboratory control report**

[Plausibility report](../../data-analysis/calculation-engine/data-checks-and-validations.md)

For grain size analyses:

[Particle size parameter](../display-particle-size-distribution-psd-as-a-bar-chart.md)

[Sieve analysis](../display-particle-size-distribution-psd-as-a-bar-chart.md)

[Hydrometer analysis](../display-particle-size-distribution-psd-as-a-bar-chart.md)

**Plug-in reports**

This type of report requires the installation of plug-ins (external modules) of a third party. These plug-ins overtake the configuration and calculation of the report. If no plug-ins are installed, no reports of this type can be created and the selection of this report type is not sensible. Otherwise choose the recommended report type of the plug-in. Because the plug-in is completely responsible for the calculation of the report, no further settings can be made in GeoDin (all smaller branches of the presentation settings are faded out). <!-- src: help/05/755 -->

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

### Text

Selection of the labeling with depth values (optionally also absolute heights related to the ground level) and information concerning the borehole, fill and special features (element information). The Angle of inclination of the location can optionally be taken into consideration for the labeling. Here the depth values are recalculated according to the angle of inclination. The data field, which contains the angle of inclination, has to be selected in the branch [Scale](../scale-bars-and-depth-scales.md).

**Translation**

Select the language for text labeling. The selection of another language than the input language requires multi lingual maintained dictionaries. The presentation of fill patterns is not influenced by the selection.

**Fonts**

The chosen Font can be selected in the drop down menu. Also size and other features are selectable. The preview shows the current settings. <!-- src: help/05/1341 -->

### Borehole

Select if the chosen well design elements should be labeled and which labeling instruction should be used for this.

With activated option -Standard- the elements are labeled with a predefined standard text. If you choose the option -User-, the labeling instruction can be entered in the text field or be constructed using the icon **Build**.

The construction of labeling instructions is described in detail in the chapter [Text macro](../../reporting/text-macros-in-reports.md).

Text tags to the element can optionally be selected automatically to the element border or centered. <!-- src: help/05/1345 -->

### Complex graphic elements

The second toolbar contains complex graphic elements. Here you find tools for borehole logs, well design, data sequences etc.

Detailed descriptions of the particular graphic elements are available in the subordinated chapters:

General information on adding and editing of graphic elements can be found in chapter:

[Edit graphic](../layouts/layout-editor-basics.md)

The object frame is a base for geological/geotechnical graphic drawing elements, wherbey there is a difference between a object frame and a (multi) object frame. Before adding complex graphic elements one of these frames has to be drawn and selected.

The method to create graphs with complex graphic elements can be structured in the following steps.

**1. Drawing the object frame**

\
Using the tool a object frame is drawn. The frame should be large enough to hold all the graphic elements. The selected frame is represented by 4 grey squares and 4 grey side lines. If not selected the frame is represented by 4 grey angles. The selection of the object frame as an active graphic element is done with the mouse in the boundary area of the frame or with the **Ctrl** key pressed at any place inside the frame.


**2. Adding an element inside of the object frame**

To draw a geological graphic element inside the object frame, you select the object frame and then the chosen tool from the symbol bar. The graphic element can only be drawn, placed and scaled inside the object frame. After insertion the graphic elements are shown as blue dashed markings and show the space that will be needed for presentation of the borehole data. Editing the geological graphic elements is equal to the editing of the elementary graphic elements.

**3. Defining the featured object or objects at**

**Data source**

or

**Data source** <!-- src: help/05/1378 -->

### Grid

Using the option -Show grid to end depth- the background grid can be drawn until the end depth of the borehole, even when the measurement values do not reach this depth. The option is only active, if a borehole log element is included in the object frame, which is drawn until the end depth. Also the height of the graphic element data sequence must be large enough for the presentation until the end depth.

If showing the data sequence in a grid, you can choose the option -Draw in foreground-, for the grid to be displayed in the presentation. Otherwise it is drawn behind the borehole log, curve or data sequence element and therefore partially hidden by filled borehole logs and curves.

The option -Draw grid without data- is only active, if the layout contains minimum one displayable element (for example a borehole log or another data sequence graphic). If the current object contains no data concerning the selected measurement series, the grid of the data sequence element is drawn, otherwise the space in the layout remains empty. <!-- src: help/05/1630 -->

### Variable text

The graphic element can be inserted into one object frame any often. It includes the presentation of any text combined with data contents from the title data of the borehole. A text can consist of free entries combined with variable names, included in string symbols.

**The element name**

The element name is used mainly to identify the graphic elements of a GeoDin graph better in the tree view of graphic elements. By using significant names for graphic elements a complex graph can be designed very clear. For some graphic elements a related element can be entered. Here also the element name is used.

[Drawing layer](../layouts/layout-editor-basics.md)

Display of the drawing layer, on which the graphic element is placed. Using the icon **In another layer** the graphic element can be moved in anther drawing layer. You find further information on drawing layers in the chapter [Drawing layer](../layouts/layout-editor-basics.md).

**Arrangement in the fore- or background**\
\
Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/2260 -->

### Borehole log

With the graphic element *Borehole log/Borehole tab* the borehole log can be realized with fill patterns, including the labeling with depth values and layer description, and presentation of the consistency or optionally a presentation of the layer description in scaled tabular form.

The borehole log or the table is distributed automatically on several pages, if the chosen height scale requires it and scaling on one page is not selected. In this case the two page icons in the upper symbol bar are available to switch from the previous page to the next.

The element *Borehole log/Borehole tab* can be moved and scaled inside the object frame. All other graphic elements are vertically brought into line automatically to the new position.

It is also possible to insert the graphic element *Borehole log/Borehole tab* several times into one object frame. This causes for example the possibility to display a object graphically as borehole log and tabular with the according layer description.

**The element name**

The element name is used mainly to identify the graphic elements of a GeoDin graph better in the tree view of graphic elements. By using significant names for graphic elements a complex graph can be designed very clear. For some graphic elements a related element can be entered. Here also the element name is used.

[Drawing layer](../layouts/layout-editor-basics.md)

Display of the drawing layer, on which the graphic element is placed. Using the icon **In another layer** the graphic element can be moved in anther drawing layer. You find further information on drawing layers in the chapter [Drawing layer](../layouts/layout-editor-basics.md).

**Arrangement in the fore- or background**\
\
Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/2454 -->

### graphically

Select if the borehole log should be drawn (otherwise only labels are displayed).

The data presentation allows the presentation of borehole data in different country norms. For this [Standards](../../configuration/ground-description-standards.md) and fill patterns are necessary. Once entered borehole logs can this way be put out in the original language with the customary fill pattern, as well as in any foreign language with completely different fill patterns. In the mode \"Automatic\" the language and corresponding presentation norm of the data entry are used.

Optionally the width of the profile can be selected -Automatic- or directly -Default-. <!-- src: help/05/3043 -->

### Main layers

In most cases the presentation of a borehole log is based on the main layers. Some object types support the data entry, as well as the presentation of **Components**.

Optionally the main layers can be drawn colored or black and white, transparent or opaque. For the printout the line thickness of the fill patterns can be selected. <!-- src: help/05/3049 -->

### Show symbols

Selection, if components are displayed by symbols. Additionally the size and position of the symbol can be chosen regarding the centre of the borehole. <!-- src: help/05/3128 -->

### Show areas

Selection, whether components should be displayed as areas. Additional selection of the position of the area according to the center of the borehole. <!-- src: help/05/3129 -->

### Layer query

If you choose the option -Layer query- as presentation form, the borehole log is not filled with the fill patterns of the petrographic description from the original layer data, but with the fill patterns of the filled layer order. The calculation is done directly before the presentation of the profile, so that a correction of the layer features in the layer data editor leads to an immediate change in the borehole log presentation.

The presentation can either be based on a [Layer query file](../../data-analysis/queries/complex-layer-queries.md) or the input of a [Individual conditions](../../data-analysis/queries/conditions-and-operators.md). <!-- src: help/05/3142 -->

### Individual conditions

The presentation of the result of a layer query basing on a single query is possible without a layer query file. In this case a borehole log is completely filled with a fill pattern, because only one query is put to a layer. All layers, which do not comply with the query remain empty in the profile.

Select the data field and enter the code to be searched. Choose a fill pattern at the branch [Fill](../../configuration/fill-patterns-and-symbols.md). The layers in the borehole log, which comply with the single query, are displayed with this fill pattern. <!-- src: help/05/3145 -->

### Consistency

Selection of the view of consistency, compactness and groundwater on the right side of the borehole.

*\[draw\]*

Deacivate this option if you don\'t want consistency, compactness and groundwater to be drawn.

*\[Show in legend\]*

Define whether the symbols for consistency, compactness and groundwater are to be shown in the automatic legend.

**Line type:**

Define how the lines are drawn - a detailed description can be found [Line type](../../configuration/fill-patterns-and-symbols.md). <!-- src: help/05/3172 -->

### Show as line

The borehole can be displayed as a vertical line, if the option -Draw line- is activated. With activated centerline the nodal point between centerline and layer boundary is a snap point for the construction of layers in cross-sections.

\
If the borehole is displayed completely (no section entry) at the end depth of the borehole a horizontal line is drawn, which thickness depends on the adjustment of the borehole width. If the borehole is only shown in a section, which is not reaching the end depth, the horizontal line is not drawn. <!-- src: help/05/3275 -->

### Show filters

If an existing well design is added to a groundwater measurement place, this option can be used to add the presentation of the filter length in the borehole cross-section. <!-- src: help/05/3277 -->

### Text macro

For the layer description you can choose between -text-, -norm-, -coding- and -user- defined.

**-Text-**

The borehole is shown with a pre-defined selection of data fields with a text translation of the dictionary codes.

**-Norm-**

This option uses standard macro definitions for the layer descriptions, depending upon in which standard the geological information has been collected (e.g. DIN 4023, BS5930). The codes used are stored in the Standard field in the relevant dictionary - if no codes are present then the dictionary entries in the main window will be used.

**-Coding-**

The codes stored in the database are used for labelling.

**-User-**

The user-definable option can be customized via the **Build** \>. Detailed descriptions are given in the chapter [Text macro](../../reporting/text-macros-in-reports.md).

*[\[Reverse slash\]]{.underline}*

This option allows the reverse slash to be interpreted as a line break.

*[\[Ignore unknown variable names\]]{.underline}*

If you use universal layouts that are built for multiple object types, this option is useful in ignoring variable names of data fields that are not present.

*[\[Join same layers\]]{.underline}*

Using the option \[Join same layers\] adjacent layers in the borehole log or the borehole table can be unified to one layer, if the content of the selected data fields is identical. <!-- src: help/05/3286 -->

### Snap

To make freehand constructions easier, especially while creating geological cross-sections, the snap function provides the exact connection of one graphic element to another. When creating new or moving existing ends, corners or nodal points, a point is dragged automatic to an existing end, corner or nodal point. The preset distance for searching points is adjustable. The snap function works independently of drawing layers and treats the graphic elements of all areas in the same manner. The snap function is activated and deactivated using the menu entry ***Preferences**\\**Snap*** or the shortcut **Ctrl+K**.

The snap distance - that is the maximum distance, which cannot be exceeded for connecting one point automatically to another, can be adjusted between 1 and 50 mm. The selection of the distance is possible using the menu entry ***Preferences**\\**Snap preferences***.

Graphic elements, with nodes that are influenced by the snap function are:\
line, rectangle, polyline and borehole profile.

 <!-- src: help/05/3379 -->
