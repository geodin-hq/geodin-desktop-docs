---
description: Overview of export formats and workflows in GeoDin, including Excel, CSV, AGS, DXF, PDF, and GeoDin ML
---

<!--
**Content status:** Polished from product documentation
**Source quality:** A (Help + Transcripts)
**Needs:** screenshots, editorial review
-->

# Export

GeoDin provides multiple export formats for different use cases, from quick tabular exports to full project-level data packages. This page covers the available export options for both GeoDin (desktop) and GeoDin Onsite (field).

## Tabular data exports (Excel and CSV)

Export commands (identified by the red dot with two arrows icon) are available on most tabular views, including general data, sample tables, measurement data tables, and data sequence series. Any of these tables can be exported directly to Excel via the export button — this is also the recommended way to inspect expected headers and column structure before preparing an import table. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

The `All Objects > Data Management > General Data` tabular view shows metadata for all locations at once and can be exported to Excel. Data sequence series can also be re-exported as CSV files, which is useful when users need to import, modify, and re-export data. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

## Publish and Export (Access databases)

The **Publish and Export** feature creates a zip file containing an Access database with the selected objects. This is available at both the project level (for exporting a group of boreholes) and at the individual borehole level (producing a single-borehole database that can be re-imported elsewhere). <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

## AGS export

AGS 4.0.4 and AGS 4.1 export formats are supported via `Publish and Export > AGS export`. Users can choose which groups to export before executing the export. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

## DXF and PDF export

The internal PDF printer can export layouts as DXF files for use in AutoCAD or other CAD software. The PDF printer supports vector output (not just raster), preserving quality for CAD and publication workflows. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

## Exporting from GeoDin Onsite

GeoDin Onsite supports two export mechanisms: `Export to PDF` and `Export GeoDin` (GeoDin ML format). <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

{% hint style="warning" %}
PDF exports from Onsite contain a "DRAFT" watermark unless the form was produced via `Publish as Complete`. GeoDin ML exports never carry a draft watermark.
{% endhint %}

When `Publish as Complete` runs, the full deliverable set (GDOF, PDF, GeoDin ML, AGS) is generated and placed in the shared delivery folder. Only the `.GDOF` file stays visible locally as a photocopy. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

The default export path is controlled by `Configuration > Folders > Export folder path` and supports shortcut codes like `[my documents]` and `[desktop]`. Exports are always placed in a project-named subfolder inside the configured path (GeoDin Onsite creates the subfolder automatically). <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

---

## Reference: Column properties

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

When configuring export column properties, the following options are available: <!-- src: help/05/765 -->

- **Name (also for Excel export):** Columns can be named individually for better identification. When exporting to Excel, this name is used as the column title. Cell formatting can also be configured here.
- **Visible:** Controls whether a column is included in the export.
- **Column width:** Set by entering a number or using arrow keys (default: 20.0 mm). Text content wraps automatically within the cell.
- **Row height:** Calculated automatically to display all content in full. A minimum height can be specified; the maximum of all column minimum heights determines the row's minimum height.
- **Text style:** Selects the text formatting style for cells in this column.

---

## Reference: Presentation conditions
<!-- src: help/H0000000769 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

Presentation conditions control how individual cells in a report column are displayed based on their content. A column has a default font, but presentation conditions can override the font and background colour when specific criteria are met — for example, highlighting values that exceed a regulatory limit.

Multiple conditions can be defined and are evaluated in order. The first matching condition is applied; remaining conditions are skipped. Cells that match no condition use the column's default formatting.

**Example:** In a numeric column, values > 10 should appear violet, values >= 1 red, and all others black. Define two conditions in this order:

1. Cell content > 10 — colour violet
2. Cell content >= 1 — colour red

Cells not matching either condition remain black (the column default).

**Managing condition lists:** Conditions (and other list-based elements such as series or columns) can be added, duplicated, deleted, and reordered using the toolbar icons (New, Duplicate, Delete, Move Up, Move Down). Drag-and-drop reordering is also supported. The *Edit without refresh* toggle suspends live preview updates while reordering, which is useful for large datasets.

---

## Reference: Post-selection (data filtering)
<!-- src: help/H0000000918 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

A post-selection filters data records from already-correlated data types (see Pre-selection for correlation).

- **Name** — A label for the post-selection, shown in layout interfaces when the post-selection is exposed as a quick setting.
- **Condition** — A logical expression that defines the filter criterion. Click inside the field to open the expression builder listing available parameters. Double-click a parameter name to insert it. Syntax is described under *Selection syntax*.

**Parameterised conditions:** Instead of hard-coding a threshold (e.g. `$WAT:Cl$ > 100`), use a placeholder so the user can supply the value at runtime:

| Placeholder | Use with |
|---|---|
| `%NUMERICPARAM` | Numeric data fields |
| `%STRINGPARAM` | Text data fields |
| `%DATEPARAM` | Date data fields |

- **Default value** — Pre-fills the parameter input with a starting value.
- **Make available as quick setting** — Exposes the parameter in the layout's Selection Parameter panel so users enter only the value, not the full expression.

**Displaying selector content in a layout:** Use the variable text element with the macro `$%SelectorContent:Selector_name[@format]$`. Use `@c` to display the dictionary code instead of the translated long name.

---

## Reference: Blank values in statistic reports
<!-- src: help/H0000005071 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

When a statistic report analyses parameters that have no measured values for some periods or locations, three display options control how missing data appears:

| Option | Behaviour |
|---|---|
| **Display with number = 0** | A row is created for every parameter; missing counts show `0`. |
| **Display as empty row** (default) | A row is created for every parameter; missing counts are left blank. |
| **Do not display in the report** | Parameters with no data are omitted entirely. |

When a statistic interval is defined (e.g. yearly), the same three options apply to individual time periods within each parameter — missing intervals can show `0`, be left blank, or be suppressed.

---

## Reference: Report row types
<!-- src: help/H0000005328 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

Each row in a report definition has a type that controls its content:

- **Measurement parameter** — Displays data for a single measurement parameter (value, unit, etc.) as defined by the selected column configuration and parameter assignment.
- **Measurement program** — Inserts an entire measurement program as a block; GeoDin adds parameters automatically in their program sort order. More efficient than adding parameters individually for large data types.
- **Text** — Creates a separator or header row spanning the full report width. Supports text content (including variable text macros), fill colour, and outline styling.
- **Page break** — Forces a page break at the defined position. Commonly placed at the end of a row definition so each sample starts on a new page.
- **Remove text line or page break if no parameter lines follow** — When enabled, suppresses orphaned header rows or page breaks that would appear when a data source has no matching parameter data (e.g. a "Cations" header with no cation values).

---

## Reference: Text row properties
<!-- src: help/H0000005334 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

Text rows can display static text, pre-defined text, or variable text built from data-field macros (via the **Build** button). Translation language can be set to control how dictionary-backed field contents are rendered; the default "Automatic" uses the language specified on the object type.

| Option | Description |
|---|---|
| **Evaluate line break (backslash) in data fields** | When enabled, `\` characters in database content produce line breaks instead of being displayed literally. |
| **Hide backslash characters in data fields** | Strips `\` characters from displayed text without converting them to line breaks. |
| **Ignore unknown data field references** | Suppresses unresolvable `$...$` variable references instead of showing them as raw text. Useful for layouts shared across different object types. |

---

## Reference: Dynamic captions
<!-- src: help/H0000007111 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

Dynamic captions provide per-data-record information in column headers of laboratory control reports that display multiple measurements per row. The caption content is defined using text macros. A report can contain only one dynamic caption definition, but multi-line captions are supported (insert a return within the macro). No other row types may precede the dynamic caption row.

---

## Reference: Footer row properties
<!-- src: help/H0000007193 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

- **Name** — Label for the footer line, typically written in the first column. Use the *To column* option to span the label across multiple columns; set to `0` to suppress the label entirely.
- **Type** — Choose between a text footer or a statistical-value footer.
- **Decimal places** — Controls precision of calculated values. Set to `0` to strip trailing insignificant decimals; otherwise all calculated decimals are shown.

---

## Reference: Parameter settings (list comparison)
<!-- src: help/H0000002692 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

- **Sensitivity of response** — Adjusts the tolerance for list-comparison checks. At 100 % (default) the comparison is exact. Reducing to 90 % introduces a 10 % margin, so a measured value of 95 mg/l would be flagged against a limit of 100 mg/l.
- **Parameter display — if list value is available** — Show the parameter always, or only when the measured value exceeds the comparison value.
- **Parameter display — if list value is not available** — Controls whether parameters without a comparison value appear in the report.

---

## Reference: Barcode and QR code
<!-- src: help/H0000010889 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

Report layouts can include barcode or QR code elements. Select the code type, rotation, colour, and whether human-readable text is shown below the code.

Supported types: EAN-13, EAN-8, UPC-A, UPC-E, Code 128, ITF, Interleaved 2 of 5, Code 39, Code 39 Extended, Code 93, Code 93 Extended, MSI, Code 11, QR code.
