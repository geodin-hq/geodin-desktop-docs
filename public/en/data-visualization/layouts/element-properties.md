---
description: Styling and property reference for layout graphic elements — text, fonts, lines, fills, symbols, images, legends, and labeling.
---

# Element Properties Reference

Every graphic element in a layout shares a common set of properties: an element name, a drawing layer assignment, and a z-order position. Beyond that, different element types expose their own styling branches — text, fonts, lines, fills, symbols, images, legends, and labeling. This page is the canonical reference for all of those shared and per-type properties.

Part of the [Creating Custom Layouts](../creating-custom-layouts.md) family.

***

## Reference: Text elements

Text elements display static or variable content in a layout. Key behaviors:

| Property | Description |
|---|---|
| **Simple text vs Formatted text** | Simple text uses one font throughout. Formatted text allows mixed fonts, subscript/superscript, and per-section styling within a single element — useful when variable-length data (e.g. `$LONGNAME$`) must share a text element with a fixed label. Use formatted text sparingly as it requires more processing time. |
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
| **Background** | _Transparent_ — elements behind the text show through. _Opaque_ — text is cropped against a background color (white by default; customizable). |
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
| **Line thickness** | Can be set in mm or pixels. Prefer mm — pixel thickness depends on screen resolution and does not match print output. Use pixels only for screen-only graphics. |

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
| **Color and fill pattern separate** | Background color and fill pattern come from different data fields — e.g., stratigraphy defines the color while petrography defines the fill pattern drawn on top. |

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

## Reference: Legend elements and labels

| Property | Description |
|---|---|
| **Maximum legend symbol size** | Sets the maximum display size for legend symbols. Symbols larger than this value are scaled down. |
| **Text alignment** | Position legend labels: left, right, top, or bottom of the symbol. |
| **Legend label content** | Combines free text with variable data field names (e.g., `$LONGNAME$`). Use the right-click button in the entry field to access all data field names. Construction follows text macro syntax. |
| **Translation (language)** | Defines how dictionary-based data field contents are back-translated. Default is "Automatic" (uses the language set in the object type). If no translation exists, the abbreviation is displayed directly. |
| **List management icons** | New, Duplicate, Delete, Move up/down, and "Edit without refresh" (for large datasets where reordering causes long recalculation). Double-click an entry to jump to its properties in the tree view. |

## Reference: Axis labeling

| Axis type | Key settings |
|---|---|
| **Parameter axis** | Labeling option, decimal places. "Remove superfluous decimal places" strips trailing zeros — particularly useful for logarithmic axes (displays 0.001, 0.01, 0.1, 1, 10, 100, 1000). When per-series decimal places are enabled, the global setting is unavailable. |
| **Depth axis** | Optional labeling with absolute height and selectable decimal places. Incline of a data sequence can be factored in — depth values are converted using the selected angle of incline (configure the incline data field in the Scale branch). |

## Reference: Data sequence connections

Two measurement series can be connected with a line by enabling "Connect with other parameters" and selecting the second series in the Parameter branch. The connecting line is drawn between corresponding depth values, and differences can be labeled (enable "Label differences" and configure font and decimal places in the sub-branches).

## Reference: Sample data labeling

| Property | Description |
|---|---|
| **Show/hide sample data** | Deactivate "Sample data" to display only the graphic without text labels. |
| **Overlapping text** | Allow text overlap for narrow sample intervals, or use the default staggered layout to prevent overlap. |
| **Language** | Select the retranslation language for coded sample data from the dropdown. |
| **Text position** | Align sample data labels at the top, middle, or bottom of the sample interval. |
