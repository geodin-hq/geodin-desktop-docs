---
description: Well Design Diagrams
---

# Well Design Diagrams

### Parameter list

Defined parameters for calculation are expected for the diagrams Piper, Durow, Formatio, Pie, Bar. Because a parameter name for a substance can be changed in a database, it is possible to adjust the preset correlation in the parameter list. Double-click the parameter to adjust and select its entry in the view of the object properties.

### Measurement value graphic

The graphic element measurement value graphic is used to display time series, XY-diagrams, triangle diagrams and hydrochemical special diagrams. It can be inserted into a object frame any often.

**The element name**

The element name is used mainly to identify the graphic elements of a GeoDin graph better in the tree view of graphic elements. By using significant names for graphic elements a complex graph can be designed very clear. For some graphic elements a related element can be entered. Here also the element name is used.

[Drawing layer](layouts/layout-editor-basics.md)

Display of the drawing layer, on which the graphic element is placed. Using the icon **In another layer** the graphic element can be moved in anther drawing layer. You find further information on drawing layers in the chapter [Drawing layer](layouts/layout-editor-basics.md).

**Arrangement in the fore- or background**\
\
Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph.

### Piper diagram

The Piper diagram after PIPER (1944) is one of the most common methods to display hydrogeochemical analyses.

In two three component diagrams the ratio of the molar equivalent concentration of the anions and cations and in a combined rhombus diagram the ratio between (Na+K)/(Ca+Mg+Fe) and (HCO3+CO3)/(SO4+Cl+NO3) is shown.

Classification after the Piper diagram is based in contrary to the method after Valjaschko on the predominant solution contents, the major ions.

To display an analysis in a Piper diagram the main ingredients have to be analyzed (Ca, Mg, Na, K, HCO3+CO3, SO4, Cl), hence a not analyzed ingredient can be calculated using the ion balance. Nitrate is, if analyzed, added to the sulfate, iron to the calcium.

The calculation/estimation via the [Ion balance](../data-analysis/calculation-engine/geotechnical-analyses.md) is activated by default.

To display the original molar equivalent concentrations without ion balance, this option can be deactivated.

GeoDin interprets all special values (-99, -88 etc.) as 0 and all other negative values (under the detection limit) as absolute values.

If the parameters Fe or NO3 are defined as empty in the parameter definition, they are also removed from the diagram labelling.

### Well design

Using the graphic element _Well design_ well designs after DIN 4021, including the labeling with depth, fill and casing elements, can be carried out.

The well design is automatically divided in several pages, if the set scale requires it. In this case the page icons in the upper symbol bar are available to change to the next or previous page.

The element well design can be moved and scaled inside the object frame. All other graphic elements are automatically adjusted to the new position. Also it is possible to insert the graphic element well design in the object frame several times. This allows drawing the well design of a object in several displaying modes or translations.

**The element name**

The element name is used mainly to identify the graphic elements of a GeoDin graph better in the tree view of graphic elements. By using significant names for graphic elements a complex graph can be designed very clear. For some graphic elements a related element can be entered. Here also the element name is used.

[Drawing layer](layouts/layout-editor-basics.md)

Display of the drawing layer, on which the graphic element is placed. Using the icon **In another layer** the graphic element can be moved in anther drawing layer. You find further information on drawing layers in the chapter [Drawing layer](layouts/layout-editor-basics.md).

**Arrangement in the fore- or background**\
\
Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph.

### Data source

If a GeoDin object has several (versioned) well designs, here the selection of the well design version to be shown is possible.

### Graphic properties

Select the mode (country standard) for the graphic presentation of the well design in the drop down menu **"Data presentation"**. Usually the setting is 'Automatic'.

Other options for the graphic presentation:

**Draw in color**

Select if the graphic should be displayed in black/white or in color.

**Draw well casing/piezometer**

Select if the lining thickness of the well casing/piezometer elements should be drawn scaled (supposed the lining thickness is recorded in the well design data).

**Draw borehole**

With deactivated option the frame of the borehole including the fill patterns are dropped from the view.

**Draw special features**

With deactivated option the elements of the special features are dropped from the view.

**Line type from dictionary**

If this option is switched off, the [Line types](../configuration/fill-patterns-and-symbols.md) is taken from the line setting of the graphic.

If this option is switched on, it is taken from the BLCODE field in the assigned dictionary of the borehole table.

**Draw backfill**

If this option is switched off, the frames of the borehole including the signatures of the backfillings are omitted from the display.

**Fill pattern line thickness**

Select the line thickness of the shown fill patterns (only printout).

**Draw wall thickness**

Specify whether the wall thickness of the pipe elements/special fixtures should be drawn to scale (provided the wall thickness was recorded in the expansion data).

### Borehole

Select if the chosen well design elements should be labeled and which labeling instruction should be used for this.

With activated option -Standard- the elements are labeled with a predefined standard text. If you choose the option -User-, the labeling instruction can be entered in the text field or be constructed using the icon **Build**.

The construction of labeling instructions is described in detail in the chapter [Text macro](../reporting/text-macros-in-reports.md).

Text tags to the element can optionally be selected automatically to the element border or centered.

### Backfill

Select if the chosen well design elements should be labeled and which labeling instruction should be used for this.

With activated option -Standard- the elements are labeled with a predefined standard text. If you choose the option -User-, the labeling instruction can be entered in the text field or be constructed using the icon **Build**.

The construction of labeling instructions is described in detail in the chapter [Text macro](../reporting/text-macros-in-reports.md).

Text tags to the element can optionally be selected automatically to the element border or centered.

### Special features

Select if the chosen well design elements should be labeled and which labeling instruction should be used for this.

With activated option -Standard- the elements are labeled with a predefined standard text. If you choose the option -User-, the labeling instruction can be entered in the text field or be constructed using the icon **Build**.

The construction of labeling instructions is described in detail in the chapter [Text macro](../reporting/text-macros-in-reports.md).

Text tags to the element can optionally be selected automatically to the element border or centered.

### Filter information

Select if the chosen well design elements should be labeled and which labeling instruction should be used for this.

With activated option -Standard- the elements are labeled with a predefined standard text. If you choose the option -User-, the labeling instruction can be entered in the text field or be constructed using the icon **Build**.

The construction of labeling instructions is described in detail in the chapter [Text macro](../reporting/text-macros-in-reports.md).

Text tags to the element can optionally be selected automatically to the element border or centered.

### Piezometers

Choosing the option -Automatic piezometer spacing- these are placed automatically in the well design. For the piezometers 1 to 9 also a free horizontal position in the view can be chosen.

See also [Piezometer number](well-design-diagrams.md).

### Piezometer number

Select if the particular piezometer should be drawn.

Additionally the distance of the piezometer from the center axis of the well design can be adjusted. For a negative distance the piezometer series is displayed left of the center axis, for a positive distance right of the center axis.

_**Note:**_ _This setting only takes an effect, if the option -Automatic piezometer spacing- in the branch Piezometers is deactivated._

See also [Piezometers](well-design-diagrams.md).

### Complex graphic elements

The second toolbar contains complex graphic elements. Here you find tools for borehole logs, well design, data sequences etc.

Detailed descriptions of the particular graphic elements are available in the subordinated chapters:

General information on adding and editing of graphic elements can be found in chapter:

[Edit graphic](layouts/layout-editor-basics.md)

The object frame is a base for geological/geotechnical graphic drawing elements, wherbey there is a difference between a object frame and a (multi) object frame. Before adding complex graphic elements one of these frames has to be drawn and selected.

The method to create graphs with complex graphic elements can be structured in the following steps.

**1. Drawing the object frame**

\
Using the tool a object frame is drawn. The frame should be large enough to hold all the graphic elements. The selected frame is represented by 4 grey squares and 4 grey side lines. If not selected the frame is represented by 4 grey angles. The selection of the object frame as an active graphic element is done with the mouse in the boundary area of the frame or with the  **Ctrl** key pressed at any place inside the frame.

**2. Adding an element inside of the object frame**

To draw a geological graphic element inside the object frame, you select the object frame and then the chosen tool from the symbol bar. The graphic element can only be drawn, placed and scaled inside the object frame. After insertion the graphic elements are shown as blue dashed markings and show the space that will be needed for presentation of the borehole data. Editing the geological graphic elements is equal to the editing of the elementary graphic elements.

**3. Defining the featured object or objects at**

**Data source**

or

**Data source**

### Axis range

Select here the distance of the main divisions for the depth-axis, as well as the chosen number of help divisions.

### Diagram design

In the branch Diagram design any areas, texts and symbols can be added to the diagram. Other than for the drawing of single areas, texts or symbols with the standard tools, here the created elements are fixed part of the diagram, which means they are automatically moved and scaled and offer additional special functions, for example for the automatic labeling with legend texts.

You add a single **Surfaces**, [Text](layouts/text-macros-and-variable-text.md) or [Symbol](../configuration/fill-patterns-and-symbols.md) in the particular branches of the object properties.

If areas, texts or symbols exist, their display can be showed and hidden using the particular option. You do not have to remove the areas or text, if you temporarily do not want to display them.

### Show filters

If an existing well design is added to a groundwater measurement place, this option can be used to add the presentation of the filter length in the borehole cross-section.

### Horizontal scale

**Use of the layout interfaces**

Select here a horizontal scale for the presentation of the well design.

**Requirements in the layout**

The layout has to contain at least one graphic element [Well design](../navigating-the-geodin-workspace/objects/well-design-data.md).

**Results in the layout**

All well designs of the layout apply the horizontal scale.

***

## Reference: Fill Color and Transparency

### Color / Transparency

Controls the fill color and transparency of area fills in well design diagrams:

* **Default color** — The background color for a fill pattern is taken from the fill pattern table by default.
* **User defined** — Select this option to override the default and choose a custom color for the area fill.
* **Transparent fill** — Allows overlaying filled areas with a transparent fill pattern so underlying elements remain visible. Note: not all print output devices support transparency.
* **Line thickness** — Adjustable only for vector fill patterns; affects print output only. Changing this setting has no visible effect on the screen.
