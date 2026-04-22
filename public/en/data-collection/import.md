---
description: Import
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Import

## Batch Import Workflow (General → Samples → Measurements)

Batch import has three sequential steps: (1) import General Data to create locations, (2) import Samples, (3) import Measurement Data — tests must be imported after their parent samples exist. <!-- src: transcript/data-import-migration#batch-import-workflow-general-samples-measurements -->

Import wizard is triggered from the objects level via `Import General Data`; samples imported via `All Objects > Import Samples`; measurements via `Measurement Points > Samples (or Locations) > Import Measurement Data`. <!-- src: transcript/data-import-migration#batch-import-workflow-general-samples-measurements -->

The import wizard has consistent steps: (1) Data Source (choose file + worksheet), (2) Parameter Links (map source columns to GeoDin fields), (3) Import (preview + execute). <!-- src: transcript/data-import-migration#batch-import-workflow-general-samples-measurements -->

For sample import, users must add a column (e.g. named "Location") identifying the borehole each sample row belongs to — GeoDin uses this column to match samples to existing locations. <!-- src: transcript/data-import-migration#batch-import-workflow-general-samples-measurements -->

For measurement import, users must build a concatenated identifier string (borehole + sample reference + from + to recovery depth) to match each measurement row to the correct sample — the column is typically named `MeasID` or similar. <!-- src: transcript/data-import-migration#batch-import-workflow-general-samples-measurements -->

For the main measurement data type, bulk import is possible across multiple samples at once. <!-- src: transcript/data-import-migration#batch-import-workflow-general-samples-measurements -->

For complex (sub) data types (e.g. UU curve, CU measurement data), import must be done one measurement point at a time; there is no bulk import for complex/nested data types. <!-- src: transcript/data-import-migration#batch-import-workflow-general-samples-measurements -->

Batch import is supported for general data, samples, data sequences, and sample-level measurement tests. <!-- src: transcript/data-import-migration#batch-import-workflow-general-samples-measurements -->

## CSV & Excel Import

Supported import file formats include Excel worksheets and CSV/text files. <!-- src: transcript/data-import-migration#csv-excel-import -->

The easiest import path is to create an Excel table that resembles the tabular view of GeoDin — column headers matching either the long parameter name or the short database field name will auto-link via the `Automatic Link` button. <!-- src: transcript/data-import-migration#csv-excel-import -->

Column mapping can be established via drag-and-drop from the GeoDin parameter list (left pane) onto the source header (right pane), or via auto-link if names match. <!-- src: transcript/data-import-migration#csv-excel-import -->

Parameter mapping configurations can be saved as an ICF file and reloaded in subsequent imports to skip the manual mapping step. <!-- src: transcript/data-import-migration#csv-excel-import -->

On import preview, invalid/out-of-range values are flagged in red; dictionary values that don't match existing entries are flagged but still importable. <!-- src: transcript/data-import-migration#csv-excel-import -->

After mapping, the preview shows new data in green and overwritten data in purple/light green. <!-- src: transcript/data-import-migration#csv-excel-import -->

Dictionary fields can be imported using either short codes (e.g. `CPT`) or full text values. <!-- src: transcript/data-import-migration#csv-excel-import -->

Recommended preparation workflow: first export an existing data type from GeoDin to Excel to get a template with correct headers, then fill it in and re-import. <!-- src: transcript/data-import-migration#csv-excel-import -->

User unit system toggle lives under `File > Unit System` — switches between Metric (SI) and US Customary; unit conversions (e.g. feet to metres) happen on the fly during import. <!-- src: transcript/data-import-migration#csv-excel-import -->

## CPT & Data Sequence Import (GEF, ASCII, Custom Filters)

GeoDin has a dedicated ASCII CPT import filter built for historic company use. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

For generic depth-sounding data, users should use the "General Data" import section within Data Sequences (not the ASCII-specific CPT importer). <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

CSV CPT import is NOT handled by the CPT-specific importer — users must use the generic Data Sequences import. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

GEF file format is supported natively for CPT data (GEF is a standard format used in the Netherlands and UK). <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

Import filters for Data Sequences are user-created structures defining: depth column index, data-columns-begin column, number of data columns, decimal places, decimal delimiter, field separator, unit of depth column, and series name for each data column. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

The Import Filter dialog is opened via `Import > Import Filter > New Import Filter`. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

Filters are stored in the user's syslib configuration folder in a file called `Sony_Filter.sys` — this file can be shared between users to distribute filter configurations. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

The Data Sequences import has a constraint: data columns MUST be located to the right of the depth column in the source file. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

The Data Sequences import has NO option to skip/exclude specific columns during import — all columns right of depth are imported; users must delete unwanted series manually after import. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

Users can build their own custom import filters for arbitrary depth-indexed data such as "measurement while drilling" (penetration speed, tool pressure, injection pressure, torque, RPM). <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

Data sequence series can be re-exported as CSV files — useful if users import, modify, and re-export. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

## Excel Export as Import Template Source

GeoDin can export any data table (general data, samples, measurement data) to Excel via the red-dot export button — the recommended way to see the expected headers/structure before preparing an import table. <!-- src: transcript/data-import-migration#excel-export-as-import-template-source -->

The tabular "All Objects" view under Data Management shows general data for all locations in a single sortable table — this view can be exported to Excel for template creation. <!-- src: transcript/data-import-migration#excel-export-as-import-template-source -->

Exported Excel files contain headers matching GeoDin's internal parameter names, ready for round-trip re-import. <!-- src: transcript/data-import-migration#excel-export-as-import-template-source -->

## gINT Migration & Layer Data Import Gap

gINT users historically populated layer data in Excel and imported to gINT — this Excel-based layer import is an explicit gap in GeoDin for the G1/Location object type and is a flagged critical feature request. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->

The gINT `.mdb` object type was mainly for boreholes and CPT locations — GeoDin's G1 object type was built to mimic this workflow. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->

GeoDin's AGS object type was built to mimic AGS group/header structure; importing AGS files "saves you this part of the job" because ground descriptions come through the importer automatically, unlike the manual-entry workflow required for G1 with non-AGS data. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->

The layer-data import gap is acknowledged internally as "a topic that's been discussed" and "a felt issue we need to deal with at some point"; the commercial team tracks feature requests internally and ranks this one near the top. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->
