---
description: Exporting GeoDin data tables and data sequences as CSV
---

# CSV Export

GeoDin can export any tabular data view - general data, samples, measurement data tables, data sequence series - to CSV. CSV is the right choice when the downstream tool prefers plain text or expects a delimited format.

For Excel exports of the same tables (with column titles preserved as cell formatting), see [Excel Export](excel.md). For preparing import templates by exporting and re-importing, see [CSV and Excel Import](../import/csv-and-excel-import.md).

## Tabular CSV export

Export commands are available on most tabular views via the **red dot with two arrows** icon. The available views include:

- General data tables
- Sample tables
- Measurement data tables
- Data sequence series

The exported file uses GeoDin's internal parameter names as column headers, ready for round-trip re-import.

## Data sequence series re-export

Imported data sequence series can be re-exported as CSV. This is useful when you need to:

- Pull a series out of GeoDin to edit the values in another tool, then re-import.
- Hand off raw depth-indexed data to a process that doesn't read GEF or other CPT formats.
