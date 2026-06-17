# Scale Bars and Depth Scales

The **Depth Scale** graphic element displays a separate height scale in a borehole log or well-design layout. It can be added to an object frame as often as required. Its behavior depends on the presence of at least one **Borehole log/Borehole tab**, **Well design**, or **Data sequence** element in the same object frame.

For general graphic-element properties shared across all layout elements (element name, drawing layer, z-order), see [Element Properties Reference](layouts/element-properties.md).

***

## Reference: Depth Scale Properties

### Depth scale

The length of the element matches the length of the object frame. It can only be moved horizontally. All changes to vertical position and size follow the main elements (borehole log, well design, and data sequence). The element is shown as blue dashes when no object is linked or embedded in the object frame.

**The element name**

The element name identifies graphic elements in the GeoDin graph tree view. Use meaningful names when building complex layouts. For some graphic elements a related element can be entered. Here also the element name is used.

**Drawing layer**

Displays the drawing layer on which the element is placed. Use the **In another layer** icon to move it to a different layer. See [Layout Editor Basics](layouts/layout-editor-basics.md) for further information on drawing layers.

### Scale

Select the vertical scale here.

The base unit of the paper is cm. You can also switch to m, in, or ft.

Use **Factor for depths** to convert objects recorded in a different unit system: the actual depths are multiplied by the entered factor. For example, metres to feet uses factor 3.28084. To display in an inch-per-foot scale, change the base paper unit to `in` and set the factor to 3.28084. If your object data is already in feet, change the base paper unit to `in` and keep the factor at 1.

By default, a layer or sample interval is not split across pages - the page break falls at a layer or sample interval boundary. If a section at the selected scale is taller than one page, the element is not shown (red dashed frame).

* **-Auto correct-** - automatically corrects the height scale so that sections are not split across pages.
* **-New page-** - allows a unit to be distributed across multiple pages.
* **-Fit to page-** - automatically calculates the vertical scale so the entire object fits on one page. Not advisable for very deep objects where labeling text may not all be displayable.

You can also read the scale from a data field variable using the **"Read from"** input field. This works like a variable text element: the relation to a database field is defined by a variable in `$` symbols. For example, enter `$comment$` to read the scale from the basic data set "comment" field. This allows storing an ideal presentation scale in the object data, independent of the selected layout.

**Interval**

To display only part of an object, use the **-Interval-** option. Enter the depth range in m below surface. With **-Automatic-** activated, the whole object is shown.

**-New page - User defined-** sets an exact depth at which the page break is performed, independent of layer or sample interval boundaries. Only use this with sensible scales (the preset area must fit on the page) and appropriate graphic element heights. If the element does not have the required height, drawing completes but the screen area may not always refresh correctly.

**-New page - Automatically optimize-** instructs GeoDin to recalculate the page break depth. GeoDin checks whether a layer or interval boundary is located in the possible page break area (approximately the last 10% of the page). If a boundary is found, it is used as the break; otherwise the layer or sample interval is split between pages. With this option active, an object can be shown at any vertical scale.

**-Dynamic ground level-** activates automatic positioning of the ground level: the ground level moves dynamically and the element always begins at the upper edge of the graphic element. Without this option, the ground level stays at a fixed vertical position, which may cause graphic elements to be hidden or extend beyond the page margin for objects with large elements above ground level.

**Angle**

The angle of incline of an object can be entered while labeling an element with depth values and optionally used for the graphic presentation. First define the data field containing the angle of incline. Use **0° = vertical** or **0° = horizontal** to select how the inclination value is interpreted:

* **0° = vertical** - value 0 or empty = vertical borehole; value 89 = nearly horizontal; value 90 is ignored.
* **0° = horizontal** - value 90 or empty = vertical borehole; value 1 = nearly horizontal; value 0 is ignored.

To label recalculated depths, choose **-Display adjusted inclination-** (for example in the [Text](layouts/text-macros-and-variable-text.md) graphic element). With **-Display adjusted inclination-** active, the element is shown at a compressed scale relative to the angle - important for correct layer correlation in cross-section presentations. With **\<Automatic\>** activated, labeling always uses recalculated depth values. To show recalculated depth values in labeling only while the graphic presentation uses the recommended scale, do not activate **-Display adjusted inclination-**.

### Depth tag

Select the line type for the depth tag line.

A line or outline is displayed in the chosen **Color** and **Line type**. To select a color not in the dropdown, click the first entry **"Individually"** to open the color dialog.

The line thickness can be set in mm or pixels. Prefer mm for print consistency - with mm, the thickness in the preview differs from print output and is independent of print resolution. Pixels are suitable only for screen-only layouts.

### Horizontal scale

Select the preferred **Horizontal scale** here. Entered diameters of borehole and casing elements are drawn at accurate scale.

* **-Constant width-** - sets the displayed (maximum) borehole diameter of the well design to a fixed value.
* **-Centre display-** - keeps the well design centered regardless of data or horizontal scale.

Without these options, standard behavior when the width of the well design is changed:

1. The left border is fixed; the well design enlarges to the right when a new object is linked to the layout.
2. The mid-axis is fixed; the well design enlarges both left and right when the horizontal scale, constant width, or percentage width is changed.

A **not-scaled presentation** is possible by entering `<>0%` in the entry field. The borehole is displayed smaller or larger according to the horizontal scale, while all casing elements remain in the selected scale. This is useful for displaying fill patterns or staggered piezometers.

If the maximum diameter of all casing/piezometer series, multiplied by the number of series, is larger than the borehole diameter:

* Reality: Diameter of the borehole = D; Maximum diameter of the casing/piezometer series = MaxR
* If MaxR × 4 > D, individual casing/piezometer series must be displayed side by side even though they are staggered in reality. The relative borehole widening option addresses this.

### Depth axis

In this branch no properties can be selected directly. Choose a subordinate branch to edit detail properties.

### Move and scale

Selected graphic elements can be moved to a new position by dragging with the left mouse button pressed. The position on the paper is shown in the status bar during the operation.

To scale an element, select it and drag a corner marker in the chosen direction. The size is also shown in the status bar.

When scaling group or object frames:

* Scaling a group frame using the corner marker keeps the group elements at their current size (they are not scaled).
* If the group frame is reduced so much that elements no longer fit, the group elements are reduced automatically.
* To scale group elements together with the group frame, hold **Ctrl** during the movement.

Rectangles and ellipses can be scaled to squares and circles by holding **Ctrl** while scaling or adding. The same method draws exact vertical or horizontal lines.

Exact positioning or scaling can be entered via the **Position** branch in the object properties.

Keyboard shortcuts for moving selected elements:

* **Ctrl + arrow key** - displacement 0.1 mm
* **Shift + arrow key** - displacement 1 mm

***

## Reference: Scale Layout Quick Settings

These layout interfaces provide setting options for horizontal and vertical scales. They apply to layouts containing:

* [Borehole log](borehole-logs/creating-borehole-logs.md)
* [Well design](../navigating-the-geodin-workspace/objects/well-design-data.md)
* [Data sequence](../data-collection/import/data-sequences.md)
* [Samples](../navigating-the-geodin-workspace/objects/sample-data.md)

### Vertical scale

Enter the vertical scale to use in the presentation.

**Requirements:** the layout must contain at least one of: Borehole log/Borehole Tab, Well design, Data sequence, or Sample element.

**Effect:** the layout quick setting is applied to all of the above element types present in the layout.

### Axis scale - time axis

Adjusts the time axis scale.

**Requirements:** the layout must contain at least one measurement value graphic with diagram type [Time series](time-series-charts.md) selected.

**Effect:** the time axis scale of all time series in the layout is affected.

### Axis scale - X-Axis

Adjusts the X-axis scale of an XY diagram.

**Requirements:** the layout must contain at least one measurement value graphic with diagram type [XY-diagram](layouts/x-y-diagrams.md) selected.

**Effect:** all XY-diagrams in the layout apply the selected X-axis scale.

### Axis scale - Y-Axis

Adjusts the Y-axis scale of an XY diagram.

**Requirements:** the layout must contain at least one measurement value graphic with diagram type [XY-diagram](layouts/x-y-diagrams.md) selected.

**Effect:** all XY-diagrams in the layout apply the selected Y-axis scale.
