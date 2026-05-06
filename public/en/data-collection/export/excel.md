---
description: Exporting GeoDin data tables to Excel for analysis, sharing, or as import templates
---

# Excel Export

GeoDin can export any data table to Excel: general data, sample tables, measurement data tables, and data sequence series. The export preserves column titles via cell formatting, so the resulting workbook is ready to read or to use as a round-trip import template.

For CSV equivalents, see [CSV Export](csv-export.md). For the import side of the round-trip, see [CSV and Excel Import](../import/csv-and-excel-import.md).

## Exporting a tabular view

Export commands sit on most tabular views and are identified by the **red dot with two arrows** icon. The same icon and dialog are used across general data, sample tables, measurement tables, and data sequence series — the workflow is consistent regardless of the data type.

The **All Objects > Data Management > General Data** tabular view shows metadata for all locations at once. Exporting this view produces a single workbook covering every location in the database, useful for project-level reporting or as a starting point for bulk-edit-then-reimport workflows.

## Round-trip with import

Excel files exported by GeoDin contain headers matching GeoDin's internal parameter names. They can be re-imported via the import wizard's **Automatic Link** mapping with no manual column-mapping step required.

Typical workflow:

1. Export the relevant data type from GeoDin to Excel (creates a template with correct headers).
2. Edit or fill the file in Excel.
3. Re-import using the import wizard.
