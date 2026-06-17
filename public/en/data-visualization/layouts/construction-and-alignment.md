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

## Importing and exporting polylines

**Importing:** Use `File > Import > Polylines`. Polylines use the ArcInfo UNGENERATE format (`.lic`). Coordinates are transformed according to the active projection model. Maximum 8,192 nodes per polyline. Imported polylines appear red in preview; click "Add polyline(s)" to transfer them to the graph.

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
