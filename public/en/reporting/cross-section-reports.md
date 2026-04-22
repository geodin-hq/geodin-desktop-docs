---
description: How to create geological cross-sections in GeoDin — selecting boreholes, defining the line of section, and configuring display scenarios
---

<!--
**Content status:** Polished from product documentation
**Source quality:** A (Help + Transcripts)
**Needs:** screenshots, editorial review
-->

# Cross-Section Reports

Cross-sections are one of GeoDin's most powerful visualization tools, combining multiple boreholes into a geological profile with configurable display elements.

## Creating a cross-section

The cross-section workflow runs under the **All Objects** branch via the **Cross Section** method, and follows five steps: <!-- src: transcript/reporting-exports#cross-section-reports -->

1. **Select objects** from the map view (drag-rectangle to select; use Remove/Add to refine the list)
2. **Draw a line of section** by clicking two points, OR click each borehole sequentially for a polyline
3. **Project boreholes** perpendicular to the line of section (single button moves boreholes onto the line)
4. **Set scales and positions** — choose horizontal and vertical scales; GeoDin auto-selects paper size (A0/A1/A2/A3/A4) to fit, or override via Page Layout
5. **Configure cross-section scenarios** — add graphic elements: borehole log, borehole name, depth scale (left/right), samples, data sequence, measurement element, horizontal scale, distance ruler, coordinates, waypoints

The workflow supports both automatic perpendicular projection AND manual per-borehole placement. <!-- src: transcript/reporting-exports#cross-section-reports -->

## Saving and storing cross-sections

Cross-sections can be saved in two formats: <!-- src: transcript/reporting-exports#cross-section-reports -->

- **GLO** — template only (no data). Reusable for different borehole sets.
- **GGF** — with connected data. Can be reopened later with data intact.

To store a cross-section in the project: navigate to the project's **Documents** area, create a new folder, add a new document, select the GGF file, and choose to either save in the database or link to an external file. <!-- src: transcript/reporting-exports#cross-section-reports -->

## Scale configuration

Depth scale divisions are configurable (e.g., 1 m intervals with 5 m main divisions). You can set different vertical scales for ground elevation and borehole profiles — helpful when elevation differences are large relative to borehole depth. <!-- src: transcript/reporting-exports#cross-section-reports -->

To auto-print scales in text elements, use the macros `$%SectionHorizontalScale$` and `$%SectionVerticalScale$` in variable text elements. <!-- src: help/05/7400 -->

For borehole log configuration details, see [Borehole Log Reports](borehole-log-reports.md). For printing and exporting, see [Bulk Print and PDF Export](bulk-print-and-pdf-export.md).

---

## Reference: Cross-section tool

{% hint style="warning" %}
The following reference content is from legacy product documentation. Verify against the current version of GeoDin.
{% endhint %}

### Starting a cross-section

Three methods to start: <!-- src: help/05/7393 -->

1. **From a query or group** — double-click the Cross-section method icon; the graphic window opens and all objects are loaded into the site plan
2. **From the menu** — `Extras > Cross-Section` in the graphic window; objects must be added manually
3. **From properties** — navigate to the "Cross-section" branch in the graphic properties and click Start

### Working with objects

Objects can be added via drag-and-drop from the object manager — single objects, queries, or groups. Objects from any database or project can be included (they don't need to be in the same project). The site plan shows loaded objects with a sign and label; coordinate transformation between meridian zones is available for the Gauss-Kruger coordinate system. <!-- src: help/05/7396 -->

### Defining the line of section

Two drawing tools are available: <!-- src: help/05/7398 -->

- **Line tool** — defines the line of section with any number of nodal points (coordinates are editable)
- **Projection tool** — projects objects perpendicular to the line of section (shortest distance). Objects used as nodal points cannot be projected.

The line can be saved and loaded as a `.LIN` file (ASCII format with nodal point coordinates), enabling reuse across cross-sections or import from other programs.

### Cross-section scenarios

Scenarios define which graphic elements display for all selected boreholes. Available scene types: <!-- src: help/05/7404 -->

| Scene | Description |
|---|---|
| Distance ruler | Horizontal labelling between objects (e.g., distances) |
| Well design | Well construction display |
| Borehole profile | Geological log with fill patterns |
| Ground surface | Surface elevation line |
| Groundwater | Water level indicators |
| Depth scale | Vertical scale bar |
| Legend | Auto-generated legend for profiles, symbols, samples, groundwater |
| Measurement graphic | Test result charts |
| Samples | Sample position indicators |
| Data sequences | CPT traces, geophysical logs |
| Variable text | Borehole names, labels, dynamic macros |

Default scenes include borehole log, borehole name, and two scale bars. Scenarios can be saved as `.gsz` files and reloaded for different cross-sections. <!-- src: help/05/7404 -->

Each scene has configurable width, height (for measurement graphics), and relative position to the borehole anchor point. Scenes can be applied to all objects, or only to the first/last object (useful for scale bars on the outside edges). <!-- src: help/05/7406 -->

### Static vs. dynamic cross-sections

Two storage modes: <!-- src: help/05/7393 -->

- **Save object data in graphic** — borehole data is embedded in the GGF file. Changes to the database are NOT reflected. The cross-section can be opened without a database connection.
- **Save object link in graphic** — only links to the database are stored. Changes to the database ARE reflected when reopening. Requires database access.

To edit individual graphic elements, use **Break up cross-section** to unlock the elements into standard layers. This is irreversible — the link to the cross-section assistant is lost. <!-- src: help/05/7393 -->

### Axis range configuration

For data sequence and measurement value displays within cross-sections, axis ranges can be set to automatic (based on actual values), user-defined, or rounded. Options include logarithmic scale, mirrored axis, configurable main divisions (by unit or count), help ticks, and decimal precision. The "Cut surplus decimals" option is especially useful for logarithmic axes (producing labels like 0.001, 0.01, 0.1, 1, 10, 100). <!-- src: help/05/687 -->

### Importing layer boundaries

Layer boundaries can be imported from external files via `File > Import > Layer boundaries`. The file must contain 4 columns: ID, Easting, Northing, Elevation. The coordinate system must match the cross-section. Imported polylines are previewed before being added to the graphic. Elevation values for coordinates not exactly on the line of section are projected perpendicular. <!-- src: help/05/3490 -->

### Snap function

The snap function (`Ctrl+K` or `Preferences > Snap`) provides exact connections between graphic elements, especially useful for constructing layer boundaries in cross-sections. When creating or moving endpoints, a point snaps automatically to existing endpoints within the configurable snap distance (1-50 mm). The function works across all drawing layers. <!-- src: help/05/3379 -->
