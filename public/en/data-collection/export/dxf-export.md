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

The export is reached from **File > Print...** or from the print button, and it can be written in either of two structures:

- **Block structure** - graphic elements are grouped into DXF blocks. Use this when the receiving CAD tool should treat a borehole column or a symbol as one manipulable entity.
- **Linear structure** - every drawing element is stored separately. Use this when each line, hatch, and text item must be editable on its own.

<!-- src: help/H0000003470#dxf-export -->

## Optional colour mapping

GeoDin's fill patterns carry RGB colour values, while DXF carries the 255 numbered AutoCAD colours. An internal table correlates the two, and you can extend it with your own entries.

Additional correlations are saved in a file named `ACAD_COLORS.TXT` in the `SYSLIB` folder of the GeoDin installation. Each line maps one RGB value to one AutoCAD colour number:

```
; red value,green value,blue value=AutoCAD colour number
255,255,210=51
```

The example maps GeoDin's background colour for gravel to AutoCAD colour 51 (yellow). The file shipped with GeoDin already contains the correlations for the colours of the DIN 4023 fill pattern table. For how the fill patterns themselves are defined, see [Fill Patterns and Symbols](../../configuration/fill-patterns-and-symbols.md).

## Legacy export routes

{% hint style="warning" %}
Graphic export runs through the print dialog - DXF output itself remains available that way. The former route **File > Export > Picture file...** was removed in GeoDin 9.6 (Release Build G2651022).

Two output formats were retired along the way: Windows Metafile (`.wmf`) is no longer supported since GeoDin 9.0, and the legacy Windows Bitmap (`.bmp`) and JPEG (`.jpg`, `.jpeg`) outputs are no longer supported since GeoDin 9.6. PNG is the supported bitmap format; EMF remains available as the Windows vector format.
{% endhint %}
