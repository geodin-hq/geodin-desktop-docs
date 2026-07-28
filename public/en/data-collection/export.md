---
description: Overview of export formats and workflows in GeoDin, including Excel, CSV, AGS, DXF, PDF, and GeoDinML
---

# Export

GeoDin provides multiple export formats for different use cases, from quick tabular dumps to full project-level data packages. This page is the entry point for the Exporting Data section: it gives a one-line summary of each format and links to the dedicated guide.

## Choosing a format

| Format | Use it when... | Guide |
|---|---|---|
| **Excel** | You need a structured workbook for analysis, sharing, or as a round-trip import template | [Excel Export](export/excel.md) |
| **CSV** | The downstream tool prefers plain delimited text, or you need to re-export a data sequence | [CSV Export](export/csv-export.md) |
| **AGS** | Delivering geotechnical data per AGS 4.0.4 / 4.1 | [AGS Export](export/ags-export.md) |
| **DXF** | The output needs to land in AutoCAD or another CAD tool as editable vectors | [DXF Export](export/dxf-export.md) |
| **GeoDinML** | Pushing data between GeoDin and GeoDin Onsite, or distributing a project list | [GeoDinML Export](export/geodinml-export.md) |
| **PDF** | Static deliverables (reports, archives, attachments). Bulk PDF runs through the print/report system | [Bulk Print and PDF Export](../reporting/bulk-print-and-pdf-export.md) |

## Publish and Export

The **Publish and Export** feature creates a zip file containing an Access database with the selected objects. It is available at both the project level (a group of boreholes) and the individual borehole level (a single-borehole database that can be re-imported elsewhere). AGS export runs through this same feature.

## Onsite export defaults

For exports originating in GeoDin Onsite, the default export path is controlled by `Configuration > Folders > Export folder path` and supports shortcut codes like `[my documents]` and `[desktop]`. Exports are always placed in a project-named subfolder inside the configured path; Onsite creates the subfolder automatically.

PDF exports from Onsite contain a "DRAFT" watermark unless the form was produced via **Publish as Complete**. GeoDinML exports never carry a draft watermark.

***

## Reference: Column properties

When configuring export column properties, the following options are available:

- **Name (also for Excel export):** Columns can be named individually for better identification. When exporting to Excel, this name is used as the column title. Cell formatting can also be configured here.
- **Visible:** Controls whether a column is included in the export.
- **Column width:** Set by entering a number or using arrow keys (default: 20.0 mm). Text content wraps automatically within the cell.
- **Row height:** Calculated automatically to display all content in full. A minimum height can be specified; the maximum of all column minimum heights determines the row's minimum height.
- **Text style:** Selects the text formatting style for cells in this column.

## Reference: Presentation conditions

Presentation conditions control how individual cells in a report column are displayed based on their content. A column has a default font, but presentation conditions can override the font and background colour when specific criteria are met - for example, highlighting values that exceed a regulatory limit.

Multiple conditions can be defined and are evaluated in order. The first matching condition is applied; remaining conditions are skipped. Cells that match no condition use the column's default formatting.

**Example:** In a numeric column, values > 10 should appear violet, values >= 1 red, and all others black. Define two conditions in this order:

1. Cell content > 10 - colour violet
2. Cell content >= 1 - colour red

Cells not matching either condition remain black (the column default).

**Managing condition lists:** Conditions (and other list-based elements such as series or columns) can be added, duplicated, deleted, and reordered using the toolbar icons (New, Duplicate, Delete, Move Up, Move Down). Drag-and-drop reordering is also supported. The *Edit without refresh* toggle suspends live preview updates while reordering, which is useful for large datasets.

## Reference: Post-selection (data filtering)

A post-selection filters data records from already-correlated data types (see [Pre-selection](../data-visualization/maps-and-site-plans.md#pre-selection) for correlation).

- **Name** - A label for the post-selection, shown in layout interfaces when the post-selection is exposed as a quick setting.
- **Condition** - A logical expression that defines the filter criterion. Click inside the field to open the expression builder listing available parameters. Double-click a parameter name to insert it. Syntax is described under [Selection syntax](../data-analysis/queries/conditions-and-operators.md).

**Parameterised conditions:** Instead of hard-coding a threshold (e.g. `$WAT:Cl$ > 100`), use a placeholder so the user can supply the value at runtime:

| Placeholder | Use with |
|---|---|
| `%NUMERICPARAM` | Numeric data fields |
| `%STRINGPARAM` | Text data fields |
| `%DATEPARAM` | Date data fields |

- **Default value** - Pre-fills the parameter input with a starting value.
- **Make available as quick setting** - Exposes the parameter in the layout's Selection Parameter panel so users enter only the value, not the full expression.

**Displaying selector content in a layout:** Use the variable text element with the macro `$%SelectorContent:Selector_name[@format]$`. Use `@c` to display the dictionary code instead of the translated long name.

## Reference: Blank values in statistic reports

When a statistic report analyses parameters that have no measured values for some periods or locations, three display options control how missing data appears:

| Option | Behaviour |
|---|---|
| **Display with number = 0** | A row is created for every parameter; missing counts show `0`. |
| **Display as empty row** (default) | A row is created for every parameter; missing counts are left blank. |
| **Do not display in the report** | Parameters with no data are omitted entirely. |

When a statistic interval is defined (e.g. yearly), the same three options apply to individual time periods within each parameter - missing intervals can show `0`, be left blank, or be suppressed.

## Reference: Report row types

Each row in a report definition has a type that controls its content:

- **Measurement parameter** - Displays data for a single measurement parameter (value, unit, etc.) as defined by the selected column configuration and parameter assignment.
- **Measurement program** - Inserts an entire measurement program as a block; GeoDin adds parameters automatically in their program sort order. More efficient than adding parameters individually for large data types.
- **Text** - Creates a separator or header row spanning the full report width. Supports text content (including variable text macros), fill colour, and outline styling.
- **Page break** - Forces a page break at the defined position. Commonly placed at the end of a row definition so each sample starts on a new page.
- **Remove text line or page break if no parameter lines follow** - When enabled, suppresses orphaned header rows or page breaks that would appear when a data source has no matching parameter data (e.g. a "Cations" header with no cation values).

## Reference: Text row properties

Text rows can display static text, pre-defined text, or variable text built from data-field macros (via the **Build** button). Translation language can be set to control how dictionary-backed field contents are rendered; the default "Automatic" uses the language specified on the object type.

| Option | Description |
|---|---|
| **Evaluate line break (backslash) in data fields** | When enabled, `\` characters in database content produce line breaks instead of being displayed literally. |
| **Hide backslash characters in data fields** | Strips `\` characters from displayed text without converting them to line breaks. |
| **Ignore unknown data field references** | Suppresses unresolvable `$...$` variable references instead of showing them as raw text. Useful for layouts shared across different object types. |

## Reference: Dynamic captions

Dynamic captions provide per-data-record information in column headers of laboratory control reports that display multiple measurements per row. The caption content is defined using text macros. A report can contain only one dynamic caption definition, but multi-line captions are supported (insert a return within the macro). No other row types may precede the dynamic caption row.

## Reference: Footer row properties

- **Name** - Label for the footer line, typically written in the first column. Use the *To column* option to span the label across multiple columns; set to `0` to suppress the label entirely.
- **Type** - Choose between a text footer or a statistical-value footer.
- **Decimal places** - Controls precision of calculated values. Set to `0` to strip trailing insignificant decimals; otherwise all calculated decimals are shown.

**Statistics are calculated per column.** A statistical footer always evaluates the entire column of the report. Whether a column can be evaluated at all is detected automatically from its content: a column holding text produces no statistics. The calculation can also be switched off for an individual column where it is not meaningful - a column of depth values, for example - through the column's own properties (see [Column properties](#reference-column-properties)).

**Group report lines.** Instead of a single footer block at the end of the report, footers can be calculated for groups of lines, so a report that covers several boreholes or samples carries statistics per borehole or per sample. Enter the position of the grouping column in **Number of the column with the grouping feature**; GeoDin inserts a footer each time the content of that column changes.

**Example** - grouping on column 1 (Borehole) inserts a minimum footer at every change of borehole:

| Borehole | Sample | Value |
|---|---|---|
| B1 | P1 | 10 |
| B1 | P2 | 12 |
| B1 | P3 | 15 |
| Minimum | | 10 |
| B2 | P1 | 25 |
| B2 | P2a | 20 |
| B2 | P3 | 28 |
| Minimum | | 20 |

<!-- src: help/H0000007189#footer-statistics -->

## Reference: Parameter settings (list comparison)

- **Sensitivity of response** - Adjusts the tolerance for list-comparison checks. At 100 % (default) the comparison is exact. Reducing to 90 % introduces a 10 % margin, so a measured value of 95 mg/l would be flagged against a limit of 100 mg/l.
- **Parameter display - if list value is available** - Show the parameter always, or only when the measured value exceeds the comparison value.
- **Parameter display - if list value is not available** - Controls whether parameters without a comparison value appear in the report.

## Reference: Barcode and QR code

Report layouts can include barcode or QR code elements. Select the code type, rotation, colour, and whether human-readable text is shown below the code.

Supported types: EAN-13, EAN-8, UPC-A, UPC-E, Code 128, ITF, Interleaved 2 of 5, Code 39, Code 39 Extended, Code 93, Code 93 Extended, MSI, Code 11, QR code.

## Reference: Export measurement values dialog

<!-- src: help/H0000003880#export-measurement-values -->

At the level of a measurement point or a group of measurement points, the Object Manager offers the method **Export measurement values**. Starting it opens a dialog that holds every setting for the export; the matching import method sits beside it (see [Formulas in measurement values](../data-analysis/formulas/formulas-in-measurement-values.md#reference-import-export)).

- **Data type** - the drop-down lists the data types available for the selected measurement point(s).
- **Export type** - Microsoft Access database, UBA CSV, free CSV, GMS, or Access table (lines). The Access format is the most portable of these and is read by many Windows applications.
- **File name** - where the exported file is written.
- **Parameter list** - the list of data fields to export. Click **Edit** to change it.

Every exported data set is augmented with the matching general data: the short and long name of the object and the name of the measurement point (`SHORTNAME`, `LONGNAME`, `INVNAME`), plus the internal measurement point ID and sample number (`INVID`, `SMPID`). With knowledge of the GeoDin data model, those two identifiers let you rebuild the links between exported tables.

For the **Microsoft Access database** type, select an existing database or create a new one as the export target; the format-specific settings below apply to the other types.

### UBA CSV

The UBA format follows the German federal and state agreement on groundwater data exchange (Annex II.x 12.04, table template for the LAWA AK "Optimizing the groundwater service", Chemnitz, 1999-02-04). GeoDin's export covers the measurement values only.

Before this format can be used, the parameters must carry the corresponding format information on the system side - see [Set-up of the information for UBA-export](../configuration/object-types-management.md#set-up-of-the-information-for-uba-export).

The output is a text file in CSV form: one line per parameter, semicolon between entries, comma as decimal separator. The entries appear in this order:

1. Measurement point number
2. Measurement dimension number
3. Division identification number
4. Unit
5. Day
6. Month
7. Year
8. Detection limit
9. Measurement value
10. Features
11. Remarks

| Entry | Coding |
|---|---|
| Division identification number | `1` for the complete content (dissolved and undissolved parts, homogenized sample after DIN), `6` for the dissolved part only (separation by filtration or centrifugation) |
| Unit | `02` m3/s, `04` degrees Celsius, `06` mS/m, `07` mg/l, `10` micrograms/l, `23` relative values, `29` mmol/l, `33` m |
| Features | `-` when the measured value lies below the detection limit |

The measurement point number is read from the general data of the measurement point (short name); the measurement dimension number and the division identification number come from the system settings; measurement value and time come from the data set of each sample. If the export unit differs from the unit used in GeoDin, the value is converted during the export.

Detection limits resolve in this order: a detection limit entered in the supplementary information of the parameter is used first; otherwise the default stored in the system settings applies. A measurement recorded below the detection limit (for example `-0,05`) is itself used as the detection limit, and `-` is written in the Features entry.

Example of exported measurement values (several parameters from one data set):

```
17/80;1061;1;;13;02;1990;0;7,1;;
17/80;1082;1;06;13;02;1990;0;72;;
17/80;1246;1;07;13;02;1990;194;0,025;;
17/80;1244;1;07;13;02;1990;53;3,8;;
```

### Free CSV

The data are exported as comma-separated text. The first line defines the column names, the point is the decimal separator, and the comma separates the columns. The general-data fields listed above lead the header line, followed by one column per exported parameter:

```
SHORTNAME,LONGNAME,ZCOORDB,ZCOORDE,XCOORD,YCOORD,MKZ,INVNAME,INVZBEG,INVZEND,INVID,INVTYPE,SMPID,SMPNAME,SMPDATE,SMPTIME,NO3,SO4,FE_G,MG,NA,AOX,CKW,BTX
17/80_1,"17/80 Example 1",40.50,56.00,5408320.00,5817447.00,,OP,4.30,6.30,8NKE420004FIL001,FIL,77,17/80_1,13.02.1990,20:12,2.1,0,,,,,,
```

### GMS

The GMS format uses specially defined classification parameters, which can be filled with [general formulas](../data-analysis/formulas/formula-basics.md#general-formulas). Z is calculated with respect to the height datum. So that all data sets can be ordered by height, GMS3 records also export the top of the borehole and the top and bottom of the filter. Where several measurement rows exist per filter, run the export with time selectors to get unambiguous results.

### Access table (lines)

The parameters are written into an MS Access database with the samples in lines and the parameters in columns. Select an existing database or create a new one before exporting, and give the output table a name. If a table of that name already exists in the selected database, GeoDin asks whether the existing data should be overwritten.
