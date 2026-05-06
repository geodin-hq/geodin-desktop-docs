---
description: The Measurement Value (Data Sequence) layout element for depth-vs-value plots
---

# Measurement Value Graphics

The **Measurement Value (Data Sequence)** element plots depth-oriented values: water content vs. depth, SPT, CPT traces, shear-wave logs, and similar series. It is one of two related layout elements for plotting test results — the other is the **Measurement Value graphic element (X-Y diagram)** for cross-plot charts. See [X-Y Diagrams](x-y-diagrams.md) for that one.

## Measurement Value / Data Sequence Element

**Measurement Value (Data Sequence) element**: used for depth-oriented values vs depth (water content vs depth, SPT, CPT, shear wave). <!-- src: transcript/forms-templates-customization#measurement-value-data-sequence-element -->

Data Sequence drawing types: curve, curve with symbols, symbols only, bar chart, table/tabular view. <!-- src: transcript/forms-templates-customization#measurement-value-data-sequence-element -->

Data Sequence parameter axis and depth axis are independently configurable; divisions can be automatic (GeoDin picks min/max from data) or user-defined fixed range. <!-- src: transcript/forms-templates-customization#measurement-value-data-sequence-element -->

A user-defined fixed axis range keeps a consistent range across all objects — good for comparison, bad when data goes outside the range. <!-- src: transcript/forms-templates-customization#measurement-value-data-sequence-element -->

Data Sequence table drawing type can show individual values and configure horizontal lines at top, center, or bottom of sample interval. <!-- src: transcript/forms-templates-customization#measurement-value-data-sequence-element -->

Sample-based data (such as water content) is drawn at depth relative to the sample's from/to depth. <!-- src: transcript/forms-templates-customization#measurement-value-data-sequence-element -->

Data sequence graphs can pull any parameter from any database table, displayed as bar chart, line, or symbols. <!-- src: transcript/forms-templates-customization#measurement-value-data-sequence-element -->

Object types use different parameter names in templates — e.g., for AGS SCPT the parameter names are `SCPT_RES` (friction resistance) and `SCPT_FRR` (friction ratio); for G1 the same data uses different names. <!-- src: transcript/forms-templates-customization#measurement-value-data-sequence-element -->

"Optional test macro" field on a data sequence series allows writing a custom macro like `W=$water_content$` to display as a text label at the correct depth, including parameters from other data types. <!-- src: transcript/forms-templates-customization#measurement-value-data-sequence-element -->

In a template graph definition, users select parameters via the GeoDin data source interface — selecting by test type (e.g., SCPG > SCPT) and then parameter name (e.g., friction resistance, friction ratio). <!-- src: transcript/forms-templates-customization#measurement-value-data-sequence-element -->
