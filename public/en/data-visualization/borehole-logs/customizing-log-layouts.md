---
description: Customizing Log Layouts
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Customizing Log Layouts

### Parameter

Select here a parameter from the available data types. You receive a selection dialogue by clicking on the button right in the entry field. <!-- src: help/05/886 -->

### Image

The graphic element image can be used for company logos, topographic background for a ground plan etc. The following graphic formats are possible:

1.  Bitmap (\*.bmp)

2.  Windows Enhanced Metafile (\*.emf)

3.  ICO (\*.ico)

4.  JPG (\*.jpeg, \*.jpg)

5.  GeoDin graphic files (\*.ggf)

6.  Picture Exchange (\*.pcx)

7.  Portable Network Graphics (\*.png)

8.  TIFF (\*.tiff, \*.tif)

9.  Windows Metafile (\*.wmf)

After adding this element it is first shown with a blue dashed frame. The selection of an image is made in the branch ***Data source***.

**The element name**

The element name is used mainly to identify the graphic elements of a GeoDin graph better in the tree view of graphic elements. By using significant names for graphic elements a complex graph can be designed very clear. For some graphic elements a related element can be entered. Here also the element name is used.

[Drawing layer](../layouts/layout-editor-basics.md)

Display of the drawing layer, on which the graphic element is placed. Using the icon **In another layer** the graphic element can be moved in anther drawing layer. You find further information on drawing layers in the chapter [Drawing layer](../layouts/layout-editor-basics.md).

**Arrangement in the fore- or background**\
\
Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/1039 -->

### Complex graphic elements

The second toolbar contains complex graphic elements. Here you find tools for borehole logs, well design, data sequences etc.

Detailed descriptions of the particular graphic elements are available in the subordinated chapters:

General information on adding and editing of graphic elements can be found in chapter:

[Edit graphic](../layouts/layout-editor-basics.md)

The object frame is a base for geological/geotechnical graphic drawing elements, wherbey there is a difference between a object frame and a (multi) object frame. Before adding complex graphic elements one of these frames has to be drawn and selected.

The method to create graphs with complex graphic elements can be structured in the following steps.

**1. Drawing the object frame**

\
Using the tool a object frame is drawn. The frame should be large enough to hold all the graphic elements. The selected frame is represented by 4 grey squares and 4 grey side lines. If not selected the frame is represented by 4 grey angles. The selection of the object frame as an active graphic element is done with the mouse in the boundary area of the frame or with the ![Ctrl](.gitbook/assets/icons/ctrl.png) **Ctrl** key pressed at any place inside the frame.


**2. Adding an element inside of the object frame**

To draw a geological graphic element inside the object frame, you select the object frame and then the chosen tool from the symbol bar. The graphic element can only be drawn, placed and scaled inside the object frame. After insertion the graphic elements are shown as blue dashed markings and show the space that will be needed for presentation of the borehole data. Editing the geological graphic elements is equal to the editing of the elementary graphic elements.

**3. Defining the featured object or objects at**

**Data source**

or

**Data source** <!-- src: help/05/1378 -->

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

### Drawing layer

A graph can be arranged in different drawing layers. The drawing layers are used to divide the graphic logically into several parts. So fixed title blocks for example can be drawn in an extra drawing layer, to separate them from variable graphic elements.

The use of different drawing layers can be summarized as follows:

• Because only graphic elements of the current drawing layer can be selected, inadvertent editing of elements in other layers is impossible.

\
• If a large number of graphic elements is used (for example in a geological cross-section), elements can be found and selected more easily, if they are distributed on several drawing layers.

\
• Drawing layers can be hidden. Therefore temporary disturbing graphic elements do not have to be removed from the graph. The construction of the image is faster, if you temporarily hide unneeded elements.

• Drawing layers may contain information, which are either exclusively shown on the display or when printing. By this certain contents can be shown for specific user groups or applications.

Each drawing layer has a name. The name of the current layer is displayed on the right in the status bar.

Creating new drawing layers or changing the drawing area is done by selecting the menu entry ***Arrangement**\\[Drawing layer](../layouts/layout-editor-basics.md)* or with the help of the key combination **Ctrl + E**. You can also select the branch \<Drawing layers\> directly in the object properties.

All existing drawing layers are listed here. The number of elements in one drawing layer is displayed in the second column. The current drawing layer is marked with a pen symbol. With the help of the boxes the visibility of a drawing layer can be adjusted.

The icons on the right side of the list are used for editing the drawing layers:

**New drawing layer**

A new drawing layer is created. A unique name has to be chosen.

**Delete drawing layer**

The selected drawing layer is deleted after a security check. Deleting a drawing layer is also possible if the layer still contains graphic elements. By deleting the drawing layer you also delete all graphic elements.

**Set current drawing layer**

The selected drawing layer in the list becomes the current drawing layer. The selection of the current drawing layer is also possible with double-clicking the particular entry in the list. Invisible layers cannot be chosen as current drawing layers.

**Properties**

With this icon the name of a selected drawing layer can be changed as well as the visibility of the layer for screen and printer. Furthermore it is possible to enable the layer for the quicksettings within the layout overview. The visibilty option for screen display and for certain pages are only active in the layout overview and not in the editting mode.

**Extended settings**

With this option all properties will be visible within the list and can be de-activated with double-clicks.

**Access all layers**

Generally no graphic elements can be selected from other (not current) drawing layers. If it is absolutely necessary, to move graphic elements from different layers together, it is possible to activate access to the elements of all layers. Choose the option -Access all layers-. With activated option elements from all layers can be selected and manipulated. <!-- src: help/05/2404 -->

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

### Object frame

The object frame is the key element for the presentation of geological objects. It is used for combination (grouping) of the graphic elements of a geological object. Therefore a object frame has to be drawn for each borehole, if more than one borehole should be shown in one graph.

The object frame is a special type or a further development of the group frame. The selection of the object frame is done equally to the group frame selection on the margins or with pressed **Ctrl** key inside of the frame. The special features for the scaling of group frames are also available for the object frames.

Inside the object frame the individual graphic elements can be arranged in any way. For example a borehole log and borehole table can be displayed in detail using the large number of possibilities for the labeling instructions.

The geological graphic elements inside the object frame always refer to a borehole. The borehole to be shown is chosen by the object frame.

**Converting an object frame**

A object frame can be converted into an (multi-) object frame and vice versa. Select the frame and open the context menu with a right-click on the frame. Then select the entry ***convert object frame*** from the context menu. After a confirmation, the object frame is converted into the other type.

Please note that some graphic elements (well design, groundwater, special symbols and samples) can only be used in a object frame (and not in an multi-object frame). These graphic elements are removed during conversion. If this situation occurs, the text in the window contains a list of all removed objects.

If the frame is linked to a dataset in the GeoDin object manager, the connection is removed during the conversion. Therefore, the link must be re-established by dragging the object onto the layout.

**The element name**

The element name is used mainly to identify the graphic elements of a GeoDin graph better in the tree view of graphic elements. By using significant names for graphic elements a complex graph can be designed very clear. For some graphic elements a related element can be entered. Here also the element name is used.

[Drawing layer](../layouts/layout-editor-basics.md)

Display of the drawing layer, on which the graphic element is placed. Using the icon **In another layer** the graphic element can be moved in anther drawing layer. You find further information on drawing layers in the chapter [Drawing layer](../layouts/layout-editor-basics.md).

**Arrangement in the fore- or background**\
\
Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/2472 -->

### Selection syntax

To describe parameter relations string symbols are used like in labeling macros or formulas, for example \$NO3\$ for nitrate. The condition has to contribute a logical result (true or false).

Example for a condition (Nitrate \> 10):

\$NO3\$ \> 10

Several partial conditions can be connected with the logical operators AND and OR.

For **string fields** \"=\" can be used for an exact analogy and \"like\" for a similarity. If \"like\" is used the comparison string can contain wildcards. The symbol \"%\" stands for several, \"\_\" for one character. The search term \"Bore%\" finds all sample that start with \"Bore\". \"Borehole\_\" only finds those samples, which have exactly one character behind \"Borehole\" (\"Borehole 1\" is found, \"Borehole 10\" not).

Additionally for drawing series fields the operator **HAS** is allowed. It detects, if a subordinate symbol series exists and is useful for fields with dictionaries, in which more than one code can be entered divided by commas.

The syntax is:

Styles:

1\) \$DATAFIELD\$ Has \'Code\'

2\) \$DATAFIELD\$ Has (\'Code\')

3\) \$DATAFIELD\$ Has (\'Code1\',\'Code2\'\[\...,\'Code\'\])

4\) \$DATAFIELD\$ Has \'Code1,Code2,\...,CodeN\'

If more codes are entered in the 'Has' condition, this means that minimum one of the specified codes must be in the data field. This is equal to the formulation: Data field has code 1 or data field has code 2 etc.

If parenthesis are used (2 and 3) the search terms can contain a comma. If the single quotations are used (1 and 4) the comma is the separator between several terms.

For the entry of search terms also **wildcards** are allowed. For example is the condition:

\$DATAFIELD\$ HAS \'%\'

always true, if any content is found in the data field.

A comparison using HAS \'%\' results a \<False\>, if the data field is empty. To receive a comparison result \<True\> if the data field has a content or is empty use the operator %ANY:

\$DATAFIELD\$ HAS \'%ANY\'

For comparisons with data fields the following syntax is used:

\$BOREBEG\$\>\'20021021\' (Date yyyymmdd in inverse commas)

**Using AND**

This operator creates a combined limitation. For example (\$PH\$\>7) AND (\$COND\$\>200). Only the data sets, which comply with both conditions, for example the pH value is 7,6 and the conductivity is 245, are available. If only one of both conditions is not fulfilled for example the pH 6,3 or the conductivity 178 if the data set is not complying with the conditions and is not selected.

**Using OR**

This operator creates a completing limitation. For example (\$PH\$\>7) OR (\$LEITF\$\>200). Only one of both conditions must be complied with. That means either a data set with pH 7,6 and COND=245, as well as a data set with the values PH=6,3 and COND =245 and also PH=7,5 and COND =178 fulfills the conditions and is selected.

***Note:*** *When using the operators AND and OR the single terms have to be closed in parenthesis.*

**Select dataset position**

To select a particular dataset the variables

%FIRST

%LAST

can be used. The first or the last dataset of a queried series of datasets is supplied. By adding a numeric operator the position of the dataset to select can be moved.

Example:

%LAST-1 supplies the dataset before the last dataset of a measurement series.

If the dataset position is invalid, an empty data volume is returned.

Both operators cannot be combined (neither with each other, nor with any other terms.

Selectors, which contain the operators %FIRST or %LAST can be combined with other selectors. In this case the order of appearance is decisive, because the selectors are executed one after the other.

Example:

Selector1=\$SMPDATE\$\<\'199100101\'

Selector2=%LAST

A subset of datasets is determined, which origin from a date before the 1.1.1991. The last dataset of this subset is used.

Example:

Selector1=%LAST

Selector2=\$SMPDATE\$\<\'199100101\'

The last dataset of the measurement value is selected. If it has a date before the 1.1.1991, it is valid. Otherwise the result is empty.

**Selection of the return result for syntax errors in the selection**

If the selection contains a faulty data field reference or typing errors it can not be calculated. Depending on how it is used this can lead either to a display of all datasets (selection ignored) or no datasets at all (all datasets are invalid). By extending the syntax the return result can be defined for these cases. This is helpful if the selections refer to data fields which not all used databases contain. This could be for example measurement value parameters, which can be selected individually for each database by the user and therefore can vary from database to database.

The syntax is:

\[OnError:Result=true\]

or

\[OnError:Result=false\]

Example:

\$DATAFIELD1\$ =\'v\' \[OnError:Result=true\]

The value in brackets has to be at the end of the string. In the example above the result of the query would be true if \"DATAFIELD1\" does not exist in the database.

If the data field is there, the selection would be TRUE if the field content is \'v\', otherwise the selection result is FALSE.

The \[OnError:\....\] statement is not case sensitive.

**Using the operator HASLOOP in reports**

By writing

\$DATAFIELD\$ Has \'Code1,Code2,\...,CodeN\'

all data, which fulfill the selection are taken and displayed in a report in one step. To reach a group of datasets with an attribute the operator \"HasLoop\" can be used. The syntax is identical to the operator \"Has\" and allows several spellings. Example:

\$DATAFIELD\$ HasLoop \'Code1,Code2,\...,CodeN\'

Other than \"Has\" the selection and the display of the datasets in the report create a loop, so that single reports are combined one after the other.

\$DATAFIELD\$ Has \'Code1\'

\$DATAFIELD\$ Has \'Code2\'

\....

\$DATAFIELD\$ Has \'CodeN\'

The result is a report, which contains the datasets in the order of the group sequence.

Using the [Footers](../layouts/report-elements.md) of a report each individual group can be added additional information. Often ther should be a header line with the group namea above dataset group. Please add a header type \'text\' and use the text macro \$%SelectorContent:Selector name\$ (as selector name put the name of your \"HasLoop\" selector) <!-- src: help/05/2623 -->

### Text

**Labeling with depth**

The depth values of the layer boundaries are placed left of the borehole log. Optionally the depth values can be displayed in m below surface or converted correlated to the ground level measurement point (-absolute-).

The decimal places option allows you to set how many decimal places are shown (the default value is one decimal place i.e. 12,4)

The incline of the borehole can optionally be taken into consideration. Here the depth values are recalculated using the entered angle of incline. For this the data field, which contains the angle of incline, must be adjusted in the branch [Scale](../scale-bars-and-depth-scales.md).

**Labeling with layer data**

The layer data are added on the right side of the borehole log. If they consist of layer data with the option of component descriptions, it can be defined, whether the labeling of the components is done in the depth, in which the component is described.

Choosing the option -Layer description only once- a layer, which is parted is only labeled once.

**Selection of the language for text labeling**

The selection of a different language than the input language requires [Standards](../../configuration/ground-description-standards.md). The presentation of filling patterns is not influenced by the selection.

The (vertical) text orientation of the labeling can be chosen, as well as the line type of the tag lines of text related to the borehole log. <!-- src: help/05/3041 -->

### graphically

Select if the borehole log should be drawn (otherwise only labels are displayed).

The data presentation allows the presentation of borehole data in different country norms. For this [Standards](../../configuration/ground-description-standards.md) and fill patterns are necessary. Once entered borehole logs can this way be put out in the original language with the customary fill pattern, as well as in any foreign language with completely different fill patterns. In the mode \"Automatic\" the language and corresponding presentation norm of the data entry are used.

Optionally the width of the profile can be selected -Automatic- or directly -Default-. <!-- src: help/05/3043 -->

### Main layers

In most cases the presentation of a borehole log is based on the main layers. Some object types support the data entry, as well as the presentation of **Components**.

Optionally the main layers can be drawn colored or black and white, transparent or opaque. For the printout the line thickness of the fill patterns can be selected. <!-- src: help/05/3049 -->

### Layer query

If you choose the option -Layer query- as presentation form, the borehole log is not filled with the fill patterns of the petrographic description from the original layer data, but with the fill patterns of the filled layer order. The calculation is done directly before the presentation of the profile, so that a correction of the layer features in the layer data editor leads to an immediate change in the borehole log presentation.

The presentation can either be based on a [Layer query file](../../data-analysis/queries/complex-layer-queries.md) or the input of a [Individual conditions](../../data-analysis/queries/conditions-and-operators.md). <!-- src: help/05/3142 -->

### Individual conditions

The presentation of the result of a layer query basing on a single query is possible without a layer query file. In this case a borehole log is completely filled with a fill pattern, because only one query is put to a layer. All layers, which do not comply with the query remain empty in the profile.

Select the data field and enter the code to be searched. Choose a fill pattern at the branch [Fill](../../configuration/fill-patterns-and-symbols.md). The layers in the borehole log, which comply with the single query, are displayed with this fill pattern. <!-- src: help/05/3145 -->

### Snap

To make freehand constructions easier, especially while creating geological cross-sections, the snap function provides the exact connection of one graphic element to another. When creating new or moving existing ends, corners or nodal points, a point is dragged automatic to an existing end, corner or nodal point. The preset distance for searching points is adjustable. The snap function works independently of drawing layers and treats the graphic elements of all areas in the same manner. The snap function is activated and deactivated using the menu entry ***Preferences**\\**Snap*** or the shortcut **Ctrl+K**.

The snap distance - that is the maximum distance, which cannot be exceeded for connecting one point automatically to another, can be adjusted between 1 and 50 mm. The selection of the distance is possible using the menu entry ***Preferences**\\**Snap preferences***.

Graphic elements, with nodes that are influenced by the snap function are:\
line, rectangle, polyline and borehole profile.

 <!-- src: help/05/3379 -->

### Scales

These layout interfaces contain setting options for horizontal and vertical scales and are usable for layouts, which contain the following graphic elements:

[Borehole log](creating-borehole-logs.md)

[Well design](../../navigating-the-geodin-workspace/objects/well-design-data.md)

[Data sequence](../../data-collection/import/data-sequences.md)

[Samples](../../navigating-the-geodin-workspace/objects/sample-data.md) <!-- src: help/05/3651 -->

### Labeling

The Layout interfaces option offers input possibilities for text elements and is usable for layouts, which contain the graphic elements [Text](../layouts/text-macros-and-variable-text.md) and [Variable text](../layouts/text-macros-and-variable-text.md). <!-- src: help/05/3662 -->

### Data sequence

The layout interfaces option offers setting possibilities for data sequences and is usable for layouts, which contains the graphic element [Data sequence](../../data-collection/import/data-sequences.md). <!-- src: help/05/3673 -->

### Reports

These layout interfaces contain setting options for report elements and are only usable for layouts which contain the graphic element [Measurement value graphic](../layouts/measurement-value-graphics.md). <!-- src: help/05/3684 -->

---

## Reference: Depth Scale and Tag Line Properties

<!-- src: help/05/35, 45 -->

### Depth labeling (Text)

Controls how depth values are displayed alongside the borehole log:

- **Default** — Depth shown in metres below ground surface.
- **To Datum** — Uses the elevation entry to calculate height relative to datum (typically mean sea level).
- **Adjust inclination** — Recalculates displayed depths to vertical or horizontal using values from a specified data entry field (e.g. angle of inclination).
- **Decimal places** — Number of decimal places shown on depth labels.
- **Special text 1 / Special text 2** — Adds groundwater level information where supported by the object type. Only applicable to SEP1 object types where groundwater date information has been entered in the "Additional information" field of the layer description.
- **Font** — Select font, size, and other typographic attributes; the preview shows the current settings.
- **Background** — Set to *Transparent* to allow underlying graphic elements to show through character areas; set to *Opaque* to crop background content behind the text (default: white background, colour configurable).

### Tag lines (Tags)

Controls the visual style of the tag lines connecting depth labels or layer text to the borehole log:

- **Line type** — Select the line type for tag lines.
- **Color** — Choose from the dropdown; select "Individually" to open the full color dialog for a custom color.
- **Line thickness** — Set in mm (preferred for print accuracy) or pixels (screen-only use). When set in mm, the preview thickness may not match print output exactly.

### Layout snippets

With the help of layout snippets individual layouts parts can be combined to make a completely new layout. These snippets can be standardized backgrounds, frames with company logos etc. Instead of drawing these elements in each layout, snippets can be integrated in the current layout to present information. GeoDin accomplishes this by saving a link to the snippet, rather than the snippet itself, so that any change made to the snippet is automatically reflected in all layouts where the snippet has been used.

To use snippets in the current layout choose the option **Use layout snippets** in the node 'Additional properties'. The branch \'Layout snippets\' is then available to which snippets can be added. There is no limit to the number of snippets that a layout may contain and a snippet can be created from other snippets.

**Name**

Give the snippet a name. Each snippet is automatically embedded in a special separate drawing layer (that is identified by this name).

**Layout name**

Click in this field to choose the layout snippet file. The link to the file is saved with a relative path, hence snippets should be saved in the same folder or in sub-folders as the layouts. This ensures that layouts retain the relationship to their snippets even when the folder containing the layouts is moved. This is however only recommended practice and not obligatory - snippets can be stored in any folder, though this requires potentially more care.

**Using layout snippets**

If a snippet is temporarily not required, it may be deactivated rather than deleting it from the layout. In this case it will not be loaded or calculated. If the drawing layer containing the snippet is made invisible, the snippet will not be shown, but will be loaded and calculated.

**Bring to front**

The default setting places snippet elements in the background - this option allows them to be placed in the foreground.

**Scale to page**

If a layout snippet has a different page size than the current layout, it will be added in the top left corner of the current layout, where it can be more easily scaled to fit the current page size. To achieve this the graphical elements must use **Anchors**, which control how scaling and positioning are carried out when changing the page size/orientation. <!-- src: help/05/10422 -->
