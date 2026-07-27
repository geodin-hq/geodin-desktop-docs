---
description: How to use the Report Element to produce tabular output and Excel exports across multiple objects
---

# Report Elements

The **Report Element** is the layout component for tabular output: general data, layer data, samples, and measurement data, displayed inside a layout as a configurable table. Combined with a **Multi-Object Frame**, it is also GeoDin's most practical path for exporting tabular data across many objects at once.

For the related layout components (borehole graphic logs, depth scales, samples, groundwater, well design), see [Borehole Elements](borehole-elements.md). For the broader template structure, see [Report Templates](../../reporting/report-templates.md).

## Exporting tabular data via the Report Element + Multi-Object Frame

The most practical pattern for exporting master data or layer data to Excel from multiple objects at once combines a **Multi-Object Frame** (German: *Mehrfachobjektrahmen*) with a **Report Element**.

**Steps:**

1. In the layout editor, insert a **Multi-Object Frame** from the element toolbar.
2. Drag the desired objects (or a query) from the GeoDin Object Manager into the Multi-Object Frame - this populates the frame with the selected objects.
3. Inside the Multi-Object Frame, insert a **Report Element**.
4. In the Report Element properties, set the **Data source** (e.g. General Data, Layer Data, or a specific measurement data type).
5. Add columns using the blue **+** button. For each column, assign a **Text Macro** (the parameter to display) and a **Heading**.
6. To export, use the toolbar at the bottom of the layout view: because the layout contains a Report Element, an **Export to Excel** button appears. Click it to produce an Excel file with one row per object.

{% hint style="info" %}
This pattern is the recommended way to produce tabular exports of master data or layer data for multiple objects - for example, exporting chloride values from a groundwater chemistry data type for all objects in a query.
{% endhint %}

## Grouping and custom views in the Stammdaten Grid

The general data grid (Stammdaten Grid) supports dynamic grouping of rows by column values, allowing quick reorganisation of objects without creating a new query.

**Enabling the grouping area:**

1. In the general data grid, right-click any column header.
2. From the context menu, select the option to show the **grouping zone** (a grey area appears above the column headers).
3. Drag one or more column headers into the grouping zone. Objects are immediately grouped by the values in those columns. Multi-level grouping is supported - drag additional column headers to create nested groups.
4. To remove a grouping column, drag it back out of the grouping zone.

**Saving custom views:**

Use the **Save current view** button in the grid toolbar to save the current column order, visibility, sort, and grouping configuration under a custom name. Saved views can be recalled from the drop-down at any time.

***

## Reference: Report Element

### Data source and columns

| Property | Description |
|---|---|
| **Data source** | Choose **General Data**, **Layer Data**, **Samples**, or a specific measurement data type (e.g., CU). Sets the data the report rows draw from. |
| **Columns** | Added with the blue **+** button. Each column requires a **Text Macro** (which parameter to display) and a **Heading**. |

### Choosing the data source

<!-- src: help/H0000000758#data-source -->

The entries offered in the **Data source** list depend on the report type.

For an **original data report**, choose either one of the object's data tables (layer data, sample data, well design and so on) or the measurement values available for a measurement point type. The measurement point entries are marked with `-}` and a blue sphere - for example `-} filter` or `-} samples` - and produce a view of the individual values of the data types tied to that measurement point type, such as groundwater chemistry or groundwater dynamics for a filter.

For a **report calculation** such as a statistic, the choice is instead which measurement point type the data is taken from: samples, groundwater measurement point, or object measurement point.

**Measurement point choice:** When the data source resolves to the measurement values of a measurement point type, every measurement value of every matching measurement point of the object is printed unless the set is narrowed. Use the measurement point choice to restrict it: select the data field, then enter the required content in the **Contents** field and choose **Include** (only these measurement points are reported) or **Exclude** (these measurement points are ignored). Where the data field allows it, several contents can be entered separated by commas. A typical use is limiting the report to selected sample types.

**Additional sort field:** Report data is sorted by `INVID` and depth. A further sort field can be defined here.

### Removing unwanted rows

<!-- src: help/H0000000758#row-removal -->

Three options thin out rows that carry no information for the chosen columns.

* **Remove empty rows** - drops rows that are empty from a configurable starting column onwards. For example, in a report of sample date plus potassium content, the dates on which other parameters were analyzed but potassium was not would otherwise appear as rows with an empty potassium cell; with the option active and the starting column set to the potassium column, those rows are dropped.
* **Remove identical lines** - removes any line whose content is identical to the line before it.
* **Remove rows without measurement data** - removes a line when no measurement data exists for the current sample. Unlike **Remove empty rows**, which only inspects one predefined starting column, this option also handles columns whose text macro mixes measurement data and general data - rows of that kind cannot be evaluated by **Remove empty rows**.

### Column type: text or image

<!-- src: help/H0000000763#column-type -->

Each report column is either a **text** column or an **image** column; the choice switches which section of the column properties configures the output. Text columns are driven by a labeling instruction, entered directly or assembled with the **Build** icon (see [Text Macros in Reports](../../reporting/text-macros-in-reports.md); barcode and QR code columns and the backslash and translation options are described in [Export](../../data-collection/export.md)).

For an image column, the **Document** option prints a stored document as the image:

* **Link** - the ID of the object or measurement point whose documents are searched. This is normally `INVID`, derived from the data of the report line; the data fields available depend on the report's data source, so in a report listing projects the link can be a project ID instead. The keyword `Database` refers to documents assigned directly to the database.
* **Document name** - the name of the document to print. This assumes the documents are named after the objects or measurement points shown in the report.

### Row selectors

Rows can be excluded from the report by parameter condition - for example, skip values above or below a threshold. Selectors are configured in the Report Element properties and filter the displayed rows without modifying the underlying data.

### Conditional formatting

To highlight data by value, use **Column Properties > Presentation Options**: set a condition (e.g., "if CU > 50") and a color (e.g., color the row red). Conditional formatting applies at display and export time.

### Multi-block layouts

Multiple report blocks can be combined in one layout - for example, a general-data report and a measurement report placed side by side in the same frame. Each block has its own data source and column configuration.

### Footers and headers

Each report group can include a **footer** carrying additional information per group (see [Customizing Log Layouts](../borehole-logs/customizing-log-layouts.md) for the HasLoop grouping pattern). For layouts using a **HasLoop** selector, add a **header** row of type **text** and use the text macro `$%SelectorContent:Selector name$` (as selector name, put the name of your HasLoop selector) to print the group name above each dataset group.

### Report types

| Type | Description |
|---|---|
| **Original data** | Displays raw database values as-is: summary tables, sample overviews, measurement tables, borehole tabs. |
| **Calculations** | Processes data before display: statistics, list comparisons, plausibility checks, grain size analyses. |

### Exporting report data

Two export paths are available:

- **Right-click in edit mode** - right-click the Report Element -> **Export as Excel** or **Export as CSV**. Exports the visible data for the current object selection.
- **Report Access button** - in the layout overview, use the **Report Access** button to export to Excel without opening edit mode first.
