---
description: AGS
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# AGS

## Export Formats (PDF, AGS, DXF, CSV, Excel, GeoDin ML)

Export commands (red dot + two arrows icon) are available on most tabular views: general data, sample table, measurement data tables, data sequence series. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

Any data table (general data, samples, measurement data) can be exported to Excel via the red-dot export button — the recommended way to inspect expected headers/structure before preparing an import table. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

Data sequence series can be re-exported as CSV files — useful when users import, modify, and re-export. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

The `All Objects > Data Management > General Data` tabular view shows metadata for all locations at once and can be exported to Excel. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

**Publish and Export** feature creates a zip file containing an Access database with the selected objects — available at project level and at individual borehole level. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

A borehole exported via Publish and Export produces a single-borehole Access database that can be re-imported elsewhere. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

**AGS export**: AGS 4.0.4 and AGS 4.1 formats supported via Publish and Export → AGS export; user can choose which groups to export, then Execute. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

**DXF export**: the internal PDF printer can export layouts as DXF files for use in AutoCAD or other CAD software. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

Internal PDF printer supports vector output (not just raster), preserving quality for CAD/publication. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

GeoDin Onsite has two export mechanisms: <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

Onsite form export options include `Export to PDF` and `Export GeoDin` (GeoDin ML). <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

Onsite PDF exports contain a "DRAFT" watermark unless the form was produced via `Publish as Complete`; GeoDin ML exports never carry a draft watermark. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

Onsite default export path is controlled by `Configuration > Folders > Export folder path`; supports shortcut codes like `[my documents]` and `[desktop]`. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

Onsite exports are always placed in a project-named subfolder inside the configured export path (Onsite auto-creates the subfolder). <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

AGS format is supported as an Onsite output — `Publish as Complete` generates the full deliverable set (GDOF, PDF, GeoDin ML, AGS). <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

When Onsite `Publish as Complete` runs, only the `.GDOF` file stays visible locally as a photocopy; the full deliverable set is placed in the shared delivery folder. <!-- src: transcript/reporting-exports#export-formats-pdf-ags-dxf-csv-excel-geodin-ml -->

## AGS Format Support

For AGS object type imports with Access databases, GeoDin creates the AGS database structure on the fly at import time. <!-- src: transcript/data-import-migration#ags-format-support -->

For AGS imports into SQL Server databases, users must first manually create a dummy AGS object to prepare the database table structure before importing. <!-- src: transcript/data-import-migration#ags-format-support -->

AGS import handles custom field definitions with warnings but still imports successfully. <!-- src: transcript/data-import-migration#ags-format-support -->

AGS imports can handle nested measurement data (e.g. SCPG/SCPT) in a single procedure because the data is self-contained in the AGS group format — this advantage is NOT available for G1 object type imports. <!-- src: transcript/data-import-migration#ags-format-support -->

For AGS workflow, the main user effort is getting the AGS file format correct — GeoDin handles the import from there. <!-- src: transcript/data-import-migration#ags-format-support -->

AGS 4.0.4 and AGS 4.1 export formats are supported via `Publish and Export > AGS export`. <!-- src: transcript/data-import-migration#ags-format-support -->

AGS export lets the user choose which groups to export, then Execute. <!-- src: transcript/data-import-migration#ags-format-support -->

## AGS Format Integration

AGS 4.0.4 and AGS 4.1 export formats are supported via `Publish and Export > AGS export`. <!-- src: transcript/api-integrations#ags-format-integration -->

AGS export lets users choose which groups to export, then execute. <!-- src: transcript/api-integrations#ags-format-integration -->

AGS import capability exists (not demonstrated in training sessions). <!-- src: transcript/api-integrations#ags-format-integration -->

Onsite currently supports Step 3 (ISO) and G1 forms producing GeoDin ML; the EN ISO E2 standard is temporarily disabled in Onsite due to a bug in the GeoDin GeoDin ML importer specific to E2-flavoured GeoDin ML. <!-- src: transcript/api-integrations#ags-format-integration -->
