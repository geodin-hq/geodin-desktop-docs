---
description: X Y Diagrams
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** C (Thin (limited source material))
**Needs:** editorial review
-->

# X Y Diagrams

## X-Y Diagrams (Measurement Value Graphic)

**Measurement Value graphic element** (X-Y diagram) is separate from data sequence and is used for cross-plot charts like UU stress-strain. <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

Diagram types supported: Time Series, X-Y Diagram, Triangle, Piper diagram, Durov diagram, Pie chart, Histogram, Box plot. <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

X-Y diagram setup: choose diagram type > set X-axis parameter + labeling > set Y-axis parameter + labeling > add at least one Measurement Graphic Series. <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

Measurement Graphic Series properties: name, data source (samples), object number (for multi-object frames, specifies which measurement point to pull from, e.g., object number 1, 2). <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

A multi-object frame lets a single series definition pull from multiple measurement points (e.g., undisturbed = sample 6, remoulded = sample 8). <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

Series drawing options: connection line (linear or spline), curve quality, color, symbol type (plus, circle, square, etc.), symbol size. <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

PSD (Particle Size Distribution) layouts are pre-built and shipped with GeoDin — users should customize an existing one rather than build from scratch. <!-- src: transcript/forms-templates-customization#x-y-diagrams-measurement-value-graphic -->

---

## Reference: Scale and Tag Line Properties

<!-- src: help/05/1928, 1931, 1934 -->

### Scale labeling (Text)

Controls how numerical values are displayed along the scale axis. Options include:

- **Label side** — Place labels on the left or right side of the scale.
- **Decimal places** — Number of decimal places shown for numerical labels.
- **Start value position** — By default the start value is shown beneath the top line; it can be placed above the top line to avoid text overlaps.
- **Font** — Select font, size, and other typographic properties; the preview shows the current settings.

### Scale view

Controls the graphic appearance of the scale itself:

- **View type** — Choose the preferred graphic representation; the interval width is set by the main divisions.
- **Line type** — Select the line type used for the scale line.
- **Color** — Choose from the dropdown; select "Individually" to open the full color dialog for a custom color.
- **Line thickness** — Set in mm (preferred for print accuracy) or pixels (screen-only graphs). When set in mm, the preview thickness may not match print output exactly.

### Main help tags (tick marks)

Controls the appearance of major tick marks on the scale:

- **Tag line length** — Set automatically or to a fixed value.
- **Tag line alignment** — Default is top right; can be adjusted to centre right or bottom right.
- **Color and line type** — Select from dropdown or choose "Individually" for a custom color.
- **Line thickness** — Set in mm (preferred) or pixels.
