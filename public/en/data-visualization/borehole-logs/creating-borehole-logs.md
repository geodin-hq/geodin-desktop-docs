# Creating Borehole Logs

Borehole logs are created as complex graphic elements in a layout: you draw an object frame, add the **Borehole log/Borehole tab** element inside it, and define the data it displays. This page covers the creation steps, how the borehole log element behaves in a layout, and the full set of report and presentation settings.

## Creating a borehole log graphic

The second toolbar contains the complex graphic elements - tools for borehole logs, well design, data sequences etc. General information on adding and editing graphic elements can be found in [Edit graphic](../layouts/layout-editor-basics.md); detailed descriptions of the individual graphic elements are available in [Borehole elements](../layouts/borehole-elements.md).

{% stepper %}
{% step %}
#### Step 1: Draw the object frame

The object frame is the base for geological/geotechnical graphic drawing elements, whereby there is a difference between an object frame and a (multi) object frame. Before adding complex graphic elements, one of these frames has to be drawn and selected. See [Object frames](../layouts/object-frames.md).
{% endstep %}
{% step %}
#### Step 2: Add an element inside the object frame

Add the complex graphic element - for a borehole log, the element **Borehole log/Borehole tab** - inside the selected object frame.
{% endstep %}
{% step %}
#### Step 3: Define the featured object or objects

Define the object or objects the element displays at **Data source**.
{% endstep %}
{% endstepper %}

***

## Working with borehole log graphics

With the graphic element **Borehole log/Borehole tab** the borehole log can be realized with fill patterns, including the labeling with depth values and layer description, and presentation of the consistency - or optionally a presentation of the layer description in scaled tabular form.

The borehole log or the table is distributed automatically over several pages if the chosen height scale requires it and scaling on one page is not selected. In this case the two page icons in the upper symbol bar are available to switch from the previous page to the next.

The element **Borehole log/Borehole tab** can be moved and scaled inside the object frame. All other graphic elements are vertically brought into line automatically to the new position.

It is also possible to insert the graphic element **Borehole log/Borehole tab** several times into one object frame. This makes it possible, for example, to display an object graphically as a borehole log and tabular with the according layer description side by side.

When the width of the well design is changed, the standard settings result in:

1. the left border is fixed and the well design is enlarged to the right when a new object is linked to the layout,
2. the mid-axis is fixed and the well design is enlarged both to the left and right when a change is made to the horizontal scale, the constant width or the percentage width.

If the maximum diameter of all casing/piezometer series, multiplied with the number of casing/piezometer series, is larger than the diameter of the borehole, the presentation as constructed is not possible (borehole diameter `D`, maximum series diameter `MaxR`, and `MaxR × 4 > D`). The individual casing/piezometer series then have to be displayed side by side, despite being constructed staggered in reality.

{% hint style="info" %}
The relative borehole widening can solve the problem of staggered casing/piezometer series that are too wide to draw to scale.
{% endhint %}

***

## Reference: report and presentation settings

### Report type

**Original data report**

Using this option you configure reports which show the original data of the objects in summary. This can for example be a tabular presentation of a borehole tab, an overview of all samples of a borehole or tables of measurement values of the groundwater chemistry. Nearly all existing data in a GeoDin database can be documented in any combination.

**Report calculation**

Using this option you create reports which process measurement value data further before being used in a report, or calculate statistic parameters. The type of report is not always displaying the original values of the database. You can select the report types:

* **List comparison**
* **Statistic**
* **Annual statistics**
* **Laboratory control report**
* [Plausibility report](../../data-analysis/calculation-engine/data-checks-and-validations.md)

For grain size analyses:

* [Particle size parameter](../display-particle-size-distribution-psd-as-a-bar-chart.md)
* [Sieve analysis](../display-particle-size-distribution-psd-as-a-bar-chart.md)
* [Hydrometer analysis](../display-particle-size-distribution-psd-as-a-bar-chart.md)

**Plug-in reports**

This type of report requires the installation of plug-ins (external modules) of a third party. These plug-ins take over the configuration and calculation of the report. If no plug-ins are installed, no reports of this type can be created and the selection of this report type is not sensible. Otherwise choose the recommended report type of the plug-in. Because the plug-in is completely responsible for the calculation of the report, no further settings can be made in GeoDin (all smaller branches of the presentation settings are faded out).

### Horizontal scale

Here the preferred **Horizontal scale** can be selected. Entered diameters of borehole and casing elements are drawn with accurate scale.

* **Constant width** causes an automatic setting of the displayed (maximum) borehole diameter of the well design according to a fixed value.
* **Centre display** ensures that the well design always remains centered irrespective of the data or horizontal scale.

A **not scaled presentation of the borehole** is possible by entering `<>0%` in the particular entry field. The borehole is displayed smaller or larger according to the horizontal scale. All casing elements are still drawn in the selected scale. This option can be used to display fill patterns or staggered piezometers better.

### Text labeling

Selection of the labeling with depth values (optionally also absolute heights related to the ground level) and information concerning the borehole, fill and special features (element information). The angle of inclination of the location can optionally be taken into consideration for the labeling; the depth values are then recalculated according to the angle of inclination. The data field which contains the angle of inclination has to be selected in the branch [Scale](../scale-bars-and-depth-scales.md).

**Translation**

Select the language for text labeling. The selection of another language than the input language requires multi-lingual maintained dictionaries. The presentation of fill patterns is not influenced by the selection.

**Fonts**

The chosen font can be selected in the drop-down menu. Also size and other features are selectable. The preview shows the current settings.

### Borehole element labeling

Select if the chosen well design elements should be labeled and which labeling instruction should be used for this.

With the activated option **Standard** the elements are labeled with a predefined standard text. If you choose the option **User**, the labeling instruction can be entered in the text field or be constructed using the icon **Build**.

The construction of labeling instructions is described in detail in the chapter [Text macro](../../reporting/text-macros-in-reports.md).

Text tags to the element can optionally be aligned automatically to the element border or centered.

### Grid

* **Show grid to end depth** - the background grid can be drawn until the end depth of the borehole, even when the measurement values do not reach this depth. The option is only active if a borehole log element is included in the object frame which is drawn until the end depth. Also the height of the graphic element data sequence must be large enough for the presentation until the end depth.
* **Draw in foreground** - if showing the data sequence in a grid, choose this option for the grid to be displayed in the presentation. Otherwise it is drawn behind the borehole log, curve or data sequence element and therefore partially hidden by filled borehole logs and curves.
* **Draw grid without data** - only active if the layout contains at least one displayable element (for example a borehole log or another data sequence graphic). If the current object contains no data concerning the selected measurement series, the grid of the data sequence element is drawn; otherwise the space in the layout remains empty.

### Profile display (graphically)

Select if the borehole log should be drawn (otherwise only labels are displayed).

The data presentation allows the presentation of borehole data in different country norms. For this, [Standards](../../configuration/ground-description-standards.md) and fill patterns are necessary. Once entered, borehole logs can this way be put out in the original language with the customary fill pattern, as well as in any foreign language with completely different fill patterns. In the mode **Automatic** the language and corresponding presentation norm of the data entry are used.

Optionally the width of the profile can be selected **Automatic** or directly (**Default**).

### Main layers

In most cases the presentation of a borehole log is based on the main layers. Some object types support the data entry, as well as the presentation, of **Components**.

Optionally the main layers can be drawn colored or black and white, transparent or opaque. For the printout, the line thickness of the fill patterns can be selected.

### Show symbols

Selection if components are displayed by symbols. Additionally the size and position of the symbol can be chosen regarding the centre of the borehole.

### Show areas

Selection whether components should be displayed as areas. Additional selection of the position of the area according to the center of the borehole.

### Layer query

If you choose the option **Layer query** as presentation form, the borehole log is not filled with the fill patterns of the petrographic description from the original layer data, but with the fill patterns of the filled layer order. The calculation is done directly before the presentation of the profile, so that a correction of the layer features in the layer data editor leads to an immediate change in the borehole log presentation.

The presentation can either be based on a [Layer query file](../../data-analysis/queries/complex-layer-queries.md) or the input of [Individual conditions](../../data-analysis/queries/conditions-and-operators.md).

### Individual conditions

The presentation of the result of a layer query basing on a single query is possible without a layer query file. In this case a borehole log is completely filled with one fill pattern, because only one query is put to a layer. All layers which do not comply with the query remain empty in the profile.

Select the data field and enter the code to be searched. Choose a fill pattern at the branch [Fill](../../configuration/fill-patterns-and-symbols.md). The layers in the borehole log which comply with the single query are displayed with this fill pattern.

### Consistency

Selection of the view of consistency, compactness and groundwater on the right side of the borehole.

* **Draw** - deactivate this option if you don't want consistency, compactness and groundwater to be drawn.
* **Show in legend** - define whether the symbols for consistency, compactness and groundwater are to be shown in the automatic legend.
* **Line type** - define how the lines are drawn; a detailed description can be found at [Line type](../../configuration/fill-patterns-and-symbols.md).

### Show as line

The borehole can be displayed as a vertical line if the option **Draw line** is activated. With an activated centerline, the nodal point between centerline and layer boundary is a snap point for the construction of layers in cross-sections.

If the borehole is displayed completely (no section entry), a horizontal line is drawn at the end depth of the borehole, whose thickness depends on the adjustment of the borehole width. If the borehole is only shown in a section which does not reach the end depth, the horizontal line is not drawn.

### Show filters

If an existing well design is added to a groundwater measurement place, this option can be used to add the presentation of the filter length in the borehole cross-section.

### Text macro

For the layer description you can choose between the following labeling modes:

| Mode | Description |
|---|---|
| **Text** | The borehole is shown with a pre-defined selection of data fields with a text translation of the dictionary codes. |
| **Norm** | Uses standard macro definitions for the layer descriptions, depending upon in which standard the geological information has been collected (e.g. DIN 4023, BS 5930). The codes used are stored in the Standard field in the relevant dictionary - if no codes are present then the dictionary entries in the main window will be used. |
| **Coding** | The codes stored in the database are used for labelling. |
| **User** | The user-definable option can be customized via **Build**. Detailed descriptions are given in the chapter [Text macro](../../reporting/text-macros-in-reports.md). |

* **Reverse slash** - this option allows the reverse slash to be interpreted as a line break.
* **Ignore unknown variable names** - if you use universal layouts that are built for multiple object types, this option is useful in ignoring variable names of data fields that are not present.
* **Join same layers** - adjacent layers in the borehole log or the borehole table can be unified to one layer if the content of the selected data fields is identical.

### Snap distance

The snap distance - the maximum distance which cannot be exceeded for connecting one point automatically to another - can be adjusted between 1 and 50 mm. The selection of the distance is possible using the menu entry **Preferences → Snap preferences**.

Graphic elements with nodes that are influenced by the snap function are: line, rectangle, polyline and borehole profile.

Generic element properties (element name, drawing layer): see [Element Properties](../layouts/element-properties.md). The variable text element is described in [Text Macros and Variable Text](../layouts/text-macros-and-variable-text.md).
