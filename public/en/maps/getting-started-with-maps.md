---
description: Getting Started with Maps
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Getting Started with Maps

### Maps


Maps can be edited in the **\"Maps Modul\"** window.

The window is divided into 4 areas:

1.  At the top, the different tools are located in the **Toolbar**.

2.  On the left, the different layers of the map are displayed in the **Legend**.

3.  In the center, the map is displayed. Here, the different operations with the map data can be performed.

4.  On the right side, [Display for object data](digitizing-objects.md) details are displayed in predefined layouts. <!-- src: help/MP/5928 -->

### Adding map data to the document management

## Preparing GIS data for GeoDin Maps

GeoDin Maps shows GeoDin objects in a spaital contex. Map information has to first be added to the GeoDin database using the integrated document management.

Geographic map information can be either grid (JPG, TIFF, ECW\*) or vector data (SHAPE, DXF).

\
***Note:*** *ECW is a new highly efficient grid format.*

**Adding documents to the Document management**

1\. First the [Document management](../navigating-the-geodin-workspace/documents/managing-documents.md)  is started.

2\. If required add new folders using the **New Folder** button to create an organised structure.

3\. Then choose **New document** within the hierachy just created.

4\. Navigate to the chosen file and select it.

5\. In some cases an item is composed of several individual files with different extensions and hence cannot be added to the database. This is not only the case with SHAPE (.shp) files, but also with raster files where spatial information is stored in separate files. To resolve this GeoDin creates a link to the files that are saved outside of the database.

6.The next step is to choose the document description type \"**(DOC) GeoDin layer**\". In the same dialogue window the final step in the adding document process is to describe the contents of the document along with any other necessary comments. This final step can be repeated at a later date as more information becomes available.

7\. End the documenet management with **Close**.

**Making GeoDin data available for GeoDin Maps**

GeoDin data is made available as queries and groups. First of all a group of data has to be defined. This can be added via drag and drop from the GeoDin Object Manager to the map window. This makes a duplicate of the query available in the map and is independent of the original query and any subsequent changes that may be made to it.

Both user-defined and system queries can be shown in the map window. All the result fields defined in these queries will be available in the map window. If a field is not defined then it cannot be used for labelling or other presentation options. These fileds are defined under the node " Results fields (ArcGIS/Export)" in the query.

Additionally specific layouts can be defined in the query for displaying the relevant data. Choose the button **Favourite layouts** to define which layouts are to be used for the query (these need to be multi object capable, e.g. time lines from several objects) or the results of the query (single object frame layouts). <!-- src: help/MP/7925 -->

### Interpolation and contour lines from query result fields

If a query includes numeric result fields (e.g. chloride concentrations, groundwater levels), GeoDin Maps can generate an interpolation grid from the object locations and attribute values.

**Steps:**

1. Create a query with the numeric attribute added to the **Result fields (Export)** node (see [Parameterized Queries](../data-analysis/queries/parameterized-queries.md)).
2. In the Maps module, add the query as a layer.
3. Right-click the query layer in the Legend and choose **Interpolation** (German: *Interpolation*) from the actions menu.
4. Configure the interpolation method and grid resolution, then run. A colour-coded interpolation grid layer is generated.

**Generating contour lines:**

From the interpolation result layer, right-click and choose **Generate contour lines** (German: *Konturlinien erzeugen*). Specify the contour interval. The result can be exported as a Shape file (`.shp`) for use in GIS tools.

{% hint style="info" %}
Contour lines generated in GeoDin Maps are saved as Shape files. Use the EPSG code in the layer's **Display Options** (Darstellungsoptionen) to ensure the exported Shape file has the correct coordinate system.
{% endhint %}

<!-- src: transcript/2026-04-15-in-person-workshop -->

### Offline tile caching for OSM base maps

An OpenStreetMap (OSM) tile layer can be downloaded and cached locally for offline use — for example, on a field laptop without a reliable internet connection.

**Steps:**

1. In the Maps module, add an OSM tile layer.
2. Navigate to the area of interest and set the desired zoom levels.
3. Right-click the OSM layer in the Legend and choose the option to **cache tiles offline** (German: *Kacheln offline speichern*).
4. GeoDin downloads and stores the tiles in a local cache. The map displays from the cache when no internet connection is available.

<!-- src: transcript/2026-04-15-in-person-workshop -->

### Printing and exporting maps (Grafik bearbeiten)

To produce a print-quality map output with a north arrow, scale bar, and grid lines:

1. In the Maps module toolbar, click **Edit graphic** (German: *Grafik bearbeiten*) or **Print map** (German: *Karte drucken*).
2. The standard GeoDin layout/print editor opens with the current map view embedded as a map frame element.
3. Add layout elements as needed:
   - **Map frame** — the map view itself
   - **Scale bar** — from the element toolbar
   - **North arrow** — from the element toolbar
   - **Grid lines** — configured in the map frame properties
4. Export as PDF or vector format (DXF/SVG) using the standard print/export function.

{% hint style="info" %}
The map print editor is the same layout editor used for borehole logs and cross-sections. All standard layout elements and text macros are available.
{% endhint %}

{% hint style="warning" %}
Shape layers displayed in Maps must have their EPSG code set in **Display Options** (Darstellungsoptionen). Without a valid EPSG code, the layer will appear in the wrong location on the map.
{% endhint %}

<!-- src: transcript/2026-04-15-in-person-workshop -->

### Triangulate

Triangulation is the division of a surface into triangles and their measurement.

Triangulation is one of the ***actions*** in GeoDin Maps. It is selected in the context menu of point layers or queries of GeoDin objects.

Start the ***action*** and select one of the two triangulation methods under Method in the editing window that opens:

 Start the calculation with this button and get a first overview in the preview window.

 Save the result in the Shape format (\*.shp). After saving, you will be asked whether the saved file should be transferred to the map and displayed. If you want this, confirm with ***\<Yes\>.*Delaunay triangulation**

The Delaunay triangulation method creates a triangle mesh from a set of points, the triangles of which do not overlap but intermesh an arbitrarily large set of points uniformly and area-wide. The \"criterion of the empty periphery\" applies, i.e. there is no further point in the periphery of the three points of each triangle.


**Voronoi diagram**

(also Thiessen polygons):

In Voronoi diagrams the space is divided into regions, which are determined by their center - the respective point from the point set. The division of a region is based on the number of all spatial points that are closer to the center of that region than to any other center.

 <!-- src: help/MP/11064 -->

### Choose object type and destination project

Defining the type of object and the target object is the first step in digitising objects in the maps module. Various settings can be made in a new window that opens when the function is started.

In the **object type** field, the type of object to be created can be selected; only object types that provide GEOWKT geometry tables are permitted. These object types (e.g. examination areas) must be installed beforehand.

In the next section, the project assignment for the new object is defined. There are two possibilities for this:

1.  Manual assignment: simple selection of the project in which the object is to be saved later.

2.  Definition via a field of a map layer: the field must contain the PRJID (for this case, use the button **\<\...\>** in field \"Take from map\" and select the corresponding field in the new window). <!-- src: help/MP/11227 -->

---

## Reference: Map Tools and Layer Properties

<!-- src: help/MP/5960, 7073, 7878, 7887, 7892, 8796, 8799, 10550, 10778, 11051, 11058, 11253 -->

### Toolbar buttons

**Select Layout** — Displays the available layouts for the layer shown in the map; choose a layout from the list to link the selected object(s) to it.

**Previous / Next Layout** — Navigate through layouts that were previously used.

**Zoom in** — Increases the display size of the selected area; a single click doubles the zoom and centres the clicked point; a rectangle can also be drawn to zoom to that area.

**Zoom out** — Reduces the display size of the selected area.

**Pan** — Moves the displayed area without using scroll bars.

**View full page** — Displays the entire page in the object detail view.

**Next view / Previous view** — Navigates between pages of a multi-page object detail view (e.g. reports).

**Hide object details** — Hides the object detail view, collapsing it to a slim bar on the right; click the bar or the arrow button to restore it.

**Measure distance** — Activates a line-drawing tool that measures distances between user-set points; right-click to end. The unit system (map units, metric, or Anglo-American) is configurable in the distance settings.

**Load elevation data (SRTM)** — Downloads SRTM elevation data from the internet for the currently visible map section, or uses cached data if available. The result can be saved as a grid file (`*.grd`) and added as a map layer.

**Key date measurement** — Selects boreholes or measurement values that have a recorded value for a chosen parameter on a specific date or within a defined tolerance; results can be saved as a Shape file (`*.shp`) and added as a new map layer.

### Map properties

**Hide GeoDin Object Manager when the map is opened** — Hides the Object Manager automatically when the map is opened to maximise map display area; the Object Manager can be re-shown at any time.

**Create detail view automatically, if the data are linked** — If layers are linked to favourite layouts, the object detail view opens automatically when an object with an available layout is selected.

**Number of decimal places for the coordinate display** — Controls how many decimal places are shown in the coordinate display.

**EPSG code** — Click "?" to define or verify the EPSG code for the coordinate system used in the map.

**Status information** — Displays layer type and load time information.

### Initial view

**Zoom to map limits** — Default: opens the map zoomed to the full data extent.

**User defined** — Allows the map centre and scale to be set manually; use the \<take from map\> button to capture the current view as the initial view.

### Grid layer tab

The **Grid** tab appears only when the selected layer is recognised as a grid layer. It manages colour zones for grid value ranges:

- **+** / **-** / **X** buttons — Add, delete the selected zone, or delete all zones from the Zone list.
- **Color button** — Opens the Color dialog to assign a colour to the selected zone.
- **Min / Max** — Lower and upper value limits for the selected zone.
- **Legend** — Name of the zone as it appears in the Legend panel.
- **Shadow** — When checked, treats the grid layer as a height map and renders a shadow effect as if light comes from the left.

### Line layer tab

The **Line** tab controls the visual appearance of line layers. Key properties across its subtabs:

**Line subtab** — Style, width, colour, bitmap fill, pattern, symbol (character/image), symbol gap, symbol rotation, and Include in legend option.

**Outline subtab** — Style, width, colour, bitmap, pattern, and Include in legend option for the outline drawn around the line.

**Smart size subtab** — Minimum width factor (in current scale units) below which a line is not rendered; optionally driven by an attribute field.

### Area layer tab

The **Area** tab controls the visual appearance of polygon layers. Key properties across its subtabs:

**Area subtab** — Pattern, bitmap, colour, symbol type and gap/rotation/size, and Include in legend option.

**Outline subtab** — Style, width, colour, bitmap, pattern, symbol (with gap/rotation), and Include in legend option for the polygon outline.

**Smart size subtab** — Minimum polygon size factor below which it is not rendered; optionally driven by an attribute field.

### Clipping

GeoDin can clip a grid layer to a defined area using a polygon layer as a mask. Steps: open **Map Manager** and load objects → right-click the target layer → **Actions** → **Clipping** → select the polygon layer defining the clip boundary → run. The resulting clipped grid (`*.grd`) can be saved and added as a new map layer. If an overlapping background colour appears, adjust the transparent value range under **Display options** → **Grid** for that layer.

### Grid to polygon

Converts grid (raster) data to vector polygons, similar to contour line generation but producing filled polygons. Key options:

- **Decimal places** — Precision of calculated values.
- **Fieldname** — Attribute column name in the output Shape file to store the polygon value.
- **Tolerance** — Controls how many polygons are created; lower tolerance = more polygons.
- **Ignore "NoData" values** — Excludes NoData values (e.g. −9999) from polygon generation; recommended in most cases.
- **Split equal value polygons** — When enabled, polygons of the same value are created as separate simple polygons rather than a single multi-polygon.

The result is saved as a Shape file (`*.shp`) and can be added directly to the map.

### Publish database for GeoDin Map Viewer (MapReporter)

Publishing a database for the GeoDin MapReporter is a two-step process:

1. **Generate a request key** — Click OK to generate a key for the database and send it to the GeoDin support team by email. The key is database-specific and must be regenerated if database contents change after the key was issued.
2. **Enter the activation key** — After receiving the activation key from GeoDin support, enter it in the second step of the assistant and select an output directory.

The output directory must contain a `/MapReporterTemplate` subdirectory with the following subfolders: `BIN` (MapReporter.exe), `LAYOUTS`, `QUERYDEF`, `SYSLIB`, and `HELP`. The complete MapReport package (database, linked documents, and template files) is written to the output directory and can be used directly from CD or USB without installation.

**Note:** Changes to the database after the request key was generated will invalidate the activation key — finalise database work before publishing.
