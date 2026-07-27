---
description: >-
  Set up the GeoDin Maps window: supported GIS file formats, adding map data,
  navigating with the map toolbar, interpolating, printing, and labeling layers.
---

# Getting Started with Maps

Maps can be edited in the **"Maps Modul"** window.

The window is divided into 4 areas:

1. At the top, the different tools are located in the **Toolbar**.
2. On the left, the different layers of the map are displayed in the **Legend**.
3. In the center, the map is displayed. Here, the different operations with the map data can be performed.
4. On the right side, [Display for object data](digitizing-objects.md) details are displayed in predefined layouts.

## Moving around the map window

The toolbar at the top of the map window holds the tools you reach for most often:

* **Save map** - saves the currently displayed map document.
* **Zoom to full map** - shows the entire map in the editor window.
* **Pan** - moves the visible region of the map without using the scroll bars at the side of the window.
* **Zoom** - drag a rectangle from the upper left to the lower right corner to display that region at a larger scale; drag from the lower right to the upper left and the region is displayed at a smaller scale.
* **Selection** - selects objects in the map so that operations can be run on them.
* **Object data** - links a map object to its GeoDin data and layouts.

{% hint style="success" %}
The scroll wheel of the mouse zooms in and out at the cursor position whatever tool is currently active, so you never have to switch to the **Zoom** tool just to change the scale.
{% endhint %}

When a selection contains GeoDin objects, those objects also appear in the GeoDin Object Manager under the **Objects selection** branch - location objects under **GIS selections (locations)**, measurement point objects under **GIS selections (measurement points)**. The selection modes and the **Object data** options are described under [Selection and object data tools](#selection-and-object-data-tools).

<!-- src: help/H0000005934#map-toolbar -->

## Preparing GIS data for GeoDin Maps

GeoDin Maps shows GeoDin objects in a spatial context. Map information has to first be added to the GeoDin database using the integrated document management.

### Supported file formats

The embedded GIS reads data in the following formats:

| Data type | Formats |
|---|---|
| Raster (pixel) data | TIFF, JPG, ECW, IMG |
| Vector data | SHP, DXF, CSV, MIF, KML |

Shape files (`*.shp`) are in widespread use, and they are the format we recommend for vector data. DXF works too, but it is a CAD format: it carries information that a GIS does not use, and every DXF file has to be interpreted before it can be drawn in the map window. Converting large DXF files to Shape format before use can increase the display speed significantly.

Depending on whether data is loaded straight out of the GeoDin database or through a link, stronger image compression may be needed. ECW gives good performance here - it was designed for use in GIS systems.

{% hint style="warning" %}
For copyright reasons the GeoDin team may not distribute the program libraries that ECW files need. Download the Erdas ECW/JP2 SDK from [Hexagon Geospatial](https://download.hexagongeospatial.com/downloads/ecw/erdas-ecwjp2-sdk-v54-update-1-for-windows); the package contains `NCScnet.dll`, `NCSEcw.dll`, `NCSEcwC.dll` and `NCSUtil.dll`. If another program that reads ECW files is already installed on the computer (ArcGIS, for example), those libraries are usually present already and can be used as they are.
{% endhint %}

CSV files must follow a fixed structure: the two coordinate columns first, then the attribute columns.

```csv
X,Y,FIELD_1,..,FIELD_N
18.123,55.123,value1,..,value_n
19.123,55.456,value1,..,value_n
```

Whichever format you use, GeoDin only loads GIS data into the map window once that data has been registered in the document management - either embedded in the database or linked to it. The two methods are described below.

<!-- src: help/H0000005932#file-formats -->

**Adding documents to the Document management**

1\. First the [Document management](../navigating-the-geodin-workspace/documents/managing-documents.md) is started.

2\. If required add new folders using the **New Folder** button to create an organised structure.

3\. Then choose **New document** within the hierarchy just created.

4\. Navigate to the chosen file and select it.

5\. In some cases an item is composed of several individual files with different extensions and hence cannot be added to the database. This is not only the case with SHAPE (.shp) files, but also with raster files where spatial information is stored in separate files. To resolve this GeoDin creates a link to the files that are saved outside of the database.

6\. The next step is to choose the document description type "**(DOC) GeoDin layer**". In the same dialog window the final step in the adding document process is to describe the contents of the document along with any other necessary comments. This final step can be repeated at a later date as more information becomes available.

7\. End the document management with **Close**.

**Making GeoDin data available for GeoDin Maps**

GeoDin data is made available as queries and groups. First of all a group of data has to be defined. This can be added via drag and drop from the GeoDin Object Manager to the map window. This makes a duplicate of the query available in the map and is independent of the original query and any subsequent changes that may be made to it.

Both user-defined and system queries can be shown in the map window. All the result fields defined in these queries will be available in the map window. If a field is not defined then it cannot be used for labeling or other presentation options. These fields are defined under the node " Results fields (ArcGIS/Export)" in the query.

Additionally specific layouts can be defined in the query for displaying the relevant data. Choose the button **Favourite layouts** to define which layouts are to be used for the query (these need to be multi object capable, e.g. time lines from several objects) or the results of the query (single object frame layouts).

Favourite layouts also control which templates are offered in graphic printing and editing. By default all available layouts in the selected folders or layout lists are displayed there; naming favourites narrows that list to the ones that make sense for this query, so the layout overview leads straight to the display you want. Select a layout or a layout list with the **<...>** button in the input field - only `*.GLO` and `*.GLL` files can be chosen, not `*.GGF` or `*.GLC`. If you pick a layout list, choose the particular layout or report in the second input field. Where several layouts are defined, check **Select as start layout** on one of them and the layout overview opens with that layout by default.

<!-- src: help/H0000007816#favourite-layouts -->

## Interpolation and contour lines from query result fields

If a query includes numeric result fields (e.g. chloride concentrations, groundwater levels), GeoDin Maps can generate an interpolation grid from the object locations and attribute values.

**Steps:**

1. Create a query with the numeric attribute added to the **Result fields (Export)** node (see [Parameterized Queries](../data-analysis/queries/parameterized-queries.md)).
2. In the Maps module, add the query as a layer.
3. Right-click the query layer in the Legend and choose **Actions** > **Interpolation...**.
4. Configure the interpolation method and grid resolution, then run. A colour-coded interpolation grid layer is generated.

The window that opens lists the elements of the layer; pick the interpolation field first - the parameter the interpolation is to be based on - and its values appear straight away in the preview.

**Interpolation methods:**

* **Inverse distance weighting**
* **Kriging**
* **Spline**
* **Heat-Map** - represents the number of objects in a given space, so it maps object density rather than an attribute value.

**Area to interpolate:** a submenu defines how far the interpolation reaches - the entire map, the section currently visible in the window, or the complete extent of the input layer.

<!-- src: help/H0000009015#methods-and-area -->

**Generating contour lines:**

From the interpolation result layer, right-click and choose **Generate contour lines** (German: _Konturlinien erzeugen_). Specify the contour interval. The result can be exported as a Shape file (`.shp`) for use in GIS tools.

{% hint style="info" %}
Contour lines generated in GeoDin Maps are saved as Shape files. Use the EPSG code in the layer's **Display Options** (Darstellungsoptionen) to ensure the exported Shape file has the correct coordinate system.
{% endhint %}

## Offline tile caching for OSM base maps

An OpenStreetMap (OSM) tile layer can be downloaded and cached locally for offline use - for example, on a field laptop without a reliable internet connection.

**Steps:**

1. In the Maps module, add an OSM tile layer.
2. Navigate to the area of interest and set the desired zoom levels.
3. Right-click the OSM layer in the Legend and choose the option to **cache tiles offline** (German: _Kacheln offline speichern_).
4. GeoDin downloads and stores the tiles in a local cache. The map displays from the cache when no internet connection is available.

**Saving a map section as an offline image**

The **Offline OSM map** tool takes a different route to the same result: instead of caching tiles, it writes the chosen section of the OpenStreetMap data out as an image that the map can show with no network or internet connection.

1. Check that a coordinate system is stored with the map - it is shown below the map section. This is a prerequisite for the tool.
2. Start **Offline OSM map**. A new window opens with a preview of the map section.
3. Define the area you want in the preview.
4. Confirm, then save the section as a georeferenced `*.JPG` image and add it to the current map as a layer.

<!-- src: help/H0000011141#offline-osm-map-tool -->

## Printing and exporting maps (Grafik bearbeiten)

To produce a print-quality map output with a north arrow, scale bar, and grid lines:

1. In the Maps module toolbar, click **Edit graphic** (German: _Grafik bearbeiten_) or **Print map** (German: _Karte drucken_).
2. The standard GeoDin layout/print editor opens with the current map view embedded as a map frame element.
3. Add layout elements as needed:
   * **Map frame** - the map view itself
   * **Scale bar** - from the element toolbar
   * **North arrow** - from the element toolbar
   * **Grid lines** - configured in the map frame properties
4. Export as PDF or vector format (DXF/SVG) using the standard print/export function.

{% hint style="info" %}
The map print editor is the same layout editor used for borehole logs and cross-sections. All standard layout elements and text macros are available.
{% endhint %}

{% hint style="warning" %}
Shape layers displayed in Maps must have their EPSG code set in **Display Options** (Darstellungsoptionen). Without a valid EPSG code, the layer will appear in the wrong location on the map.
{% endhint %}

### The Print map window

**Print map** opens a window in which the map currently in use is prepared for printing. The available layouts are listed on the left, the settings for the selected layout sit below that list, and the selected print layout is shown on the right. Select a **Full map** or **Current map view** branch and thumbnail previews of the maps are shown.

Two kinds of branch appear in the layout tree:

* **Current map print templates** - the layouts that were created for use as map print layouts. You can build your own map print templates with elements such as a company logo and make them available in this branch.
* **Page formats** - provided automatically by GeoDin and always available. GeoDin creates map layouts in the formats A4 to A0, in portrait and landscape, once under **Full map** and once under **Current map view**. The map or the current map view is placed automatically in the center of the page; no further elements are generated in these layouts.

<!-- src: help/H0000007494#print-map-window -->

## Triangulate

Triangulation is the division of a surface into triangles and their measurement.

Triangulation is one of the _**actions**_ in GeoDin Maps. It is selected in the context menu of point layers or queries of GeoDin objects.

Start the _**action**_ and select one of the two triangulation methods under Method in the editing window that opens:

Start the calculation with this button and get a first overview in the preview window.

Save the result in the Shape format (\*.shp). After saving, you will be asked whether the saved file should be transferred to the map and displayed. If you want this, confirm with \*\*_\<Yes>.Delaunay triangulation_

The Delaunay triangulation method creates a triangle mesh from a set of points, the triangles of which do not overlap but intermesh an arbitrarily large set of points uniformly and area-wide. The "criterion of the empty periphery" applies, i.e. there is no further point in the periphery of the three points of each triangle.

**Voronoi diagram**

(also Thiessen polygons):

In Voronoi diagrams the space is divided into regions, which are determined by their center - the respective point from the point set. The division of a region is based on the number of all spatial points that are closer to the center of that region than to any other center.

## Choose object type and destination project

Defining the type of object and the target object is the first step in digitising objects in the maps module. Various settings can be made in a new window that opens when the function is started.

In the **object type** field, the type of object to be created can be selected; only object types that provide GEOWKT geometry tables are permitted. These object types (e.g. examination areas) must be installed beforehand.

In the next section, the project assignment for the new object is defined. There are two possibilities for this:

1. Manual assignment: simple selection of the project in which the object is to be saved later.
2. Definition via a field of a map layer: the field must contain the PRJID (for this case, use the button **<...>** in field "Take from map" and select the corresponding field in the new window).

## Protecting and backing up maps

To let users work with prepared map templates without being able to save them over with changes (so the templates are never overwritten or deleted), there are two approaches:

1. **Restrict write access (client/server databases only)** - grant users SELECT-only rights on the document tables, with no UPDATE rights, so map templates cannot be overwritten. This is not possible with MS Access databases (`*.mdb`, `*.accdb`).

   {% hint style="warning" %}
   Restricting write access this way affects **all document types**, not only maps - photos, reports, and every other document share the same underlying table, so removing update rights locks out changes to all of them.
   {% endhint %}

2. **Save the map as an external file (any database)** - select the map in the document management and use **Save document as** to save it as an external `*.GGM` file in a folder of your choice. If a map is later altered in a way that was not intended, the saved `*.GGM` file can be re-inserted as a document to restore the original version.

<!-- src: support/maps-schuetzen#protect-and-backup -->

***

## Reference: Map Tools and Layer Properties

### Selection and object data tools

Two tools on the map toolbar do more than change the view.

**Selection** picks objects out of the map so that operations can be run on them. Its **Selection mode** setting decides what a click, or a dragged rectangle, does:

| Selection mode | Effect |
|---|---|
| Create new selection | Each click or rectangle creates a new selection. Objects selected before are deselected, unless they are included in the new selection. |
| Add to selection | The existing selection is kept and newly selected objects are added to it. Holding the \[Shift\] key while selecting has the same effect. |
| Remove from selection | The selected objects are removed from the current selection. Holding the \[Shift\] key while clicking objects has the same effect. |

**Set selection layer** limits how far the tool reaches:

* **Top layer** - only objects from the top layer are selected.
* **Active layer** - only objects from the layer marked as active in the Legend are selected.
* **All layers** - objects from any layer are selected.

**Object data** creates links to object data:

* **Portal link** - links the selected object to a chosen portal layout, so its details are displayed on the right side of the map window.
* **Data management** - starts data management for the current object.
* **Edit graphic** - starts the graphics editor.
* **Measurement data** - starts the measurement data method for the current object.

<!-- src: help/H0000005934#selection-and-object-data -->

### Toolbar buttons

**Select Layout** - Displays the available layouts for the layer shown in the map; choose a layout from the list to link the selected object(s) to it.

**Previous / Next Layout** - Navigate through layouts that were previously used.

**Zoom in** - Increases the display size of the selected area; a single click doubles the zoom and centres the clicked point; a rectangle can also be drawn to zoom to that area.

**Zoom out** - Reduces the display size of the selected area.

**Pan** - Moves the displayed area without using scroll bars.

**View full page** - Displays the entire page in the object detail view.

**Next view / Previous view** - Navigates between pages of a multi-page object detail view (e.g. reports).

**Hide object details** - Hides the object detail view, collapsing it to a slim bar on the right; click the bar or the arrow button to restore it.

**Measure distance** - Activates a line-drawing tool that measures distances between user-set points; right-click to end. The unit system (map units, metric, or Anglo-American) is configurable in the distance settings.

**More tools** - Opens a menu with the further tools available in GeoDin Maps: **Information**, **Measure distance** (also available directly on the toolbar), **Attribute table**, **Load elevation data**, and **Search in polygons**.

**Information** - Click an object in the map and a pop-up window shows that object's attribute values.

**Attribute table** - Opens the attribute table of the layer, listing its records and fields.

<!-- src: help/H0000008789#more-tools -->


**Load elevation data (SRTM)** - Downloads SRTM elevation data from the internet for the currently visible map section, or uses cached data if available. The result can be saved as a grid file (`*.grd`) and added as a map layer.

**Key date measurement** - Selects boreholes or measurement values that have a recorded value for a chosen parameter on a specific date or within a defined tolerance; results can be saved as a Shape file (`*.shp`) and added as a new map layer.

### Map properties

**Hide GeoDin Object Manager when the map is opened** - Hides the Object Manager automatically when the map is opened to maximise map display area; the Object Manager can be re-shown at any time.

**Create detail view automatically, if the data are linked** - If layers are linked to favourite layouts, the object detail view opens automatically when an object with an available layout is selected.

**Number of decimal places for the coordinate display** - Controls how many decimal places are shown in the coordinate display.

**EPSG code** - Click "?" to define or verify the EPSG code for the coordinate system used in the map.

**Status information** - Displays layer type and load time information.

### Initial view

**Zoom to map limits** - Default: opens the map zoomed to the full data extent.

**User defined** - Allows the map centre and scale to be set manually; use the \<take from map> button to capture the current view as the initial view.

### Grid layer tab

The **Grid** tab appears only when the selected layer is recognised as a grid layer. It manages colour zones for grid value ranges:

* **+** / **-** / **X** buttons - Add, delete the selected zone, or delete all zones from the Zone list.
* **Color button** - Opens the Color dialog to assign a colour to the selected zone.
* **Min / Max** - Lower and upper value limits for the selected zone.
* **Legend** - Name of the zone as it appears in the Legend panel.
* **Shadow** - When checked, treats the grid layer as a height map and renders a shadow effect as if light comes from the left.

### Line layer tab

The **Line** tab controls the visual appearance of line layers. Key properties across its subtabs:

**Line subtab** - Style, width, colour, bitmap fill, pattern, symbol (character/image), symbol gap, symbol rotation, and Include in legend option.

**Outline subtab** - Style, width, colour, bitmap, pattern, and Include in legend option for the outline drawn around the line.

**Smart size subtab** - Minimum width factor (in current scale units) below which a line is not rendered; optionally driven by an attribute field.

### Area layer tab

The **Area** tab controls the visual appearance of polygon layers. Key properties across its subtabs:

**Area subtab** - Pattern, bitmap, colour, symbol type and gap/rotation/size, and Include in legend option.

**Outline subtab** - Style, width, colour, bitmap, pattern, symbol (with gap/rotation), and Include in legend option for the polygon outline.

**Smart size subtab** - Minimum polygon size factor below which it is not rendered; optionally driven by an attribute field.

### Label layer tab

The **Label** tab controls the text drawn for the features of a layer. Like the Line and Area tabs it is organized into subtabs. **Include in legend** (show the label symbol of the current section in the Legend panel) and **Visible** (draw the labels of the current section in the map area) are repeated on every subtab.

**Label subtab** - Maximum label **Width** and **Height**, background **Color** (check **Use renderer** to take the global settings from the **Renderer** tab instead), a background **Bitmap** or **Pattern** in place of the color, and the label **Font**. Two properties decide what the label actually says:

* **Field** - the attribute whose values are displayed as the labels.
* **Value** - if this is not blank, a formatted combination of fixed text and attributes is displayed as the label instead of the attribute named in **Field**.

**Outline subtab** - **Style**, **Width**, **Color** (each with a **Use renderer** option), **Bitmap** and **Pattern** of the outline drawn around the label.

**Smart size subtab** - **Size** is the factor stating how big a shape must be at the current scale before its label is rendered at all; **Field** lets an attribute drive that size instead of a fixed factor.

**Position subtab** - Placement is set with nine checkboxes, numbered like a keypad around the reference position:

| Number | Position |
|---|---|
| 5 | The reference position itself - the shape centroid, or the optimal point inside the shape if the centroid falls outside it |
| 1 / 2 / 3 | Top-left / over / top-right with respect to the reference |
| 4 / 6 | Left-hand side / right-hand side of the reference |
| 7 / 8 / 9 | Bottom-left / under / bottom-right with respect to the reference |

The order in which the boxes are checked decides the position priority: when GeoDin Maps cannot put the label in one position, it tries the position with the next-lower priority. The remaining options on this subtab:

* **Flow** - GeoDin Maps always tries to position the label in the optimal place.
* **Alignment** - **Single line** displays only the first line of the label; **Left justify**, **Center** and **Right justify** align the text within the label extent; **Follow** displays only the first line, in the best place or, for line-type shapes, along the line.
* **Avoid overlap** - labels never overlap each other.
* **Avoid duplicates** - where more than one shape shares the value used in the label definition, only the label of the shape with the lowest `GIS_UID` value is displayed.
* **Label Rotate** - rotation of the label in degrees.

#### Formatting a Value expression

The **Value** field takes a simple markup language, so a label can combine fixed text, visual formatting, and attribute values.

Visual formatting uses a subset of the standard HTML markers: `<B>...</B>` (bold, also available as `<BOL>...</BOL>` for compatibility with other GIS products), `<I>...</I>` (italic), `<U>...</U>` (underline), `<STRONG>...</STRONG>` (extra bold), `<P>...</P>` (paragraph), `<HR>` (horizontal line) and `<BR>` (line break). `<FONT SIZE="S" NAME="F" COLOR="C">...</FONT>` sets size, font name (ARIAL, TIMES, TAHOMA and so on) and color - either a name (BLACK, BLUE, FUCHSIA, GRAY, GREEN, LIME, MAROON, NAVY, OLIVE, PURPLE, RED, SILVER, TEAL, WHITE, YELLOW) or an RGB value in `#RRGGBB` form. The entities `&amp;`, `&nbsp;`, `&gt;` and `&lt;` insert an ampersand, a forced space, and the greater-than and less-than signs.

Attribute values are inserted with `{FIELD_NAME:FORMAT}`, where `FIELD_NAME` is the attribute and `FORMAT` is a format string specific to the attribute type. Omitting the format string displays the raw value.

Number and float formats:

| Character | Name | Description |
|---|---|---|
| `C` / `c` | Currency | The integer next to the character sets the number of most significant digits displayed. |
| `D` / `d` | Decimal | Minimum number of digits; padded with zeroes if needed, non-integral values are rounded first. |
| `E` / `e` | Scientific | Digits after the decimal point (default 2); always displayed in exponential form. |
| `F` / `f` | Fixed-point | Digits after the decimal point (default 2). |
| `G` / `g` | General | Best-suited form; the integer sets the number of significant digits. |
| `N` / `n` | Number | Digits after the decimal point (default 2), with thousand separators from the system settings. |
| `P` / `p` | Percent | The number is multiplied by 100; the integer sets the digits after the decimal point (default 2). |
| `X` / `x` | Hexadecimal | Minimum number of hexadecimal digits, padded with zeroes; non-integral values are rounded first. |

Numbers can also be formatted with a custom picture: `#` is an optional digit position (dropped when there is no digit for it), `0` is an obligatory digit position (filled with `0` when there is no digit), and `.` marks the decimal point. Any other character is displayed unchanged. The code `###.#` renders the value 57.28 as 57.3; the code `000.0` renders it as 057.3.

Boolean attributes are displayed as `True` or `False`.

Date formats use the usual placeholders, where repeating a character pads or expands the output: `d`, `dd`, `ddd` and `dddd` for the day (number, padded number, abbreviated and full weekday name), `M`, `MM`, `MMM` and `MMMM` for the month, `y` through `yyyy` for the year, `h`/`hh` for the 12-hour clock and `H`/`HH` for the 24-hour clock, `m`/`mm` for minutes, `s`/`ss` for seconds, and `t`/`tt` for the AM/PM string. Name and abbreviation forms follow the system regional settings; any other character is displayed unchanged.

String formats combine a case character with optional position numbers: `$` displays the text unchanged, `S` in uppercase and `s` in lowercase. A number before the case character sets the first character to display and a number after it sets the last; negative numbers count from the end of the string. For the value `Abcdefghij`, `{FIELD_NAME:S}` gives `ABCDEFGHIJ`, `{FIELD_NAME:1S3}` gives `ABC`, `{FIELD_NAME:-3$-1}` gives `hij`, and `{FIELD_NAME:4$-4}` gives `defg`.

<!-- src: help/H0000007902#label-tab -->

### Clipping

GeoDin can clip a grid layer to a defined area using a polygon layer as a mask. Steps: open **Map Manager** and load objects -> right-click the target layer -> **Actions** > **Clipping** -> select the polygon layer defining the clip boundary -> run. The resulting clipped grid (`*.grd`) can be saved and added as a new map layer. If an overlapping background colour appears, adjust the transparent value range under **Display options** > **Grid** for that layer.

### Grid to polygon

Converts grid (raster) data to vector polygons, similar to contour line generation but producing filled polygons. Key options:

* **Decimal places** - Precision of calculated values.
* **Fieldname** - Attribute column name in the output Shape file to store the polygon value.
* **Tolerance** - Controls how many polygons are created; lower tolerance = more polygons.
* **Ignore "NoData" values** - Excludes NoData values (e.g. −9999) from polygon generation; recommended in most cases.
* **Split equal value polygons** - When enabled, polygons of the same value are created as separate simple polygons rather than a single multi-polygon.

The result is saved as a Shape file (`*.shp`) and can be added directly to the map.

### Publish database for GeoDin Map Viewer (MapReporter)

Publishing a database for the GeoDin MapReporter is a two-step process:

1. **Generate a request key** - Click OK to generate a key for the database and send it to the GeoDin support team by email. The key is database-specific and must be regenerated if database contents change after the key was issued.
2. **Enter the activation key** - After receiving the activation key from GeoDin support, enter it in the second step of the assistant and select an output directory.

The output directory must contain a `/MapReporterTemplate` subdirectory with the following subfolders: `BIN` (MapReporter.exe), `LAYOUTS`, `QUERYDEF`, `SYSLIB`, and `HELP`. The complete MapReport package (database, linked documents, and template files) is written to the output directory and can be used directly from CD or USB without installation.

**Note:** Changes to the database after the request key was generated will invalidate the activation key - finalise database work before publishing.
