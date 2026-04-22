---
description: DXF Export
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# DXF Export

## Bulk Print & PDF Export

Bulk printing: select multiple objects (Ctrl/Command-click) → open layout → Print Preview → choose export mode. <!-- src: transcript/reporting-exports#bulk-print-pdf-export -->

Three bulk export modes are available: <!-- src: transcript/reporting-exports#bulk-print-pdf-export -->

Bulk printing handles hundreds of boreholes in one click (no per-borehole print action required). <!-- src: transcript/reporting-exports#bulk-print-pdf-export -->

When a single borehole spans multiple pages due to scale, "PDF per object" creates one file containing all pages for that object. <!-- src: transcript/reporting-exports#bulk-print-pdf-export -->

Print options: any system printer (PDF 24, Snagit, Microsoft Print to PDF, etc.) OR GeoDin's internal PDF printer. <!-- src: transcript/reporting-exports#bulk-print-pdf-export -->

GeoDin's internal PDF printer supports PDF, PNG (raster), vector files, and DXF export. <!-- src: transcript/reporting-exports#bulk-print-pdf-export -->

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
