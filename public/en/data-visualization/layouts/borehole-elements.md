---
description: Borehole Elements
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Borehole Elements

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
