---
description: Importing data into GeoDin from external files and databases
---

# Import

GeoDin imports data from a wide range of file formats and external databases. This page is the entry point for the Importing Data section: it covers the overall **batch import workflow** that applies to every import type, then links to the specific guides for each source.

## Batch import workflow (General → Samples → Measurements)

Most data lands in GeoDin in three sequential steps:

1. **Import General Data** to create the locations.
2. **Import Samples** into those locations.
3. **Import Measurement Data** for those samples.

Tests cannot be imported before their parent samples exist, and samples cannot be imported before their parent locations exist — the order matters.

The import wizard is launched from different starting points depending on the level:

- **General Data** — from the Objects branch via `Import General Data`.
- **Samples** — from `All Objects > Import Samples`.
- **Measurement Data** — from `Measurement Points > Samples (or Locations) > Import Measurement Data`.

Every wizard follows the same three steps:

1. **Data Source** — choose the file and worksheet.
2. **Parameter Links** — map source columns to GeoDin fields.
3. **Import** — preview and execute.

### Linking samples and measurements to their parents

When samples and measurements are imported, the source file must include a column GeoDin can use to match each row to the right parent:

- **Samples** — add a column (typically named `Location`) holding the borehole short name.
- **Measurements** — build a concatenated identifier (`borehole + sample reference + from + to recovery depth`), typically named `MeasID`, that uniquely points each row at the correct sample.

### Bulk vs. one-at-a-time

- **Main measurement data type** — bulk import across multiple samples in one run.
- **Complex (sub) data types** (e.g. UU curve, CU measurement data) — must be imported one measurement point at a time. There is no bulk path for nested data types.

Batch import is supported for general data, samples, data sequences, and sample-level measurement tests.

<!-- src: transcript/data-import-migration#batch-import-workflow-general-samples-measurements -->

## Import guides by source

- [Data Sequences (CPT, free-format)](import/data-sequences.md) — depth-indexed series including CPT, GEF, and custom ASCII formats
- [CSV and Excel Import](import/csv-and-excel-import.md) — spreadsheet and delimited text imports for general/sample/measurement data
- [AGS Import](import/ags-import.md) — AGS 4.0.4 / 4.1 format
- [GeoDinML Import](import/geodin-ml-import.md) — field-to-office data exchange from GeoDin Onsite
- [Cross-Database Object Copying](import/cross-database-object-copying.md) — copying objects between GeoDin databases
- [SEP 3 Exchange Database Import](import/sep3-exchange-database.md) — SEP 3 standard
