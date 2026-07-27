---
description: Styling and property reference for layout graphic elements - text, fonts, lines, fills, symbols, images, legends, and labeling.
---

# Element Properties Reference

Every graphic element in a layout shares a common set of properties: an element name, a drawing layer assignment, and a z-order position. Beyond that, different element types expose their own styling branches - text, fonts, lines, fills, symbols, images, legends, and labeling. This page is the canonical reference for all of those shared and per-type properties.

Part of the [Creating Custom Layouts](../creating-custom-layouts.md) family.

***

## Reference: Text elements

Text elements display static or variable content in a layout. Key behaviors:

| Property | Description |
|---|---|
| **Simple text vs Formatted text** | Simple text uses one font throughout. Formatted text allows mixed fonts, subscript/superscript, and per-section styling within a single element - useful when variable-length data (e.g. `$LONGNAME$`) must share a text element with a fixed label. Use formatted text sparingly as it requires more processing time. |
| **Word wrap** | When activated, the text element can be scaled horizontally and line breaks are inserted automatically. For rotated text (angle other than 0), the maximum width must be entered manually. |
| **Line break** | Use the Return key or insert `\` (backslash) in the text content. |
| **Make available as quick setting** | Releases the text element for editing via layout interfaces. By default, text elements are not available in the layout interface. |
| **Element name** | Identifies the element in the tree view of graphic elements. Use meaningful names to keep complex layouts navigable. |
| **Drawing layer** | Shows which layer the element is on. Use the "In another layer" icon to move it. |
| **Arrangement (z-order)** | Overlapping elements display in insertion order. Use "Bring to front" / "Send to back" to reorder. Within a group, arrangement changes apply only inside that group. |

## Reference: Font properties

Font properties apply to text elements, axis labels, legend labels, and other text-bearing elements throughout layouts.

| Property | Description |
|---|---|
| **Alignment** | Six anchor points are available. The status bar always shows position relative to the chosen alignment point. Use center or right alignment for variable-length text and centered headers. |
| **Angle** | Rotates the text element up to 360 degrees. |
| **Background** | _Transparent_ - elements behind the text show through. _Opaque_ - text is cropped against a background color (white by default; customizable). |
| **Font for formatted text** | When using formatted text, font selection is done inline while editing. In the Font properties panel, only vertical alignment and background type are available. |

{% hint style="info" %}
The superscript function does not produce correct results with every font. Use Verdana or Tahoma instead of Arial if superscript renders incorrectly.
{% endhint %}

## Reference: Line and outline properties

The following line/outline properties apply uniformly to grid lines, tag lines, dividers, page margins, sample symbols, and other line-based elements.

| Property | Description |
|---|---|
| **Color** | Select from the dropdown, or choose "Individually" (first entry) to open the full color dialog. |
| **Line type** | Select a line style from the dropdown. |
| **Line thickness** | Can be set in mm or pixels. Prefer mm - pixel thickness depends on screen resolution and does not match print output. Use pixels only for screen-only graphics. |

## Reference: Fill pattern and transparency

Fill pattern and color/transparency settings apply to area elements, symbol fills, and geological layer representations.

| Property | Description |
|---|---|
| **Background color** | By default, defined in the fill pattern table. Select "User defined" to override with a custom color. |
| **Transparency** | Transparent fills allow overlaying filled areas. Not all print output devices support transparency. |
| **Line thickness (vector fills)** | Adjustable only for vector fill patterns; affects print output only (no visible change on screen). |
| **Fill pattern table** | Select a fill pattern table and pattern for area fills. Foreground and background colors can be overridden with "User specified". |

## Reference: Fill calculation

Controls how area fills are determined from data fields.

| Mode | Description |
|---|---|
| **Color and fill pattern together** | A single data field determines both the background color and the fill pattern. Hover over the dropdown to see the selected field names. |
| **Color and fill pattern separate** | Background color and fill pattern come from different data fields - e.g., stratigraphy defines the color while petrography defines the fill pattern drawn on top. |

## Reference: Symbol fill, color, and outline

Applies to symbol elements with filled areas (line-only symbols are unaffected).

| Property | Description |
|---|---|
| **Fill pattern** | Select the fill pattern for the symbol's filled areas. |
| **Draw area transparent** | When enabled, the graphic background shows through unfilled areas of the symbol. When disabled, the symbol's bounding rectangle hides elements behind it. |
| **Outline line type** | Controls the contour line style of the symbol. Color and thickness follow the standard line property rules. |

## Reference: Variable image

The variable image element displays an image or document whose filename can optionally originate from a data field. It can be inserted into an object frame multiple times. Element name, drawing layer, and z-order properties follow the same rules as text elements.

When a variable image displays a **GeoDin map**, an additional "Map" branch appears in object properties for configuring scale, map limits, legend, and scale bar.

### Supported image formats

The Image graphic element supports importing the following file formats:

`.bmp`, `.wmf`, `.emf`, `.png`, `.jpg`/`.jpeg`, `.tiff`, `.ggf` (GeoDin Graphic Format)

### Data source

<!-- src: help/H0000001293#data-source-options -->

Three sources can supply the image or document:

| Source | Behavior |
|---|---|
| **File** | The data source macro must resolve to a complete file name, although the extension may be omitted - for example `C:\images\GeoDin\$LONGNAME$` searches that folder for a file named after the borehole. Without an extension, GeoDin looks for any displayable image file itself (`.wmf`, `.bmp`, `.jpg`, GeoDin graphic files, and so on). |
| **Layout list** | The image must be present in the layout list file and can only be used in layouts belonging to that layout list. The macro must resolve to an image name matching one in the layout list's image list. |
| **Documents** | The image or document is stored in the document management of the current GeoDin database, so its availability does not depend on folders. This requires an object frame linked to the database through an object or measurement point - as in a borehole log, well design, or report layout. |

**Selecting a database document.** Use the **Search document** icon to browse the available documents, select an entry, and confirm with **OK** - the document or folder name is written into the **Data source macro** field, where it can also be typed directly. The **link level** determines where documents are searched:

* **Measurement point** - documents linked to the measurement point currently displayed in the graph.
* **Object** - documents linked to the displayed object. (An object is always also a measurement point, so for boreholes both settings give the same result.)
* **Project** - a document related to the current project. Switching between objects or measurement points of the same project does not change the displayed document; only a different project does.
* **Database** - a document related to the current database. The document changes only when an object from another database is displayed.

Document searches ignore upper and lower case, and all folders of the object are searched, so avoid using the same document name in different folders of one object. Give the corresponding documents in different objects the same name (for example `core box`) so the element can identify them. If no matching document exists for the displayed object, the element is drawn as a dashed frame.

The macro can also resolve the name from data - for example when each borehole stores its own photo name in a general-data field, the macro reads that field and looks up the document with that name. The two workable naming strategies are therefore identical document names across objects used literally in the macro, or different names resolved through a data-field macro.

**Folder-based data sources.** Selecting a folder rather than a document in the **Search document** dialog makes the macro reference a folder, for example `\\Dokuments\Cores`. When the folder holds several documents, the page-browsing icons in the layout step through them. Wildcards are supported: `*` matches any characters and `?` exactly one - `\\Dokuments\Cores\photo*` displays every document in the `Cores` folder whose name starts with `photo`.

**Document ID as data source.** A document ID can be given directly with `%ADC_ID=<reference>`, where `<reference>` points to a data field content holding the ID - for example `%ADC_ID=$GEODIN_ADC_ADCDATA:ADC_ID$`. Such IDs normally come from a query entered in the **data source** field. If the query returns several data sets, the image element creates one page per document, browsable like folder-based sources.

**Documents displayed as symbols.** If the document is not an image or GeoDin graphic, or its image format is unsupported, it is drawn with its associated symbol - an internet address, for example. Right-click the symbol and choose **Show document** to open it in whatever Windows application handles that type. Video and audio documents play inside a window the size of the document frame, which can be enlarged and moved during playback while the rest of the graphic window stays usable; icons below the sequence stop and reset it. A document symbol appears only on screen by default; enable **Print document symbol** to include it in printed output.

**Barcode / QR code.** This option renders a barcode or QR code from a character string. Define the field holding the code in the **Data source macro** entry field.

### Map branch: scale and map limits

<!-- src: help/H0000010563#map-scale-and-limits -->

When the variable image shows a GeoDin map, the **Map** branch defines the scale of the map relative to the paper size. Changing the scale changes the size of the image element, depending on the map frame settings. With **-Keep map scale-** active, changing the map boundary adjusts the element size automatically and preserves the scale; with the option off, the scale changes with the map boundary so the element keeps its original size on paper.

Map limits can be defined in three ways:

| Mode | Behavior |
|---|---|
| **-automatic-** | The entire map is displayed based on the map layers. |
| **-user-defined-** | Enter minimum and maximum coordinates for the section to display. **Set to maximum** resets the fields to the full map extent. |
| **-user-defined centered-** | Enter the center of the map; the extent follows from the center, the scale, and the element size on the page. Useful for object-centered maps: enter `X: = $XCOORD$` and `Y: = $YCOORD$` under **Read from**, and when the layout is used with a GeoDin map in the layout overview the map section shifts automatically so the object sits at the center. |

**-Round up corner values-** rounds the map limits derived from the layer extents to reasonable numbers - 10,000 instead of 9,973, for instance. **Edit properties without immediate graphic update** suppresses redraws while several settings are changed on a comprehensive map, reducing the update to a single step at the end.

For map limits in the site plan wizard, see [Creating Site Plans](../site-plans/creating-site-plans.md).

## Reference: Legend elements and labels

| Property | Description |
|---|---|
| **Maximum legend symbol size** | Sets the maximum display size for legend symbols. Symbols larger than this value are scaled down. |
| **Text alignment** | Position legend labels: left, right, top, or bottom of the symbol. |
| **Legend label content** | Combines free text with variable data field names (e.g., `$LONGNAME$`). Use the right-click button in the entry field to access all data field names. Construction follows text macro syntax. |
| **Translation (language)** | Defines how dictionary-based data field contents are back-translated. Default is "Automatic" (uses the language set in the object type). If no translation exists, the abbreviation is displayed directly. |
| **List management icons** | New, Duplicate, Delete, Move up/down, and "Edit without refresh" (for large datasets where reordering causes long recalculation). Double-click an entry to jump to its properties in the tree view. |

### Choosing the elements a legend describes

<!-- src: help/H0000002696#legend-calculation -->

A legend is calculated for a selected graphic element, which must be a measurement value graphic or a data sequence presentation. Two conditions decide whether an element can be picked:

* The element needs its own name - only named elements appear in the list of possible legend elements. Name elements right after creating them.
* The element needs a legend label, otherwise the legend symbols cannot be labeled.

If a series carries several legend labels - for instance because labels are also used inside the diagram - only the first labeling instruction of that series is used in the legend element.

### Legend spacing and layout

<!-- src: help/H0000002696#legend-spacing -->

| Option | Effect |
|---|---|
| **Distance of legend elements** | Spacing between the individual legend entries. |
| **Distance to margin** | Spacing between the legend content and the legend margin. |
| **Define element width** | Fixes the width of the symbol-plus-text combination for every entry. Without it, the widest entry defines the width for all. |
| **Alignment** | Aligns the whole legend content left, centered, or right within the outlining rectangle of the legend element - useful when the number of entries changes dynamically. |
| **Break up legend** | Breaks the legend into its individual parts (rectangles, symbols, text elements) so they can be edited manually. Also available for a legend element in a cross-section; the cross-section itself is unaffected and can still be updated. |

### Automatic borehole log legends

<!-- src: help/H0000002696#borehole-log-legend -->

The automatic legend covers geological layers and plasticity, plus special symbols, samples, and groundwater when those graphic elements are present in the object frame. These elements are not referenced explicitly and do not need names; each carries a **Show in legend** setting that decides whether it is included.

The legend is assembled in blocks, in this order:

1. Main components
2. Minor components (fill pattern mixer set to "mixed")
3. Sublayer symbols and component symbols
4. Plasticity and special symbols
5. Filter screens (when showing filters is activated for borehole logs)
6. Groundwater symbols
7. Samples

Within a block, entries are sorted alphabetically. How main and minor components appear depends on the fill pattern mixer setting ("mixed" or "in percent"). Groundwater entries are usually not code-based - their labeling comes from pre-defined texts describing the groundwater situation, so the display depends on the presentation options and the language settings.

{% hint style="info" %}
A legend can be added to a cross-section as a cross-section scenario. It can show information from borehole profiles, special symbols, samples, and groundwater, but measurement value and data sequence graphic elements are not available for legends in cross-sections. In addition to the standard settings, the legend element can also be positioned there.
{% endhint %}

### GeoDin map legend in a layout

<!-- src: help/H0000010567#map-legend -->

The legend of a GeoDin map can be shown in a layout. Select the **-draw-** option and set a **Relative position (mm)** measured from the upper-left corner of the map.

| Setting | Effect |
|---|---|
| **Layer headings** | Whether layer headings are shown, and whether a dividing line is drawn between individual layers. |
| **Line type** | Appearance of those separator lines. |
| **Indent** (layer headings) | Offsets the layer labeling; negative values move it to the left. |
| **Font** (layer headings) | Appearance of the layer labeling. |
| **Indent** (layer elements) | Offsets the labeling of the individual legend elements; negative values move it to the left. |
| **Symbol size** | Size of the element symbols. |
| **Font** (layer elements) | Appearance of the element labels. |

## Reference: Axis labeling

| Axis type | Key settings |
|---|---|
| **Parameter axis** | Labeling option, decimal places. "Remove superfluous decimal places" strips trailing zeros - particularly useful for logarithmic axes (displays 0.001, 0.01, 0.1, 1, 10, 100, 1000). When per-series decimal places are enabled, the global setting is unavailable. |
| **Depth axis** | Optional labeling with absolute height and selectable decimal places. Incline of a data sequence can be factored in - depth values are converted using the selected angle of incline (configure the incline data field in the Scale branch). |

## Reference: Data sequence connections

Two measurement series can be connected with a line by enabling "Connect with other parameters" and selecting the second series in the Parameter branch. The connecting line is drawn between corresponding depth values, and differences can be labeled (enable "Label differences" and configure font and decimal places in the sub-branches).

## Reference: Sample data labeling

| Property | Description |
|---|---|
| **Show/hide sample data** | Deactivate "Sample data" to display only the graphic without text labels. |
| **Overlapping text** | Allow text overlap for narrow sample intervals, or use the default staggered layout to prevent overlap. |
| **Language** | Select the retranslation language for coded sample data from the dropdown. |
| **Text position** | Align sample data labels at the top, middle, or bottom of the sample interval. |
