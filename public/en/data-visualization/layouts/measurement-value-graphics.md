---
description: Measurement Value Graphics
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Measurement Value Graphics

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

## X-Y Diagrams (Measurement Value Graphic)

**Measurement Value graphic element** (X-Y diagram) is separate from data sequence and is used for cross-plot charts like UU stress-strain. <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

Diagram types supported: Time Series, X-Y Diagram, Triangle, Piper diagram, Durov diagram, Pie chart, Histogram, Box plot. <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

X-Y diagram setup: choose diagram type > set X-axis parameter + labeling > set Y-axis parameter + labeling > add at least one Measurement Graphic Series. <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

Measurement Graphic Series properties: name, data source (samples), object number (for multi-object frames, specifies which measurement point to pull from, e.g., object number 1, 2). <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

A multi-object frame lets a single series definition pull from multiple measurement points (e.g., undisturbed = sample 6, remoulded = sample 8). <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

Series drawing options: connection line (linear or spline), curve quality, color, symbol type (plus, circle, square, etc.), symbol size. <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

PSD (Particle Size Distribution) layouts are pre-built and shipped with GeoDin — users should customize an existing one rather than build from scratch. <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->
