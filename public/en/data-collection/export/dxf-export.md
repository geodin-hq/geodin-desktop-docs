---
description: Exporting GeoDin layouts as DXF for use in AutoCAD and other CAD tools
---

# DXF Export

GeoDin's internal PDF printer can export layouts as **DXF** - useful when boreholes, cross-sections, or site-plan layouts need to land in AutoCAD or another CAD package as editable vector geometry rather than a flat raster image.

For PDF and bulk multi-borehole printing, see [Bulk Print and PDF Export](../../reporting/bulk-print-and-pdf-export.md). For tabular Excel/CSV exports, see [CSV Export](csv-export.md) and [Excel Export](excel.md).

## When to use DXF

DXF preserves vector geometry. Use it when the downstream workflow needs to:

- Edit the layout in CAD (move, recolour, re-layer).
- Combine the borehole or cross-section with other CAD drawings.
- Drive a CAD-based deliverable workflow.

For static deliverables (reports, archives, email attachments) PDF is usually the better choice.

## How it works

DXF export runs through GeoDin's internal PDF printer. The same printer drives PDF, PNG, and EMF output - the difference is the chosen output format. The vector path is preserved end-to-end, so line work, fill patterns, and text remain editable in the receiving CAD tool.
