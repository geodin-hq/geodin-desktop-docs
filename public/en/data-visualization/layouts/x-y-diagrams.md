---
description: How to set up and configure the X-Y diagram (Measurement Value graphic element) in GeoDin layouts
---

# X-Y Diagrams

The **Measurement Value graphic element (X-Y diagram)** plots one measurement parameter against another - for example, UU stress-strain cross-plots. It is one of two related layout elements for plotting test results; the other is the **Measurement Value (Data Sequence)** element for depth-vs-value plots. See [Measurement Value Graphics](measurement-value-graphics.md) for that one.

GeoDin also uses X-Y diagrams as graphical templates for calculating new data sequence series using formulas - the layout must contain at least one X-Y diagram element, and the selected areas within the diagram define the conditions for applying the formula.

Supported diagram types: **Time Series**, **X-Y Diagram**, **Triangle**, **Piper diagram**, **Durov diagram**, **Pie chart**, **Histogram**, **Box plot**.

## Setting up an X-Y diagram

1. Add a **Measurement Value graphic element** to the layout (for general steps on adding elements, see [Layout Editor Basics](layout-editor-basics.md) and [Creating Custom Layouts](../creating-custom-layouts.md)).
2. Choose the **diagram type** from the available options (see the full list above).
3. Set the **X-axis parameter** and labeling.
4. Set the **Y-axis parameter** and labeling.
5. Add at least one **Measurement Graphic Series** and configure its properties.

## Optional settings

* **Measurement Graphic Series - name:** Label identifying this series in the diagram.
* **Measurement Graphic Series - data source:** Set to **Samples** to pull from sample measurements.
* **Measurement Graphic Series - object number:** In a multi-object frame, specifies which measurement point in the frame the series pulls from (for example, object number 1 or 2).
* **Connection line:** Choose **linear** or **spline** interpolation between data points.
* **Curve quality:** Controls smoothness when spline is selected.
* **Color:** Series color.
* **Symbol type:** Choose from plus, circle, square, and other marker shapes.
* **Symbol size:** Size of the symbol markers.

***

## Working with X-Y diagrams

**Multi-object frames:** A single series definition can pull from multiple measurement points using a multi-object frame. For example, a UU test layout can show undisturbed (sample 6) and remoulded (sample 8) results in the same diagram.

**PSD layouts:** Particle Size Distribution (PSD) layouts are pre-built and shipped with GeoDin. Customize an existing PSD layout rather than building one from scratch. See [Display PSD as a Bar Chart](../display-particle-size-distribution-psd-as-a-bar-chart.md) for the full workflow.

***

## Reference: Scale and Tag Line Properties

### Scale labeling (Text)

Controls how numerical values are displayed along the scale axis:

- **Label side** - Place labels on the left or right side of the scale.
- **Decimal places** - Number of decimal places shown for numerical labels.
- **Start value position** - By default the start value is shown beneath the top line; it can be placed above the top line to avoid text overlaps.
- **Font** - Select font, size, and other typographic properties; the preview shows the current settings.

### Scale view

Controls the graphic appearance of the scale itself:

- **View type** - Choose the preferred graphic representation; the interval width is set by the main divisions.
- **Line type** - Select the line type used for the scale line.
- **Color** - Choose from the dropdown; select "Individually" to open the full color dialog for a custom color.
- **Line thickness** - Set in mm (preferred for print accuracy) or pixels (screen-only graphs). When set in mm, the preview thickness may not match print output exactly.

### Main help tags (tick marks)

Controls the appearance of major tick marks on the scale:

- **Tag line length** - Set automatically or to a fixed value.
- **Tag line alignment** - Default is top right; can be adjusted to centre right or bottom right.
- **Color and line type** - Select from dropdown or choose "Individually" for a custom color.
- **Line thickness** - Set in mm (preferred) or pixels.
