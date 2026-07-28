---
description: Importing CSV and Excel files into GeoDin for general data, samples, and measurements
---

# CSV and Excel Import

GeoDin imports both Excel worksheets (`.xlsx`, `.xls`) and CSV / delimited text files. This page covers the column-mapping workflow common to all CSV/Excel imports, plus the recommended approach of generating an import template by exporting from GeoDin first.

For depth-indexed data sequences (CPT and similar), see [Data Sequences](data-sequences.md). For the conceptual workflow of how General Data, Samples, and Measurements relate, see the [Import overview](../import.md#batch-import-workflow-general-samples-measurements).

## Mapping source columns to GeoDin fields

Mapping happens on the **Parameter links** tab of the import wizard (reached via the **Import general data** method on a project's **Objects** node). The easiest path is to prepare an Excel table that mirrors the tabular view of GeoDin: column headers matching either the long parameter name or the short database field name will auto-link via the **Automatic Link** button.

Mapping options in the import wizard:

- **Automatic Link** - matches headers to GeoDin parameters by name.
- **Drag-and-drop** - drag from the GeoDin parameter list (left pane) onto the source header (right pane) when names don't match.
- **Save as ICF** - save the parameter mapping as an ICF file and reload it on subsequent imports (via **Load configuration**) to skip manual mapping.

### Reading the two lists

The left pane lists the GeoDin side (the parameters of the selected data type, or the data fields of the selected object type), the right pane lists the columns of the import file. Both lists shrink as you work: an entry that has been linked is removed from its list and appears in the links table, so the panes only ever show what is still unassigned.

- The parameter list is limited to the parameters of that data type **that are installed in the database you are currently using**. Parameters defined on the system side but not yet added to this database do not appear - install them first with the [Datatype Manager](../../navigating-the-geodin-workspace/measurement-values/working-with-measurement-data.md#datatype-manager).
- Columns that you hid in the **Data source** step of the wizard are still listed, shown in a **grey font**.
- For imports that use the *Table by column* format option, the data fields and import columns of the *Additional measurement information* are shown in a **blue font**.

For general-data imports, assign the object or borehole name to the GeoDin field `LONGNAME`. If no import column is assigned to `LONGNAME`, GeoDin warns at import time that no data field was specified for the object name, and the imported objects appear in the Object Manager without a designation.

<!-- src: help/H0000008820#parameter-links -->
<!-- src: help/H0000010903#parameter-links -->

### Preview colours

After mapping, the import preview uses colour to show what will happen:

- **Red** - invalid or out-of-range values; these are blocked.
- **Green** - new data that will be inserted.
- **Purple / light green** - existing data that will be overwritten.
- Dictionary values that don't match an existing entry are flagged but still importable.

### Dictionary fields and unit system

- **Dictionary fields** - accept either the short code (e.g. `CPT`) or the full text value.
- **Unit system** - toggle under `File > Unit System` between Metric (SI) and US Customary. Unit conversions (e.g. feet to metres) happen on the fly during import.

## Use GeoDin's Excel export to generate a template

The fastest way to prepare an import file with correctly-named columns is to export the matching data type from GeoDin first, fill the exported file, and re-import.

- Any data table (general data, samples, measurement data) can be exported to Excel via the **red-dot export** button.
- The tabular **All Objects** view under Data Management shows general data for all locations in a single sortable table - exporting this view gives a complete template for general-data imports.
- Exported Excel files contain headers matching GeoDin's internal parameter names, ready for round-trip re-import.

{% hint style="warning" %}
<!-- src: transcript/batch-import-blank-values#mandatory-fields -->
If imported values arrive blank or grayed out with no error message, a
mandatory field is missing from the import file or the columns do not match
the GeoDin table structure. Build the file from a GeoDin export of the same
table (see above) so every required column is present - mandatory fields are
the ones shown in a darker purple in the entry form.
{% endhint %}

## Updating existing data records

An import can add new data records, update existing ones, or both. Choosing to update brings up further settings on the **Import** step of the wizard.

### Measurement data

**Search for** decides how an import row is matched against an existing record: by **date and time**, or by **sample name**. Once a match is found, one of three modes applies:

| Mode | Effect on a matched record |
|---|---|
| **Replace data record contents** | Existing data field contents (measurement values) are replaced by the contents of the import record. |
| **Supplement missing data record contents** | Contents of the import record are written only where the data field of the existing record is empty. |
| **Do not change found data record** | Existing records are left as they are. Combine this with *Add data records* to import only the rows that are new and silently skip the ones already imported. |

<!-- src: help/H0000008821#data-record-options -->

### General data

With the **Update general data** method, only rows that could be matched to an existing object are considered, and two modes are available:

| Mode | Effect on a matched object |
|---|---|
| **Replace data set contents** | Existing field contents are replaced by the contents of the import record. Where a cell of the import file is empty, the existing entry is kept rather than cleared. |
| **Replace missing data set contents** | Contents of the import record are transferred only where the corresponding field of the existing record is not yet filled in. |

With the **Import general data** method, *Add records* is the only sensible option; it is set by default and cannot be changed.

{% hint style="danger" %}
Assign the import columns with care. Under *Replace data set contents*, existing general data is overwritten wherever the import table has content, and the operation cannot be reversed.
{% endhint %}

<!-- src: help/H0000010908#data-set-options -->

### Checking the preview before importing

The preview shows the import rows in the structure of the target data type or object type, so you see the data exactly as it will later appear in GeoDin.

- Filter the rows by any criterion using the filter control in a column header, or pick a ready-made filter from the **Filter for preview** drop-down.
- Hover over a cell for details about that record and cell content.
- All active formulas of the data type or object type run for every changed record; the fields they calculate are highlighted in **blue**.
- Erroneous data is not imported. Missing data does not block the import - it can be entered afterwards in Data Management.
