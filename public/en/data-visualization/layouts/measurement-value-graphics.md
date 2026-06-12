---
description: The Measurement Value (Data Sequence) layout element for depth-vs-value plots
---

# Measurement Value Graphics

The **Measurement Value (Data Sequence)** element plots depth-oriented values: water content vs. depth, SPT, CPT traces, shear-wave logs, and similar series. It is one of two related layout elements for plotting test results — the other is the **Measurement Value graphic element (X-Y diagram)** for cross-plot charts. See [X-Y Diagrams](x-y-diagrams.md) for that one.

***

## Working with the Data Sequence element

**Sample depth alignment:** Sample-based data (such as water content) is drawn at depth relative to the sample's from/to depth, keeping values spatially anchored to where they were measured.

**Axis range — automatic vs. fixed:** The parameter axis and depth axis are independently configurable. In automatic mode, GeoDin picks the min/max range from the data. A user-defined fixed axis range keeps a consistent range across all objects — useful for comparison layouts, but values that fall outside the fixed range will be clipped and not visible.

**Parameter names by object type:** Data sequence graphs can pull any parameter from any database table. Object types use different parameter names in templates — for example, for AGS SCPT the parameter names are `SCPT_RES` (friction resistance) and `SCPT_FRR` (friction ratio); for G1 the same data uses different names. Use the GeoDin data source interface to select by test type (e.g., SCPG > SCPT) and then by parameter name when configuring a series.

***

## Reference: Data Sequence element

### Drawing types

| Drawing type | Description |
|---|---|
| **Curve** | Continuous line connecting data points at depth |
| **Curve with symbols** | Line plus symbol markers at each data point |
| **Symbols only** | Discrete symbol markers at each data point, no connecting line |
| **Bar chart** | Horizontal bars from the axis baseline to the value at each depth |
| **Table / tabular view** | Individual values displayed as text; horizontal lines configurable at top, center, or bottom of each sample interval |

### Axis configuration

The parameter axis (horizontal) and depth axis (vertical) are configured independently. Division intervals can be set to automatic (GeoDin derives min/max from the data) or to a user-defined fixed range. Bars or curves can be interrupted over depth sections where samples were not taken continuously, so the graph does not suggest continuous coverage. The interruption option can be set for the whole diagram or separately for each series — the diagram-wide setting and the interruption mechanism are described in [Cross-Section Layouts](../cross-sections/cross-section-layouts.md).

### Optional test macro

The **optional test macro** field on a data sequence series allows writing a custom macro — for example, `W=$water_content$` — to display as a text label at the correct depth. The macro can include parameters from other data types, not only the primary series parameter.
