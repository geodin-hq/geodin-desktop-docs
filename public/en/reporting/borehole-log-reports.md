---
description: How to generate borehole log reports in GeoDin using templates, layouts, and the borehole log graphic element
---

<!--
**Content status:** Polished from product documentation
**Source quality:** A (Help + Transcripts)
**Needs:** screenshots, editorial review
-->

# Borehole Log Reports

Borehole log reports are GeoDin's primary output for documenting individual boreholes. Templates and layouts drive the report output, combining borehole description text, layer fill patterns, water levels, borehole design diagrams, data-sequence plots, test result tables, static labels, and dynamic macros into a single printable document. <!-- src: transcript/reporting-exports#borehole-log-reports -->

## Borehole element configuration

The borehole element supports three drawing types: **Graphic Log**, **Tabular Log**, and **Log with Default**. Elements can be resized within the layout; a red outline indicates insufficient space for the description text. <!-- src: transcript/reporting-exports#borehole-log-reports -->

**Scale options:**
- Fixed ratios (e.g., 1:100, 1:200)
- Fixed depth intervals (e.g., only show the first 10 m)
- "Fit to Page" (dynamic scale per object) <!-- src: transcript/reporting-exports#borehole-log-reports -->

A depth interval setting can force a page break — for example, setting an end depth of 10 m causes the borehole to continue on page 2. Scale, interval, page break, and fit-to-page settings interact and must be balanced together. <!-- src: transcript/reporting-exports#borehole-log-reports -->

{% hint style="info" %}
Each borehole with measurement data is marked with a small blue sphere icon next to it in the tree view.
{% endhint %}

For cross-section reports, see [Cross-Section Reports](cross-section-reports.md). For printing and exporting reports, see [Bulk Print and PDF Export](bulk-print-and-pdf-export.md).

---

## Reference: Report graphic element

{% hint style="warning" %}
The following reference content is from legacy product documentation. Verify against the current version of GeoDin.
{% endhint %}

### Overview

The **Report** graphic element displays tables with database contents or calculated reports (statistics, list comparisons, etc.). It can be inserted into an object frame multiple times. Each graphic element has a configurable **element name** (for identification in the tree view), a **drawing layer** assignment, and **arrangement controls** (bring to front / send to back) for overlapping elements. <!-- src: help/05/741 -->

### Report types

| Type | Description |
|---|---|
| **Original data report** | Shows original data in summary: tabular borehole presentations, sample overviews, measurement value tables. Nearly all data in a GeoDin database can be documented in any combination. | <!-- src: help/05/755 -->
| **Report calculation** | Processes measurement value data before reporting — includes list comparison, statistics, annual statistics, laboratory control reports, plausibility reports, and grain size analyses (particle size parameter, sieve analysis, hydrometer analysis). |
| **Plug-in reports** | Requires external plug-in modules. The plug-in handles all configuration and calculation; no further settings can be made in GeoDin. |

### Image element

The **Image** graphic element can be used for company logos, topographic backgrounds, and similar. Supported formats: BMP, EMF, ICO, JPG, GGF (GeoDin graphic files), PCX, PNG, TIFF, WMF. After adding, the element appears as a blue dashed frame; select the image file via the **Data source** settings. <!-- src: help/05/1039 -->

### Well design horizontal scale

Configure the horizontal scale for well design elements. Enter diameters for borehole and casing elements drawn at accurate scale. Options include "Constant width" (fixed maximum borehole diameter), "Centre display" (keeps the well design centered regardless of data), and percentage-based borehole widening for better display of fill patterns or staggered piezometers. <!-- src: help/05/1335 -->

### Report parameter selection

Select a parameter from the available data types by clicking the button in the entry field to open the selection dialogue. <!-- src: help/05/886 -->
