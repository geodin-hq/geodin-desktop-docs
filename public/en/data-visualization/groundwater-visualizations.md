# Groundwater Visualizations

The **Groundwater** graphic element displays groundwater levels in a borehole log or cross-section column. It reads groundwater codes entered in the layer description or the groundwater table, then renders the appropriate triangle symbols, depth labels, direction arrows (for rising or falling levels), and tag lines. Use it whenever a layout needs to show measured or artesian groundwater conditions alongside stratigraphy.

For general graphic-element properties shared across all layout elements (element name, drawing layer, z-order), see [Element Properties Reference](layouts/element-properties.md).

***

## Reference: Groundwater element properties

### Data source

If the current object has more than one layer table, select the layer table that contains the groundwater information. Set to **Automatic** to use the first available layer table of the borehole.

For object types that record groundwater levels in a separate table (for example, SEP 3), this selection has no effect - the information is always read from the dedicated groundwater table.

**Groundwater coding - SEP-compatible boreholes**

For standard SEP-compatible boreholes, groundwater levels are coded in the **Additional information** field of the layer data entry mask. The supported codes are:

| Code | Meaning |
|---|---|
| `gw` | Groundwater level |
| `gws` | Groundwater level increased |
| `gwf` | Groundwater level decreased |
| `gwr` | Groundwater level stationary |
| `gwa` | Groundwater artesian |

Each code must be followed by the measured depth in round brackets.

**Example:** `gw(3.90)`

Optional additional text (for example, a date) can be added inside the brackets, separated by a semicolon.

**Example:** `gw(3.90; 01.08.2005)`

Groundwater levels above the surface level (artesian) are prefixed with `+` inside the brackets.

**Example:** `gwa(+0.8)`

The appearance of the groundwater triangles for each code is controlled by the dictionary settings and can be adjusted in the dictionary.

**Groundwater coding - SEP 3 boreholes**

For SEP 3 boreholes, groundwater levels are recorded in the separate **Groundwater** collection mask rather than the borehole table. Artesian levels are entered as negative values (a `-` prefix), where negative = above surface level and positive = below surface level.

### Graphic properties

| Option | Effect |
|---|---|
| **Tag lines** | When active, horizontal tag lines are drawn at each measured depth. When inactive, only the groundwater symbols and labels are displayed. |
| **Scale width to fit** | Automatically adjusts the element width to match the labeling width. |
| **Tag lines right** | Tag lines start from the right side by default. Deselect to start from the left; this overrides any NORM settings. |

**Presentation mode**

Defines which standard (language) is used for presentation, and therefore which symbols are displayed. The default is **Automatic**.

**Show in legend**

Controls whether the groundwater symbols appear in the automatic legend for the same object frame.

### Symbol

| Option | Effect |
|---|---|
| **Draw symbol** | When active, groundwater symbols are drawn. Deselect to suppress symbols entirely. |
| **Colour from dictionary** | Uses a color other than the standard color. The color is defined via the **Fill pattern** button in the relevant dictionary entry. |

### Tags

| Option | Effect |
|---|---|
| **Draw tags** | When active, tag lines are drawn at measured depths alongside the symbols and labels. |
| **Colour from dictionary** | Uses a color other than the standard color; defined via the **Fill pattern** button in the relevant dictionary entry. |
| **Tags right** | Tag lines are drawn from the right by default. Deactivate to draw from the left. |

### Labelling

| Option | Effect |
|---|---|
| **Colour from dictionary** | Uses a color other than the standard color; defined via the **Fill pattern** button in the relevant dictionary entry. |
| **Fit width** | Automatically adjusts the element width to the labelling width. |

### Groundwater symbols

Defines the line type for rendering groundwater symbols. A line or outline is drawn in the chosen color and line type.

To use a color not available in the drop-down list, select **Individually** (the first list entry) and choose a custom color in the color dialog.

Line thickness can be set in mm or pixels. Prefer mm - this produces consistent output regardless of print resolution. Pixel-based thickness is only suitable for screen-only layouts.

### Consistency

Controls the display of consistency, compactness, and groundwater indicators on the right side of the borehole column.

| Option | Effect |
|---|---|
| **Draw** | When deactivated, consistency, compactness, and groundwater are not drawn in this area. |
| **Show in legend** | Controls whether the symbols for consistency, compactness, and groundwater appear in the automatic legend. |
| **Line type** | Defines how the lines in this area are drawn. See [Fill Patterns and Symbols](../configuration/fill-patterns-and-symbols.md) for a full description of line type options. |

### Show filters

When a well design is attached to a groundwater measurement point, activating this option adds the filter length to the borehole cross-section display.
