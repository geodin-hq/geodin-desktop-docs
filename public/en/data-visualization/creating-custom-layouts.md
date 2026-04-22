---
description: >-
  This guide explains how to create a new layout in the GeoDin graphics editor
  and link it to borehole data to generate a borehole log.
---

# Creating Custom Layouts

### Step 1: Create a New Layout

Open the **GeoDin Graphics Editor** by clicking the **Edit Graphics** button located at the **bottom left of the GeoDin user interface**.

This opens the layout editor where new layouts can be created, and existing layouts can be edited.

### Step 2: Define the Page Layout

When the graphics editor opens, a **blank A4 portrait page** is created by default.

To adjust the page size or orientation:

1. Open the **Object Properties** window using **F11**.
2. Select **Page layout** at the top of the Object Properties panel.
3. Configure the required page size and orientation.

These settings define the overall layout format.

### Step 3: Create an Object Frame

An **object frame** is required to link graphic elements to database data.

1. Select one of the following tools:
   * **Single‑Object Frame** – displays data for one object (e.g. one borehole)
   * **Multi‑Object Frame** – displays multiple objects simultaneously
2. Draw a rectangle on the page to define the object frame.

In most cases, it is recommended to draw the object frame to cover **the entire page**.

> The object frame is the link between the layout and the GeoDin database. It retrieves the data that will be displayed in the graphic elements.

### Step 4: Insert Graphic Elements

In general, simple graphic elements can be added without the requirement of creating an object frame. However, for complex graphic elements, a multi-object frame as mentioned above must be created first before we add the graphic elements.

1. Select the object frame by:
   * Clicking its **top‑left corner**, or
   * Left‑clicking anywhere inside the layout while holding **CTRL key**
2. Choose the required graphic element (for example **Borehole Log**) from the left toolbar.
3. Draw the element as a rectangle **inside the object frame**.

At this stage, the layout is **not yet linked to any database object**.\
Graphic elements will therefore appear as **gray and blue dashed placeholders**.

### Step 5: Link the Layout to Data

To display real borehole data:

1. Open the **GeoDin Object Manager** (tree view on the left side of the GeoDin interface).
2. Drag the required **database object** onto the layout using **drag & drop**.

The borehole log is now displayed based on the recorded layer data.

* If no layer data exists, an **empty frame with a fuchsia dashed outline** is shown.
* A **small red circle** in the top‑left corner of the object frame indicates that the layout is linked to database data.

### Step 6: Add Additional Information

Additional information such as headers, footers, and annotations can be added using graphic elements.

You can include:

* Project information
* Borehole metadata
* Company logos
* Titles, scale bars, and notes

Use:

* **Basic graphic elements** (lines, rectangles, static text)
* **Variable text elements** to display object‑related data directly from the database

This allows layouts to be reused as **templates** across different projects and databases.

### Further Reading

More detailed information is available in the **GeoDin Help (F1)** under:

**Create and Edit Graphics**

***

### File formats and storage

Layouts can be saved in two formats:

| Format                    | Extension | Contents                | Use case                                                                |
| ------------------------- | --------- | ----------------------- | ----------------------------------------------------------------------- |
| **GeoDin Layout**         | `.GLO`    | Template only, no data  | Reusable templates                                                      |
| **GeoDin Graphic Format** | `.GGF`    | Layout + connected data | Preserving a specific graphic (e.g., a cross-section with 10 boreholes) |

Only GLO files appear in the Available Layouts overview. GGF files must be opened by drag-and-dropping them into GeoDin.

### Default and custom layout folders

Default layouts ship pre-installed in `C:\ProgramData\GeoDin\Layouts\`, organized by object type (e.g., G1 has borehole logs, stiff/parameter layouts, water content vs depth, Atterberg limits). Users can add custom layout folders via `Available Layouts > + button > browse to folder` (e.g., a network share for team-wide layouts).

{% hint style="warning" %}
When editing a default layout, always use `File > Save As` (not Save) to avoid overwriting the shipped default. If a default is accidentally overwritten, there is no built-in reset — you must request a copy from the GeoDin team. In a network installation, overwriting a default affects all users on that install.
{% endhint %}

### Layout snippets

A layout can embed another layout as a **snippet** — for example, a header/footer stored once in `Common_A4_LHF.GLO` and referenced by many templates. Changing the company logo in the snippet file automatically updates all layouts using it.

In edit mode, snippets appear as green-boxed regions that cannot be edited inline. To modify a snippet, open the snippet layout file directly. Snippets can contain other snippets, and a layout can include any number of them.

Snippets are linked by relative path, so keep them in the same folder (or subfolders) as the layouts using them. This ensures the relationship is preserved when moving layout folders.

### Drawing layers

Layouts use multiple drawing layers, visible in the **Layer Overview** panel (lower-left corner). Layers can be toggled visible/invisible, reordered, and locked. Use separate layers to isolate fixed elements (title blocks, logos) from variable graphic elements.

### Layout editor menu

The editor toolbar is divided into two sections:

* **Simple graphic elements:** lines, polygons, rectangles, text
* **Complex graphic elements:** object frame, borehole log, depth scale, samples, groundwater, data sequence, measurement value graphic, report element, well design, legend, image

{% hint style="info" %}
The in-product **F1** context-sensitive help is comprehensive on template creation topics and opens at the section matching the part of GeoDin currently in focus.
{% endhint %}

***

### Layout lists and collections

A layout list is a collection of individual layouts in a single file:

* **`.GLC` (Layout Collection)** — stores references to individual layout files. When a layout is changed, the collection automatically uses the updated version. _Recommended for new lists._
* **`.GLL` (Layout List)** — stores layouts inline. When a layout is changed, it must also be updated in the list. _`.GLL` files can no longer be created; only existing ones can be opened._

Layout lists enable **report sequences** — printing several layouts in a predefined order (e.g., master data sheet + geological profile + well design). They are also used for quick layout access in the `Create and edit graphic` method.

### Snap function

The snap function (`Ctrl+K`) provides exact alignment when drawing graphic elements. Endpoints, corners, and nodal points snap automatically to nearby existing points within a configurable distance (1-50 mm via `Preferences > Snap preferences`). Works across all drawing layers. Affected elements: lines, rectangles, polylines, and borehole profiles.

### Layout interface settings

Layout interfaces provide configuration panels for different element types:

| Interface         | Applies to                                                    |
| ----------------- | ------------------------------------------------------------- |
| **Scales**        | Borehole log, well design, data sequence, samples             |
| **Labeling**      | Text and variable text elements                               |
| **Data sequence** | Data sequence elements                                        |
| **Reports**       | Measurement value graphic elements                            |
| **Time series**   | Measurement value graphic elements (time series mode)         |
| **Selection**     | Report, data sequence, and measurement value graphic elements |
| **XY-diagram**    | Measurement value graphic elements (XY mode)                  |

### Unit systems in layouts

Display units from defined unit systems can be used in layouts. The depth scale reacts to different depth units for borehole profiles, extensions, samples, and soundings. Switching the unit system changes the displayed values without affecting the paper layout. The list of selectable unit systems can be restricted per layout.

### Column properties for reports

When configuring report columns, options include:

* **Report width:** Fix the report width so it remains consistent regardless of invisible or removed columns. Remaining column widths are calculated proportionally.
* **Horizontal orientation:** Position the report within its frame (left, center, right) — applies only when the report is narrower than the frame.
* **Vertical orientation:** Position data within the frame when content overflows to multiple pages (top or bottom).

### Property Reference: Text elements

Text elements display static or variable content in a layout. Key behaviors:

| Property                            | Description                                                                                                                                                                                                                                                                                                            |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Simple text vs Formatted text**   | Simple text uses one font throughout. Formatted text allows mixed fonts, subscript/superscript, and per-section styling within a single element — useful when variable-length data (e.g. `$LONGNAME$`) must share a text element with a fixed label. Use formatted text sparingly as it requires more processing time. |
| **Word wrap**                       | When activated, the text element can be scaled horizontally and line breaks are inserted automatically. For rotated text (angle other than 0), the maximum width must be entered manually.                                                                                                                             |
| **Line break**                      | Use the Return key or insert `\` (backslash) in the text content.                                                                                                                                                                                                                                                      |
| **Make available as quick setting** | Releases the text element for editing via layout interfaces. By default, text elements are not available in the layout interface.                                                                                                                                                                                      |
| **Element name**                    | Identifies the element in the tree view of graphic elements. Use meaningful names to keep complex layouts navigable.                                                                                                                                                                                                   |
| **Drawing layer**                   | Shows which layer the element is on. Use the "In another layer" icon to move it.                                                                                                                                                                                                                                       |
| **Arrangement (z-order)**           | Overlapping elements display in insertion order. Use "Bring to front" / "Send to back" to reorder. Within a group, arrangement changes apply only inside that group.                                                                                                                                                   |

### Property Reference: Font properties

Font properties apply to text elements, axis labels, legend labels, and other text-bearing elements throughout layouts.

| Property                    | Description                                                                                                                                                                                |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Alignment**               | Six anchor points are available. The status bar always shows position relative to the chosen alignment point. Use center or right alignment for variable-length text and centered headers. |
| **Angle**                   | Rotates the text element up to 360 degrees.                                                                                                                                                |
| **Background**              | _Transparent_ — elements behind the text show through. _Opaque_ — text is cropped against a background color (white by default; customizable).                                             |
| **Font for formatted text** | When using formatted text, font selection is done inline while editing. In the Font properties panel, only vertical alignment and background type are available.                           |

> **Tip:** The superscript function does not produce correct results with every font. Use Verdana or Tahoma instead of Arial if superscript renders incorrectly.

### Property Reference: Line and outline properties

The following line/outline properties apply uniformly to grid lines, tag lines, dividers, page margins, sample symbols, and other line-based elements.

| Property           | Description                                                                                                                                                     |
| ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Color**          | Select from the dropdown, or choose "Individually" (first entry) to open the full color dialog.                                                                 |
| **Line type**      | Select a line style from the dropdown.                                                                                                                          |
| **Line thickness** | Can be set in mm or pixels. Prefer mm — pixel thickness depends on screen resolution and does not match print output. Use pixels only for screen-only graphics. |

### Property Reference: Fill pattern and transparency

Fill pattern and color/transparency settings apply to area elements, symbol fills, and geological layer representations.

| Property                          | Description                                                                                                                       |
| --------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| **Background color**              | By default, defined in the fill pattern table. Select "User defined" to override with a custom color.                             |
| **Transparency**                  | Transparent fills allow overlaying filled areas. Not all print output devices support transparency.                               |
| **Line thickness (vector fills)** | Adjustable only for vector fill patterns; affects print output only (no visible change on screen).                                |
| **Fill pattern table**            | Select a fill pattern table and pattern for area fills. Foreground and background colors can be overridden with "User specified". |

### Property Reference: Fill calculation

Controls how area fills are determined from data fields.

| Mode                                | Description                                                                                                                                                       |
| ----------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Color and fill pattern together** | A single data field determines both the background color and the fill pattern. Hover over the dropdown to see the selected field names.                           |
| **Color and fill pattern separate** | Background color and fill pattern come from different data fields — e.g., stratigraphy defines the color while petrography defines the fill pattern drawn on top. |

### Property Reference: Symbol fill, color, and outline

Applies to symbol elements with filled areas (line-only symbols are unaffected).

| Property                  | Description                                                                                                                                               |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Fill pattern**          | Select the fill pattern for the symbol's filled areas.                                                                                                    |
| **Draw area transparent** | When enabled, the graphic background shows through unfilled areas of the symbol. When disabled, the symbol's bounding rectangle hides elements behind it. |
| **Outline line type**     | Controls the contour line style of the symbol. Color and thickness follow the standard line property rules.                                               |

### Property Reference: Variable image

The variable image element displays an image or document whose filename can optionally originate from a data field. It can be inserted into an object frame multiple times. Element name, drawing layer, and z-order properties follow the same rules as text elements.

When a variable image displays a **GeoDin map**, an additional "Map" branch appears in object properties for configuring scale, map limits, legend, and scale bar.

### Property Reference: Inserting and managing elements

| Action                   | How to                                                                                                                                                                                                    |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Insert element**       | Select the element type from the toolbar, click and drag on the page to define position and size. If a group or object frame is selected, new elements are added inside it.                               |
| **Duplicate**            | `Edit > Duplicate` or `Ctrl+D` on a selected element.                                                                                                                                                     |
| **Delete**               | `Edit > Delete` or `Del` key. `Edit > Cut` also removes the element but places it on the clipboard.                                                                                                       |
| **Select one**           | Click an element. Selected elements show 4 gray corners (lines show 2 gray corners at each end).                                                                                                          |
| **Select multiple**      | Shift+click or drag a selection frame (elements must be completely inside the frame).                                                                                                                     |
| **Select all**           | `Edit > Select All` or `Ctrl+A`.                                                                                                                                                                          |
| **Select a group frame** | Click the border area, or Ctrl+click inside the frame. Selected group frames show 4 gray side lines.                                                                                                      |
| **Select same type**     | Select one element, then `Edit > Select same objects` to select all elements of that type — useful for batch-changing fonts or styles.                                                                    |
| **Object Properties**    | Double-click an element, or press `F11`, or use `Edit > Object Properties`. Properties update automatically when selecting different elements. The panel position (left/right) can be set in Preferences. |
| **Find hidden elements** | In the tree view of graphic elements, single-click an entry to highlight it briefly with blinking blue markers. Double-click to select and edit it.                                                       |

### Property Reference: Grouping elements

| Action                 | How to                                                                                                                                                             |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Group**              | Select multiple elements, then use the Group icon or `Arrange > Group`.                                                                                            |
| **Ungroup**            | `Arrange > Ungroup` or the Ungroup icon.                                                                                                                           |
| **Lock/Unlock**        | Lock group elements to prevent accidental edits. Unlock to modify individual elements within the group (elements can only be moved/scaled within the group frame). |
| **Add to group**       | Select the group frame first, then insert the new element — it automatically becomes part of the group.                                                            |
| **Merge groups**       | `Arrange > Merge groups` combines two or more groups (or object frames) into one. This can unite different layouts into a single object frame.                     |
| **Multiple selection** | When multiple elements are selected, display/arrangement functions (move, z-order, fix/unfix) apply to all at once.                                                |

> Grouping inside a group is not possible. Geological graphic elements are already grouped and cannot be grouped further.

### Property Reference: Using palettes

Palettes provide preset fill patterns, colors, line types, fonts, and symbols that can be applied to elements with a single click, significantly speeding up layout styling.

* **Activate:** `View > Palettes` (toggle).
* **Apply:** Double-click a palette entry, or single-click then click the Apply icon. Hold Shift to apply to multiple selected elements at once.
* **Palette sections:** Fill Pattern, Colors, Line types, Fonts, Symbols.
* **Fill patterns** apply to polygon, rectangle, circle, ellipse, and symbol elements. Transfer of background/foreground color is configurable.
* **Colors** apply to line, polygon, rectangle, circle, ellipse, symbol, and text elements.
* **Line types** set style, thickness, and color for line-based elements.
* **Fonts** apply style, size, and color to text elements (other settings like angle are preserved).
* **Symbols** apply symbol type (and optionally fill pattern and line type) to symbol elements.
* **Custom palettes:** Copy an existing `.PAL` file to a new filename. The palette folder is configurable in Preferences.

### Property Reference: Importing images

The Image graphic element supports importing the following file formats:

`.bmp`, `.wmf`, `.emf`, `.png`, `.jpg`/`.jpeg`, `.tiff`, `.ggf` (GeoDin Graphic Format)

### Property Reference: Importing and exporting polylines

**Importing:** Use `File > Import > Polylines`. Polylines use the ArcInfo UNGENERATE format (`.lic`). Coordinates are transformed according to the active projection model. Maximum 8,192 nodes per polyline. Imported polylines appear red in preview; click "Add polyline(s)" to transfer them to the graph.

**Exporting:** Use `File > Export > Polylines`. Three coordinate modes are available:

| Mode                       | Description                                                                                                                                                                                |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Relative coordinates**   | 2D coordinates in mm of the drawing area (origin = top-left of page).                                                                                                                      |
| **Projection coordinates** | 2D coordinates converted via the active projection model. For cross-sections, X = distance from first node of section line, Y = absolute height.                                           |
| **Global coordinates**     | 3D coordinates (easting, northing, absolute height) recalculated from the 2D drawing using the line of section. Requires a valid cross-section construction with correct projection model. |

Export produces multiple files: `.lic` (line coordinates), `.lia` (line attributes), `.plc` (polygon coordinates), `.pla` (polygon attributes), `.pnt` (line of section), and `.log`.

> **Important:** When exporting cross-sections in global coordinates, do not move the cross-section on the paper or change the paper format after construction. If the projection model becomes invalid, GeoDin displays error codes 1-9 with specific correction instructions accessible via F1 Help.

### Property Reference: Projection model

The projection model converts between paper coordinates (cm from top-left corner) and real-world coordinate systems (e.g., meters). This is essential for site plans and geological cross-sections.

| Setting                | Description                                                                                                           |
| ---------------------- | --------------------------------------------------------------------------------------------------------------------- |
| **Point of reference** | A position on the drawing area is mapped to a projection coordinate (e.g., paper position 10,10 cm = projection 0,0). |
| **Scale**              | Set independently for X and Y axes (e.g., 1:1000 horizontal, 1:2000 vertical).                                        |
| **Direction**          | Configure whether axes increase to the right/left and up/down.                                                        |
| **Toggle**             | Switch between drawing area and projection coordinates via `Preferences > Projection`.                                |
| **Units**              | Define factors and display units; the status bar automatically selects the best unit (e.g., m vs km).                 |

The projection model is configured automatically when using the geological cross-section module.

### Property Reference: Cross-section alignment

| Feature                           | Description                                                                                                                                                                                                                                                                     |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Align to ground level (Datum)** | Select multiple object frames (`Shift+Ctrl+click`), then `Arrange > Surface level` to align boreholes vertically by their ground level elevation. The leftmost borehole is the reference. Boreholes requiring moves exceeding the page height are skipped with a warning.       |
| **Align to elevation**            | In a multi-object frame, depth is normally calculated from ground level. Enable "Align all objects to the maximum of elevation" to display at correct absolute elevation. Requires vertical datum in the general data. Use "Automatic start elevation" or enter a custom value. |
| **Datum correction**              | When boreholes use different elevation systems, select a data field containing the correction value to recalculate all elevations to a common system.                                                                                                                           |
| **Display adjusted inclination**  | Select the data field containing the borehole inclination (0 = vertical, up to 89 = nearly horizontal; 90 is invalid).                                                                                                                                                          |
| **Drawing depth options**         | _Depth_ — draw to a fixed depth below ground surface. _Cut-off_ — set a reduced level below which the cross-section is not displayed (acts as a horizontal cut line).                                                                                                           |

### Property Reference: Join layers tool

The "Join layers" tool connects geological layers between adjacent boreholes with filled polygons, either fully automatically or semi-automatically.

**Workflow:**

1. Activate the tool from the toolbar. It stays active until another tool is selected.
2. Click layers in two or more boreholes to select them (they highlight in color). Selection order does not matter — filling always starts from the leftmost borehole.
3. End the selection by right-clicking and choosing "End layer choice", or by re-clicking the tool icon.
4. In the dialog, edit the suggested fill pattern (based on the two outermost selected layers). Apply from a palette, or double-click to edit in detail.
5. Confirm with OK. Use `Edit > Undo` to remove if needed.

**Combining layers:** Hold Shift and click to extend the selection across multiple adjacent layers within one borehole. The first selected layer determines the suggested fill pattern. Shift+click a central layer to remove the entire selection for that borehole.

> It is recommended to create cross-section layer connections in a separate drawing layer from the borehole columns to simplify editing.

### Property Reference: Freehand layer drawing

Layer connections can also be drawn as freehand polygons instead of using the Join layers tool. Draw with the Polygon element — the polyline does not need to be closed. Use overlapping layers drawn front-to-back to create clean boundaries: draw the deeper layer first, then overlap with the upper layer so the upper boundary becomes the visible edge.

### Property Reference: Layout list editing

| Feature                            | Description                                                                                                                                                                       |
| ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Create/edit GLC lists**          | `File > Edit Layout List > GLC` or `File > Create New Layout List > GLC`. Add layouts with the `+` button; double-click to set the file path.                                     |
| **Reports**                        | Group layouts into named report sequences for multi-page printing (e.g., master data + geological profile + well design).                                                         |
| **Convert GLL to GLC**             | `File > Layout List > Convert` converts legacy GLL files. Layout groups and images are not included in conversion.                                                                |
| **Images (GLL only)**              | Images stored in a GLL file are embedded — the original file does not need to be available at use time. Renaming an image in the layout list manager breaks all references to it. |
| **Default layout list (GLL only)** | Set a layout list as the default, accessible via the "Default layout list" button without using File > Open.                                                                      |

### Property Reference: Legend elements and labels

| Property                       | Description                                                                                                                                                                                                |
| ------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Maximum legend symbol size** | Sets the maximum display size for legend symbols. Symbols larger than this value are scaled down.                                                                                                          |
| **Text alignment**             | Position legend labels: left, right, top, or bottom of the symbol.                                                                                                                                         |
| **Legend label content**       | Combines free text with variable data field names (e.g., `$LONGNAME$`). Use the right-click button in the entry field to access all data field names. Construction follows text macro syntax.              |
| **Translation (language)**     | Defines how dictionary-based data field contents are back-translated. Default is "Automatic" (uses the language set in the object type). If no translation exists, the abbreviation is displayed directly. |
| **List management icons**      | New, Duplicate, Delete, Move up/down, and "Edit without refresh" (for large datasets where reordering causes long recalculation). Double-click an entry to jump to its properties in the tree view.        |

### Property Reference: Layout interface quick settings

Layout interfaces allow end users to adjust layout parameters without opening the full layout editor. Elements must have "Make available as quick setting" enabled.

| Interface                     | What it controls                                                                                                    | Requirements                                                           |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| **Content for text elements** | Edit text/variable text content                                                                                     | At least one text element with quick setting enabled                   |
| **Parameter for left axis**   | Left axis parameter, view, decimal places, and label                                                                | Time series diagram                                                    |
| **Parameter for right axis**  | Right axis parameter, view, decimal places, and label                                                               | Time series diagram                                                    |
| **Axis range left Y-Axis**    | Left Y-axis scale range                                                                                             | Time series with "Draw scale and labels" enabled                       |
| **Axis range right Y-Axis**   | Right Y-axis scale range                                                                                            | Time series with "Draw scale and labels" enabled                       |
| **X-Axis range**              | X-axis range and decimal places                                                                                     | XY-diagram                                                             |
| **Y-Axis range**              | Y-axis range and decimal places                                                                                     | XY-diagram                                                             |
| **Selection parameter**       | Selector/post-selection conditions (numbers, strings, dates, HAS operator with comma-separated terms, `%` wildcard) | Elements with selectors; selectors sharing a name are updated together |

### Property Reference: Axis labeling

| Axis type          | Key settings                                                                                                                                                                                                                                                        |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Parameter axis** | Labeling option, decimal places. "Remove superfluous decimal places" strips trailing zeros — particularly useful for logarithmic axes (displays 0.001, 0.01, 0.1, 1, 10, 100, 1000). When per-series decimal places are enabled, the global setting is unavailable. |
| **Depth axis**     | Optional labeling with absolute height and selectable decimal places. Incline of a data sequence can be factored in — depth values are converted using the selected angle of incline (configure the incline data field in the Scale branch).                        |

### Property Reference: Data sequence connections

Two measurement series can be connected with a line by enabling "Connect with other parameters" and selecting the second series in the Parameter branch. The connecting line is drawn between corresponding depth values, and differences can be labeled (enable "Label differences" and configure font and decimal places in the sub-branches).

### Property Reference: Sample data labeling

| Property                  | Description                                                                                             |
| ------------------------- | ------------------------------------------------------------------------------------------------------- |
| **Show/hide sample data** | Deactivate "Sample data" to display only the graphic without text labels.                               |
| **Overlapping text**      | Allow text overlap for narrow sample intervals, or use the default staggered layout to prevent overlap. |
| **Language**              | Select the retranslation language for coded sample data from the dropdown.                              |
| **Text position**         | Align sample data labels at the top, middle, or bottom of the sample interval.                          |

### Property Reference: Paper format quick settings

Paper formats can be included as layout quick settings, allowing users to switch page size without editing the layout. The default setting includes both size and orientation; orientation selection can be removed. Custom paper sizes from other installations are marked with a warning icon and can be added to the local installation via "Add paper formats" (requires write access to the Syslib directory).

### Property Reference: North arrow and map rotation

For map elements within variable images:

| Property           | Description                                     |
| ------------------ | ----------------------------------------------- |
| **Draw**           | Toggle north arrow visibility.                  |
| **Position**       | X/Y offset from the top-left of the map window. |
| **Width/Height**   | Symbol dimensions.                              |
| **Angle**          | Map rotation angle (anticlockwise).             |
| **Rotation point** | Coordinates used as the rotation center.        |

### Property Reference: Scale bar

The horizontal scale bar appearance is configured with number of divisions, font type, size, and other display settings. Unit labeling (`m`, `ft`) is automatic when an EPSG code is defined for the cross-section objects — the unit matches the coordinate system of the EPSG code. Without an EPSG code, unit labeling must be entered manually.
