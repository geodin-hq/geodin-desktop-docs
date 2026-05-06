---
description: How to use the Report Element to produce tabular output and Excel exports across multiple objects
---

# Report Elements

The **Report Element** is the layout component for tabular output: general data, layer data, samples, and measurement data, displayed inside a layout as a configurable table. Combined with a **Multi-Object Frame**, it is also GeoDin's most practical path for exporting tabular data across many objects at once.

For the related layout components (borehole graphic logs, depth scales, samples, groundwater, well design), see [Borehole Elements](borehole-elements.md). For the broader template structure, see [Report Templates](../../reporting/report-templates.md).

## Exporting tabular data via the Report Element + Multi-Object Frame

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

The general data grid (Stammdaten Grid) supports dynamic grouping of rows by column values, allowing quick reorganisation of objects without creating a new query.

**Enabling the grouping area:**

1. In the general data grid, right-click any column header.
2. From the context menu, select the option to show the **grouping zone** (a grey area appears above the column headers).
3. Drag one or more column headers into the grouping zone. Objects are immediately grouped by the values in those columns. Multi-level grouping is supported — drag additional column headers to create nested groups.
4. To remove a grouping column, drag it back out of the grouping zone.

**Saving custom views:**

Use the **Save current view** button in the grid toolbar to save the current column order, visibility, sort, and grouping configuration under a custom name. Saved views can be recalled from the drop-down at any time.

<!-- src: transcript/2026-04-15-in-person-workshop -->
