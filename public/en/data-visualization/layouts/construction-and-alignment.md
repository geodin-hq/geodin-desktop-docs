---
description: Projection model, cross-section alignment, layer joining and freehand drawing, polylines, north arrow, scale bar, and report column properties.
---

# Construction and Alignment

This page is part of the [Creating Custom Layouts](../creating-custom-layouts.md) family. It covers the geometric and spatial tools available in the layout editor: the projection model that links paper coordinates to real-world coordinates, alignment options for cross-section boreholes, tools for drawing and connecting geological layers, polyline import/export, and display properties for the north arrow, scale bar, and report columns.

## Projection model

The projection model converts between paper coordinates (cm from top-left corner) and real-world coordinate systems (e.g., meters). This is essential for site plans and geological cross-sections.

| Setting                | Description                                                                                                           |
| ---------------------- | --------------------------------------------------------------------------------------------------------------------- |
| **Point of reference** | A position on the drawing area is mapped to a projection coordinate (e.g., paper position 10,10 cm = projection 0,0). |
| **Scale**              | Set independently for X and Y axes (e.g., 1:1000 horizontal, 1:2000 vertical).                                        |
| **Direction**          | Configure whether axes increase to the right/left and up/down.                                                        |
| **Toggle**             | Switch between drawing area and projection coordinates via `Preferences > Projection`.                                |
| **Units**              | Define factors and display units; the status bar automatically selects the best unit (e.g., m vs km).                 |

The projection model is configured automatically when using the geological cross-section module.

## Cross-section alignment

| Feature                           | Description                                                                                                                                                                                                                                                                     |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Align to ground level (Datum)** | Select multiple object frames (`Shift+Ctrl+click`), then `Arrange > Surface level` to align boreholes vertically by their ground level elevation. The leftmost borehole is the reference. Boreholes requiring moves exceeding the page height are skipped with a warning.       |
| **Align to elevation**            | In a multi-object frame, depth is normally calculated from ground level. Enable "Align all objects to the maximum of elevation" to display at correct absolute elevation. Requires vertical datum in the general data. Use "Automatic start elevation" or enter a custom value. |
| **Datum correction**              | When boreholes use different elevation systems, select a data field containing the correction value to recalculate all elevations to a common system.                                                                                                                           |
| **Display adjusted inclination**  | Select the data field containing the borehole inclination (0 = vertical, up to 89 = nearly horizontal; 90 is invalid).                                                                                                                                                          |
| **Drawing depth options**         | _Depth_ - draw to a fixed depth below ground surface. _Cut-off_ - set a reduced level below which the cross-section is not displayed (acts as a horizontal cut line).                                                                                                           |

<!-- src: help/H0000007402#datum-correction -->

**Datum correction in detail.** The general-data field selected under **Data field to correct the vertical datum** can hold either a numeric offset per object or a key referring to a dictionary entry. With a dictionary, the difference to the reference datum system is stored in the dictionary and the number in the entry's **Standard** field is used. The value found is added to the elevation of the object's start point.

*Example:* a cross-section uses four boreholes measured in two elevation systems - boreholes 1 and 2 in system A, boreholes 3 and 4 in system B. The section is built in system A, whose elevations are 10 m higher than system B. Enter the difference to the primary datum system in a `DATUM SYSTEM` field for each borehole: 0 for boreholes 1 and 2, 10 for boreholes 3 and 4. Selecting `DATUM SYSTEM` as the correction field raises boreholes 3 and 4 by 10 m so all four sit in system A.

## Join layers tool

The "Join layers" tool connects geological layers between adjacent boreholes with filled polygons, either fully automatically or semi-automatically.

**Workflow:**

1. Activate the tool from the toolbar. It stays active until another tool is selected.
2. Click layers in two or more boreholes to select them (they highlight in color). Selection order does not matter - filling always starts from the leftmost borehole.
3. End the selection by right-clicking and choosing "End layer choice", or by re-clicking the tool icon.
4. In the dialog, edit the suggested fill pattern (based on the two outermost selected layers). Apply from a palette, or double-click to edit in detail.
5. Confirm with OK. Use `Edit > Undo` to remove if needed.

**Combining layers:** Hold Shift and click to extend the selection across multiple adjacent layers within one borehole. The first selected layer determines the suggested fill pattern. Shift+click a central layer to remove the entire selection for that borehole.

{% hint style="info" %}
Create cross-section layer connections in a separate drawing layer from the borehole columns to simplify editing.
{% endhint %}

## Freehand layer drawing

Layer connections can also be drawn as freehand polygons instead of using the Join layers tool. Draw with the Polygon element - the polyline does not need to be closed. Use overlapping layers drawn front-to-back to create clean boundaries: draw the deeper layer first, then overlap with the upper layer so the upper boundary becomes the visible edge.

<!-- src: help/H0000001955#drawing-and-editing-polylines -->

**Drawing a polyline.** Place the individual nodes with left mouse clicks and finish the polyline with a double-click. Two behaviors follow from the fill and node count: a polyline filled with a pattern is automatically closed into a polygon, and a polyline with only two nodes is converted into the graphic element **Line**, which therefore cannot be filled.

**Editing nodes.** Select the polyline first, then activate the **Edit polygon** tool. With the tool active:

* **Move a node** - click it and drag it to the new position.
* **Delete a node** - click it (the selected node is marked black) and press `Del`.
* **Add a node** - hold `Ctrl` and click at the position where the node should be inserted.

Activate `Preferences > Show polygon points` to display the nodes of all polygons on screen, which makes it easier to align polygons with one another or position them precisely.

## Importing and exporting polylines

**Importing:** Use `File > Import > Polylines`. Polylines use the ArcInfo UNGENERATE format (`.lic`). Coordinates are transformed according to the active projection model. Maximum 8,192 nodes per polyline. Imported polylines appear red in preview; click "Add polyline(s)" to transfer them to the graph.

<!-- src: help/H0000003486#projection-options -->

**Projection at import time.** If the imported coordinates are not already relative coordinates, transform them with the **Projection parameter** option. With **-Activate projection-** deactivated in the **Projection parameters** dialog, the imported coordinates are interpreted as relative coordinates. With projection active, every imported point is multiplied by the factor in the **Unit** entry field and then converted into relative coordinates; click the **Recalculation** icon to apply a new factor.

The insertion position depends on the coordinate system of the open GeoDin graph. By default a graph starts at the upper-left corner with coordinates (0,0) and increases to the right and downwards in centimeters, so an A4 page runs from X=0, Y=0 at the top left to X=21.00, Y=29.70 at the bottom right. If a polyline exceeds 8,192 nodes, the import stops at that node and a warning is shown.

<!-- src: help/H0000003486#ungenerate-file-structure -->

**UNGENERATE file structure.** The ASCII file repeats one block per polyline:

```
ID XP YP
X1 Y1
X2 Y2
... ...
Xn Yn
END
ID XP YP
X1 Y1
X2 Y2
... ...
Xn Yn
END
END
```

`ID` is any ident number of the line, `XP` and `YP` are the coordinates of the ident point. None of the three is analyzed, so all can be `0`, but the first line of each polyline must still obey the syntax. `X1 Y1` to `Xn Yn` are the coordinate pairs of the polyline's nodes. Each polyline is closed with `END` at the start of a line, and the file itself is closed with a further `END`, so the last two lines both read `END`. The decimal separator is always a point.

*Example* - a file with two polylines of three coordinate pairs each:

```
0 0 0
10 12
15 12
15 16
END
0 0 0
4.5 5.1
7.5 11.3
4.3 7.7
END
END
```

**Exporting:** Use `File > Export > Polylines`. Three coordinate modes are available:

| Mode                       | Description                                                                                                                                                                                |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Relative coordinates**   | 2D coordinates in mm of the drawing area (origin = top-left of page).                                                                                                                      |
| **Projection coordinates** | 2D coordinates converted via the active projection model. For cross-sections, X = distance from first node of section line, Y = absolute height.                                           |
| **Global coordinates**     | 3D coordinates (easting, northing, absolute height) recalculated from the 2D drawing using the line of section. Requires a valid cross-section construction with correct projection model. |

Export produces multiple files: `.lic` (line coordinates), `.lia` (line attributes), `.plc` (polygon coordinates), `.pla` (polygon attributes), `.pnt` (line of section), and `.log`.

{% hint style="warning" %}
When exporting cross-sections in global coordinates, do not move the cross-section on the paper or change the paper format after construction. If the projection model becomes invalid, GeoDin displays error codes 1-9 with specific correction instructions accessible via F1 Help.
{% endhint %}

## North arrow and map rotation

For map elements within variable images:

| Property           | Description                                     |
| ------------------ | ----------------------------------------------- |
| **Draw**           | Toggle north arrow visibility.                  |
| **Position**       | X/Y offset from the top-left of the map window. |
| **Width/Height**   | Symbol dimensions.                              |
| **Angle**          | Map rotation angle (anticlockwise).             |
| **Rotation point** | Coordinates used as the rotation center.        |

## Scale bar

The horizontal scale bar appearance is configured with number of divisions, font type, size, and other display settings. Unit labeling (`m`, `ft`) is automatic when an EPSG code is defined for the cross-section objects - the unit matches the coordinate system of the EPSG code. Without an EPSG code, unit labeling must be entered manually.

## Column properties for reports

When configuring report columns, options include:

* **Report width:** Fix the report width so it remains consistent regardless of invisible or removed columns. Remaining column widths are calculated proportionally.
* **Horizontal orientation:** Position the report within its frame (left, center, right) - applies only when the report is narrower than the frame.
* **Vertical orientation:** Position data within the frame when content overflows to multiple pages (top or bottom).
