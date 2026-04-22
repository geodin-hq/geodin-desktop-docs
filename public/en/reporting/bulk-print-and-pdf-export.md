---
description: How to bulk print and export borehole reports as PDF, PNG, DXF, and EMF files in GeoDin
---

<!--
**Content status:** Polished from product documentation
**Source quality:** A (Help + Transcripts)
**Needs:** screenshots, editorial review
-->

# Bulk Print and PDF Export

GeoDin allows you to print or export reports for multiple boreholes at once, eliminating the need to process each borehole individually.

## Bulk printing workflow

To bulk print, select multiple objects in the object manager (Ctrl-click or Shift-click), open a layout, and use **Print Preview** to choose an export mode. GeoDin handles hundreds of boreholes in a single operation. <!-- src: transcript/reporting-exports#bulk-print-pdf-export -->

**Three bulk export modes are available:** <!-- src: transcript/reporting-exports#bulk-print-pdf-export -->

1. **Export pages as a contiguous PDF** — all boreholes in one file
2. **Export pages as individual PDFs** — one file per page
3. **Export pages as PDF per object** — one file per borehole (if a borehole spans multiple pages, all pages are included in that file)

**Print targets:** Any system printer (PDF printer, Microsoft Print to PDF, etc.) OR GeoDin's internal PDF printer, which supports PDF, PNG (raster), vector files (EMF), and DXF export. <!-- src: transcript/reporting-exports#bulk-print-pdf-export -->

## Print preview

The **Print Preview** button activates the preview view of a layout with connected data. For multi-page boreholes, use the page navigation arrows (next/previous) to browse pages. <!-- src: transcript/reporting-exports#print-preview-layer-overview -->

The **Layer Overview** button (lower-left corner) opens the overview of layout layers and drawing elements. Layers can be toggled visible/invisible and reordered (front/back). The **Edit Graphics** button (also lower-left) opens a new blank layout in edit mode for creating or modifying layouts. <!-- src: transcript/reporting-exports#print-preview-layer-overview -->

For tabular data exports (Excel, CSV, AGS), see [Export](../data-collection/export.md).

---

## Reference: Print and report settings

{% hint style="warning" %}
The following reference content is from legacy product documentation. Verify against the current version of GeoDin.
{% endhint %}

### Fill pattern scaling

In the standard setting, areas are filled with patterns whose dimensions are defined by the pattern itself. In very small areas, a pattern (e.g., a single gravel symbol) may be too large, leaving the area filled only with the background color. With **Automatic scaling** enabled, the pattern is reduced to fit small areas, making them recognizable. Note that this can cause the same symbol to appear in different sizes across a graphic. <!-- src: help/05/3228 -->

### Page print numbers

Page print numbers allow numbering independent of the layout's internal page sequence — useful for reports with appendices. The layout must contain a variable text element with the macro `$%PRNPAGE$`. Change the "Start with page print number" value to offset numbering (e.g., set to 26 to continue from a 25-page report). <!-- src: help/05/3666 -->

### Report sequences

Reports can automate the printout of several layouts in a predefined sequence, such as documenting a borehole with a master data sheet, geological representation, and support plan. <!-- src: help/05/3730 -->

{% hint style="warning" %}
Ensure all layouts in a report sequence have the same format (e.g., A4 portrait), as most printers cannot handle mixed page sizes in one print job.
{% endhint %}

Access a layout list (`.GLC` file) via the **Available Layouts** node. In the print preview, you can: <!-- src: help/05/3730 -->

- Toggle between colour and black-and-white output
- Zoom in/out on the preview
- Select which pages to print (all or a subset)
- Sort the preview by layout or object name
- Export to contiguous PDF, individual PDFs, PDF per object, PNG, or EMF

### Layout overview conditions

In the layout overview, you can set conditions to filter which objects are printed. For example, to create separate layouts for boreholes up to 50 m and deeper boreholes: <!-- src: help/05/8772 -->

- First layout condition: `$ZCOORDE$ <=50`
- Second layout condition: `$ZCOORDE$ >50`

When you select a query or group with one of these layouts, only objects matching the condition are printed. Use the `<Build>` button to construct conditions using available table fields via the text macro dialogue.

### Scale settings for site plans

Define the scale of a site plan by entering a scale ratio (the paper size is calculated from corner coordinates), or by entering width and height (the required scale is calculated). Use the "Round scale to" field to pre-define usable scales (e.g., `1,2,5` produces scales of 1, 2, 5, 10, 20, 50, 100, ...). <!-- src: help/05/7436 -->
