---
description: Report Elements
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Report Elements

## Borehole Elements

**Borehole element** drawing type options: Graphic Log, Tabular Log, Log with Default. <!-- src: transcript/forms-templates-customization#borehole-elements -->

Borehole element can be resized; a red outline indicates insufficient space for the description text. <!-- src: transcript/forms-templates-customization#borehole-elements -->

Borehole scale can be set to 1:100, 1:200, etc.; or to a fixed depth interval (e.g., only show first 10 m); or "Fit to Page" (dynamic scale per object). <!-- src: transcript/forms-templates-customization#borehole-elements -->

Depth interval can force a page break — setting end depth to 10 m causes the borehole to continue on page 2. <!-- src: transcript/forms-templates-customization#borehole-elements -->

Scale, interval, page break, and fit-to-page interact and must be balanced together. <!-- src: transcript/forms-templates-customization#borehole-elements -->

Borehole text description is driven by Text Macro > Build button. <!-- src: transcript/forms-templates-customization#borehole-elements -->

Text macros for G1 ground description: most information sits inside the single "geological description" macro (unlike other object types which have separate petrography, color macros). <!-- src: transcript/forms-templates-customization#borehole-elements -->

Template layout objects include pre-made borehole logs (with ground description/layer patterns), water level triangle indicators, and borehole design visualizations. <!-- src: transcript/forms-templates-customization#borehole-elements -->

Borehole design display in templates can render the borehole with varying diameters, different casing types, different backfill materials, backfill grain size categories, and special features (concrete rings, piezometer boxes) at the correct depths. <!-- src: transcript/forms-templates-customization#borehole-elements -->

Borehole logs drive the primary report output alongside CPT traces and multi-borehole comparison layouts. <!-- src: transcript/forms-templates-customization#borehole-elements -->

## Depth Scale, Samples & Groundwater Elements

**Depth Scale** element: add from toolbar; can be placed left or right of the borehole. <!-- src: transcript/forms-templates-customization#depth-scale-samples-groundwater-elements -->

**Samples** element: automatically connects to the borehole and moves with it (height sync, no misfit). <!-- src: transcript/forms-templates-customization#depth-scale-samples-groundwater-elements -->

**Groundwater** element: similar behavior; shows nothing if no groundwater data exists in the object. <!-- src: transcript/forms-templates-customization#depth-scale-samples-groundwater-elements -->

**Well Design** element: for casing and filling visualization. <!-- src: transcript/forms-templates-customization#depth-scale-samples-groundwater-elements -->

Water levels can be displayed in templates (e.g., triangle symbol at the water-level depth). <!-- src: transcript/forms-templates-customization#depth-scale-samples-groundwater-elements -->

## Report Elements

**Report element**: table-based element used for tabular output of general, layer, sample, or measurement data. <!-- src: transcript/forms-templates-customization#report-elements -->

Report element data source: choose General Data, Layer Data, Samples > Geotechnical Borehole > specific data type (e.g., CU). <!-- src: transcript/forms-templates-customization#report-elements -->

Report element columns: blue "+" button adds columns; each column has a Text Macro (which parameter to display) and a Heading. <!-- src: transcript/forms-templates-customization#report-elements -->

Report element selectors can exclude rows by parameter conditions (e.g., skip values above/below threshold). <!-- src: transcript/forms-templates-customization#report-elements -->

Report element conditional formatting: Column Properties > Presentation Options > set a condition + color (e.g., "if CU > 50, color row red"). <!-- src: transcript/forms-templates-customization#report-elements -->

Report element can combine multiple report blocks in one layout (e.g., one general-data report and one measurement report side-by-side). <!-- src: transcript/forms-templates-customization#report-elements -->

Report element can be exported directly from edit mode via right-click > Export as Excel or CSV. <!-- src: transcript/forms-templates-customization#report-elements -->

Report element can also be exported from the layout overview without opening edit mode, via the Report Access button (produces an Excel export). <!-- src: transcript/forms-templates-customization#report-elements -->

Report Type options: original data OR calculations (statistics, comparisons); the latter is more advanced. <!-- src: transcript/forms-templates-customization#report-elements -->

## Exporting data to Excel via the Report Element and Multi-Object Frame

The most practical pattern for exporting master data or layer data to Excel from multiple objects at once combines a **Multi-Object Frame** (German: *Mehrfachobjektrahmen*) with a **Report Element**.

**Steps:**

1. In the layout editor, insert a **Multi-Object Frame** from the element toolbar.
2. Drag the desired objects (or a query) from the GeoDin Object Manager into the Multi-Object Frame — this populates the frame with the selected objects.
3. Inside the Multi-Object Frame, insert a **Report Element**.
4. In the Report Element properties, set the **Data source** (e.g. General Data, Layer Data, or a specific measurement data type).
5. Add columns using the blue **+** button. For each column, assign a **Text Macro** (the parameter to display) and a **Heading**.
6. To export, use the toolbar at the bottom of the layout view: because the layout contains a Report Element, an **Export to Excel** button appears. Click it to produce an Excel file with one row per object.

{% hint style="info" %}
This pattern is the recommended way to produce tabular exports of master data or layer data for multiple objects — for example, exporting chloride values from a groundwater chemistry data type for all objects in a query.
{% endhint %}

<!-- src: transcript/2026-04-15-in-person-workshop -->

## Grouping and custom views in the Stammdaten Grid

The general data grid (Stammdaten Grid) supports dynamic grouping of rows by column values, allowing quick reorganization of objects without creating a new query.

**Enabling the grouping area:**

1. In the general data grid, right-click any column header.
2. From the context menu, select the option to show the **grouping zone** (a grey area appears above the column headers).
3. Drag one or more column headers into the grouping zone. Objects are immediately grouped by the values in those columns. Multi-level grouping is supported — drag additional column headers to create nested groups.
4. To remove a grouping column, drag it back out of the grouping zone.

**Saving custom views:**

Use the **Save current view** button in the grid toolbar to save the current column order, visibility, sort, and grouping configuration under a custom name. Saved views can be recalled from the drop-down at any time.

<!-- src: transcript/2026-04-15-in-person-workshop -->
