---
description: The Measurement Value (Data Sequence) layout element for depth-vs-value plots
---

# Measurement Value Graphics

The **Measurement Value (Data Sequence)** element plots depth-oriented values: water content vs. depth, SPT, CPT traces, shear-wave logs, and similar series. It is one of two related layout elements for plotting test results - the other is the **Measurement Value graphic element (X-Y diagram)** for cross-plot charts. See [X-Y Diagrams](x-y-diagrams.md) for that one.

***

## Working with the Data Sequence element

**Sample depth alignment:** Sample-based data (such as water content) is drawn at depth relative to the sample's from/to depth, keeping values spatially anchored to where they were measured.

**Axis range - automatic vs. fixed:** The parameter axis and depth axis are independently configurable. In automatic mode, GeoDin picks the min/max range from the data. A user-defined fixed axis range keeps a consistent range across all objects - useful for comparison layouts, but values that fall outside the fixed range will be clipped and not visible.

**Parameter names by object type:** Data sequence graphs can pull any parameter from any database table. Object types use different parameter names in templates - for example, for AGS SCPT the parameter names are `SCPT_RES` (friction resistance) and `SCPT_FRR` (friction ratio); for G1 the same data uses different names. Use the GeoDin data source interface to select by test type (e.g., SCPG > SCPT) and then by parameter name when configuring a series.

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

### Parameter selection

<!-- src: help/H0000001426#parameter -->

The **Parameter** field of a series holds the value to plot. Click the icon at the right of the field for the parameter list, which is grouped by sector: data sequences, sample data, and measurement data. Alongside the variables of the "real" data sequences, the columns of the sample table and the parameters of the data types available for sediment samples (sediment chemistry, sediment petrography and similar) are offered where they exist. Parameters of the sample table are marked with `->`; parameters of data types are marked with `-}` followed by the data type code (for example `SED` for sediment chemistry).

**Parameter name from a general data field:** Instead of a parameter name, enter the name of a general data field enclosed in `$` symbols - for example `$USER01$`. The parameter whose name is held in that general data field is then displayed. This makes it possible to build one layout in which the data sequence parameters shown follow the general data of each object.

**Optional formula:** A formula entered here transforms the values of the chosen parameter before they are plotted. Use the macro `$PARAM$` as the placeholder for the selected parameter - do not substitute the parameter name for it. For example, `$PARAM$*2.5` plots the parameter values multiplied by 2.5.

**Sediment sample choice:** When the parameter comes from the samples and measurement values sector, **Sediment sample choice** limits which samples feed the graph. Enter the sample type codes in the **Sample types** field and select the **data field** they are searched in. With **Include**, only the measurement values of the matching samples are drawn; with **Exclude**, the matching samples and their measurement values are left out.

**Data point of the sample interval:** Sets where along the depth axis the data point of a sample is drawn. The default is the bottom of the depth interval; the top or the center can be selected instead.

### Object frame query as a data basis

<!-- src: help/H0000001426#object-frame-query-depth-columns -->

Where data is not offered automatically in the parameter list, choose a system query as the basis for the series under **Object frame query**. Object frame queries are defined on the frame itself - see [Object Frames](object-frames.md) for how to create one.

A query supplies its own columns, so the depth values have to be pointed at explicitly: **Depth column (Start depth)** names the column holding the top-edge values and **Depth column (End depth)** the column holding the bottom-edge values.

A depth field specification is optional. Depending on the data source, the following fields are used automatically:

| Data source | Start depth (top edge) | End depth (bottom edge) | Depth fields definable |
|---|---|---|---|
| Data sequence | - | `DEPTH` | no |
| Measurement data from samples / filters | `INVZEND` | `(G)OFFSET` | yes |
| Measurement data from object | - | `(G)DEPTH` | yes |
| Object frame query | - | - | yes |

### Axis configuration

The parameter axis (horizontal) and depth axis (vertical) are configured independently. Division intervals can be set to automatic (GeoDin derives min/max from the data) or to a user-defined fixed range. Bars or curves can be interrupted over depth sections where samples were not taken continuously, so the graph does not suggest continuous coverage. The interruption option can be set for the whole diagram or separately for each series - the diagram-wide setting and the interruption mechanism are described in [Cross-Section Layouts](../cross-sections/cross-section-layouts.md).

### Optional test macro

The **optional test macro** field on a data sequence series allows writing a custom macro - for example, `W=$water_content$` - to display as a text label at the correct depth. The macro can include parameters from other data types, not only the primary series parameter.
