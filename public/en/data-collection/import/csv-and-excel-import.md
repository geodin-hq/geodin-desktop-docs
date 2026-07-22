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
