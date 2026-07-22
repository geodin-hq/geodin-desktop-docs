---
description: One-page reference of every data format GeoDin imports and exports - geotechnical exchange, CAD/GIS layers, and report outputs - with links to each how-to.
---

# Supported data formats

This page lists every data format GeoDin can read or write, in one place. Use
it to answer "can GeoDin work with X?" - then follow the link for the full
how-to. Formats are grouped by what they carry: geotechnical data, map and CAD
layers, and report outputs.

## Geotechnical data exchange

| Format | Import | Export | Carries | How-to |
|---|---|---|---|---|
| **AGS 4** (4.0.4 and 4.1.1) | Yes | Yes | Complete site investigation data: locations, ground descriptions, samples, lab results | [AGS import](import/ags-import.md), [AGS export](export/ags-export.md) |
| **GeoDinML** | Yes | Yes | GeoDin's own XML exchange format; the bridge from GeoDin Onsite field data to the office | [GeoDinML import](import/geodin-ml-import.md), [GeoDinML export](export/geodinml-export.md) |
| **SEP 3** | Yes | - | German state-authority borehole data, delivered as an Access database and read via an exchange database | [SEP3 exchange database](import/sep3-exchange-database.md) |
| **GEF** | Yes | - | CPT data in the format standard in the Netherlands | [Data sequences import](import/data-sequences.md) |
| **Free-format ASCII** | Yes | - | CPT and other depth-oriented measurement series with configurable import filters | [Data sequences import](import/data-sequences.md) |
| **gINT databases** | Yes | - | Legacy borehole databases, converted to GeoDinML by the gINT converter (PROJECT, LITHOLOGY, POINT, and SAMPLING groups) | [Convert gINT databases](../plug-ins-and-tools/introduction/convert-gint-databases-to-geodinml.md) |
| **CSV** | Yes | Yes | Tabular object and measurement data | [CSV and Excel import](import/csv-and-excel-import.md), [CSV export](export/csv-export.md) |
| **Excel** | Yes | Yes | Tabular data; an Excel export can serve as the template for a later import | [CSV and Excel import](import/csv-and-excel-import.md), [Excel export](export/excel.md) |
| **GeoDin database** (cross-database) | Yes | Yes | Objects copied directly between two GeoDin databases, no file in between | [Cross-database object copying](import/cross-database-object-copying.md) |

## Map and CAD layers

| Format | Import | Export | Carries | How-to |
|---|---|---|---|---|
| **SHAPE** | Yes | - | Vector GIS layers displayed in GeoDin Maps | [Adding layers](../maps/adding-layers.md) |
| **DXF** | Yes | Yes | Vector CAD data: as a map layer in, and as editable layout geometry out | [Adding layers](../maps/adding-layers.md), [DXF export](export/dxf-export.md) |
| **JPG / TIFF / ECW** | Yes | - | Raster base maps (grid data) displayed in GeoDin Maps | [Adding layers](../maps/adding-layers.md) |
| **WMS / web tiles** | Yes | - | Live web map services as background layers | [WMS and web tile layers](../maps/wms-and-web-tile-layers.md) |

## Reports and integrations

| Format | Import | Export | Carries | How-to |
|---|---|---|---|---|
| **PDF** | - | Yes | Borehole logs, cross-sections, and layouts, single or in bulk | [Bulk print and PDF export](../reporting/bulk-print-and-pdf-export.md) |
| **Leapfrog Geo** | - | Yes | Borehole data handed to Leapfrog Geo for 3D modeling | [Leapfrog Geo export](../integrations/leapfrog-geo-export.md) |
| **ArcGIS** | Yes | Yes | Borehole planning and results exchanged with ArcGIS Pro / ArcGIS Online through an Excel-based workflow | [ArcGIS integration](../integrations/arcgis/overview.md) |
| **QGIS** | Live | Live | Direct access to GeoDin databases from inside QGIS via the GeoDinQGIS plugin - no file exchange involved | [QGIS integration](../maps/qgis-integration.md) |

***

## Reference: choosing an exchange format

- **Field to office:** GeoDin Onsite publishes GeoDinML - import it rather than
  re-entering field data. See [GeoDinML import](import/geodin-ml-import.md).
- **To or from other geotechnical software:** AGS 4 is the broadest standard
  route in and out. See [AGS 4](../navigating-the-geodin-workspace/object-types/ags-4.md)
  for how AGS groups map onto GeoDin object types.
- **Migrating a legacy database:** use the gINT converter for gINT databases;
  German SEP 3 deliveries go through the exchange database.
- **Bulk tabular edits:** export Excel, edit, re-import - the export doubles as
  the import template. See [CSV and Excel import](import/csv-and-excel-import.md).
