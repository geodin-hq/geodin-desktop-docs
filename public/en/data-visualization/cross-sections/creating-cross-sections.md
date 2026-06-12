# Creating Cross Sections

A cross section in GeoDin is a vertical slice through the ground that displays borehole data — logs, samples, groundwater levels, and data sequences — projected onto a user-defined line of section. This page is a reference for the cross-section window panels and their settings. For layout element options (axis ranges, data sequence display, layout lists), see [Cross Section Layouts](cross-section-layouts.md).

## Reference: Cross-section panels

### Objects

By selecting the **Objects** branch in the cross-section object properties tree, the **Cross-section: Objects** window opens. The window is freely scalable and stays visible until another branch is selected or the window is closed.

Objects for the cross section can be added directly by drag and drop from the GeoDin object manager. Single objects, queries, or groups can be selected and dropped onto the list or the site plan. If an object is already included in the list, it is not added again.

Objects can be loaded from any database or project — data for a cross section does not need to be stored in a single project or database.

In the site plan, loaded objects are shown with a marker and label. The site plan can be zoomed and panned with the available tools.

**Borehole list**

The selected boreholes are displayed in a site plan. An object can be selected either in the list or in the site plan — it appears in red in the site plan and is highlighted in the list. The coordinates, elevation, and depth of the selected object are shown below the list.

Use the **Remove** button to remove an object from the list; it is also removed from the site plan.

**Coordinate transformation**

If borehole coordinates span different meridian zones (Gauss-Krüger coordinate system), use the zone selector to transform all coordinates into a single zone. The site plan updates accordingly, making it possible to define a continuous line of section.

If boreholes are on the southern hemisphere (Y coordinate increasing downward), enable **Southern hemisphere** to mirror the site plan.

Object coordinates can be multiplied by a selectable factor if required.

Switching between cross-section parts (objects, line of section, scales, cross-section scenarios) is possible by clicking directly on the branch in the object properties window, or by using the buttons in the upper right of the window.

### Line of section

By selecting the **Line of section** branch, the **Cross-section: Line of section** window opens. The window is freely scalable and stays visible until another branch is selected or the window is closed.

Two tools are available for defining the line of section:

* The first tool defines the line of section itself. The line can contain any number of nodal points; the position of each nodal point can be edited.
* The second tool projects objects onto the line of section. Objects are always projected at a right angle using the shortest distance to the line. Clicking a projected object deselects it. Objects already used as nodal points cannot be projected again.

The line of section can be built by connecting individual objects as nodal points, with additional objects projected onto the line. It is also possible to define nodal points freely without objects, then project all objects onto the resulting line.

The table on the right lists all nodal points and objects used as nodal points, with their coordinates. Coordinates of nodal points can be edited directly in the table. If a nodal point coincides exactly with an object, the object name is shown. Changing the coordinates of such a nodal point disconnects it from the object (the object can still be projected onto the line). Nodal points that are not needed can be removed with the **Remove nodal point** button.

The entire line of section can be deleted with the **Remove line of section** button.

**Saving and loading a line of section**

The line of section can be saved to a file with the **Save line of section** function. Each nodal point's coordinates are saved in LIN format (ASCII):

```
1
4444440.00000 5555200.00000
4444418.67902 5555150.35802
4444450.00000 5555100.00000
4444410.00000 5555050.00000
END
END
```

A saved line of section can be reloaded with the **Load line of section** function. This also allows importing lines of section from other programs, provided they are stored in LIN format.

### Cross-section scenarios

Scenarios define which graphic elements are shown for each borehole in the cross section. A scenario contains one graphic element (a scene) to be applied across all selected boreholes. Example scenes: a borehole log scene, or a variable text element showing the borehole name.

All depth-related graphic elements can be used in a scene: borehole logs, data sequences (cone penetration tests, geophysical logging data, sample data), well design, and groundwater levels.

**Available scene types**

| Scene | Description |
|---|---|
| Distance ruler | Horizontal labelling line shown beneath the cross section |
| Well design | Well construction elements |
| Report | Tabular data report |
| Borehole profile | Borehole log |
| Ground surface | Surface elevation line |
| Groundwater | Groundwater level |
| Depth scale | Vertical depth scale bar |
| Legend for borehole profiles | Legend items for profiles, symbols, samples, and groundwater |
| Measurement graphic | Data sequence graph (CPT, geophysical, sample data) |
| Samples | Sample markers |
| Special features | Special feature symbols |
| Data sequences | Data sequence values |
| Symbols | Object symbols |
| Variable text | Text element pulling values from the database |

By default, the borehole log, borehole name (variable text), and two scale bars are selected. Additional scenes can be added, removed, or modified.

Use the **Add** button to add more scenes and select the graphic element type. The drawing order follows the sequence in the list — the top scene is drawn first, the bottom scene last. Change the order with the arrow buttons. In cases of overlap, drawing order determines which element appears on top.

Cross-section scenarios can be saved and loaded independently of boreholes (file format: `*.gsz`). Click **Save** to store the scenario (`*.gsz`); **Load** applies a saved scenario to another cross section. All predefined scenes are available and can be adjusted as required. Multiple scenario files can be created for different cross-section themes.

## Reference: Scene settings

### Cross section scene

For each scene, a name can be assigned and its visibility toggled (shown or hidden in the graphic).

**Element width**

The display width of the scene element can be set manually or left on **Automatic**, which lets the cross-section module calculate a reasonable default width. For data sequences such as penetration tests that require a specific width, enter the value here. Widths from 1 to 100 mm are accepted.

**Element height**

Available for measurement graphics only. Sets the desired height of the scene in the graphic.

**Relative scenario position**

The position of each scene element relative to the anchor point of the object can be adjusted horizontally for all elements. Variable text elements can also be moved vertically.

The anchor point (X:0, Y:0) is the calculated position of the object in the cross section based on its coordinates and elevation. Example positions:

* **Borehole log** — drawn directly on the anchor point (X:0, Y:0)
* **Scale bar** — drawn 20 mm to the left: X:−20, Y:0
* **Groundwater symbol** — drawn 10 mm to the right: X:10, Y:0
* **Borehole name (variable text, top-aligned)** — shown above the borehole: X:0, Y:−5
* **End depth (variable text, bottom-aligned)** — shown below the borehole log: X:−5, Y:5

**Using scenes**

Select whether the scene is applied to all objects in the cross section (default), or only to the first object on the left and the first on the right. The latter option is intended for scale bars, which typically appear only at the outer edges of the cross section. Individual object assignment can be configured under [Objects](#objects).

### Column properties

**Creating columns**

In addition to manually creating columns, you can automate this process based on data fields from the chosen data source. This option is useful for reports designed for export (for example, Excel). Further column heading options and formatting of automatic macros can be defined under **Options**. It is better to use a fixed report width, independent of the number of columns.

**Report width**

Define whether your report should have a fixed width.

With this setting you can fix the report width even if there are invisible or removed (if empty) columns. Each remaining column has its width calculated proportionally to the report width.

**Example:**

| Column | Defined width | Visible |
|---|---|---|
| Column 1 | 20 mm | Yes |
| Column 2 | 40 mm | Yes |
| Column 3 | 50 mm | Yes |
| Column 4 | 30 mm | Yes |
| Column 5 | 10 mm | No (invisible) |
| Column 6 | 20 mm | No (invisible) |

Fixed report width: 200 mm. Sum of visible columns: 20 + 40 + 50 + 30 = 140 mm.

Resulting widths: Column 1 = 29 mm · Column 2 = 57 mm · Column 3 = 71 mm · Column 4 = 43 mm

**Horizontal report orientation**

This setting is only active when the report width is not fixed and columns are either invisible or empty columns are removed. In that case the report will be smaller than the element frame allows, and can be positioned horizontally. The default orientation is left.

**Vertical report orientation**

This setting is only available when the report data overflows one page. The default orientation is top.

{% hint style="info" %}
Both orientation settings are independent of element anchors, as they relate only to their respective element container.
{% endhint %}

## Reference: Display settings

### Undo

Sets the maximum number of undo steps and the maximum memory available for the **Undo changes** function. The current memory capacity in use is displayed.

If large cross-section graphics are created frequently and sufficient RAM is available, increase the maximum memory allocation.

{% hint style="info" %}
Setting the maximum number of steps to 0 deactivates the undo function.
{% endhint %}

### Show filters

When an existing well design is added to a groundwater measurement point, this option adds the filter length to the borehole cross-section display.

### Snap

The snap distance — the maximum distance within which one point automatically connects to another — can be set between 1 and 50 mm. The snap distance is configured via **Preferences** > **Snap preferences**.

Graphic elements whose nodes are affected by the snap function: line, rectangle, polyline, and borehole profile.

### Line types

Sets the line type for separating lines between subsections of the interbedding.

A line or outline is shown in the chosen color and line type. To use a color not in the drop-down, select **Individually** at the top of the list and choose a custom color in the color dialog.

Line thickness can be set in mm or pixels. Prefer mm: thickness in mm is independent of print resolution, so the preview may differ from print output. Pixel-based thickness is only appropriate for graphics viewed on screen only.

### View

Defines options for the scale bar element.

**Number of main divisions**

Select how many divisions to display. The scale bar contains n+1 sections, where n is the number entered.

**Alignment**

The scale bar element has a dynamic size that adjusts relative to the configured percentage and is rounded to a common scale. This option sets whether the anchor point is the left or right edge of the scale bar.

Example: a scale bar set to 25% of the map might resolve to 5 cm → exact value 8,223 m → rounded to 8,000 m → the element is slightly smaller than the original 25%.

### Distance ruler

The **Distance ruler** scene adds horizontal labelling to the objects shown in the cross section (for example, distances between boreholes). Rulers are arranged in a horizontal line, usually shown beneath the cross section. Each ruler is a configurable rectangle with the required labelling content.

The ruler starts at the position of the first cross-section object and ends at the last object on the right. The relative start and end positions can be adjusted with the two **Position** entry fields.

For labelling options, see [Cross Section Layouts](cross-section-layouts.md).

## Reference: Import layer boundaries

Layer boundaries from external files can be imported using **File** > **Import** > **Layer boundaries**. An existing profile cross section in the current graph is required before importing.

Use the **Import file** icon to open the file. The file must contain four columns in space-delimited ASCII format:

| Column | Content |
|---|---|
| 1 | 0 (constant) |
| 2 | Easting |
| 3 | Northing |
| 4 | Elevation |

Example:

```
0 4444440.00000 5555200.00000 50.2
0 4444425.00000 5555180.00000 50.7
0 4444430.00000 5555150.00000 50.3
0 4444450.00000 5555100.00000 51.1
0 4444410.00000 5555050.00000 50.3
END
```

{% hint style="warning" %}
The coordinate systems used in the cross section and in the import file must match and must be at right angles.
{% endhint %}

The polyline from the file is shown in the left preview so it can be checked against the actual line of section. Elevation values for coordinates that do not align exactly with the line of section are projected perpendicularly onto it.

Use the **Add layer boundary** button to transfer polylines into the graph. Multiple layer boundaries can be imported without closing the dialog.

***

For axis ranges, scales, and labeling options, see [Cross Section Layouts](cross-section-layouts.md).
