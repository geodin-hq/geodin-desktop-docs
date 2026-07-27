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

## Reference: Axes and diagram corners

### X-axis parameter and categories

<!-- src: help/H0000000685#x-axis -->

Select the **Parameter/Formula** to display; the icon at the right of the input field opens the list of possible parameters. The axis caption is entered in the **Labeling** field. For the expression syntax, see [Text Macros in Reports](../../reporting/text-macros-in-reports.md).

**Records build the axis categories:** This option divides the X-axis into as many sections as there are data records, one category per record, instead of into a numeric range. Take five measurement points `P1` to `P5` with the fields `name`, `date`, `me_value` and `interval`: the option splits the X-axis into five sections, while the Y-axis carries the value of `me_value`, set under **Properties > Diagram type > XY-diagram > Y-axis** in the **Parameter** field as `$me_value$`.

**Labelling of the categories:** Names the field that labels each category - for example `$name$` to caption each section with its measurement point name.

**Optional formula for distance of categories:** By default the categories are drawn at equal spacing. Where the data holds the distances between measurement points, enter that field here - for example `$interval$` - to place `P1` to `P5` at their real spacing along the X-axis. The field accepts calculations, so `$interval$/2` plots the records at half those distances.

### Triangle diagram corners

<!-- src: help/H0000000643#triangle -->

A triangle diagram takes three parameters or formulas, one per corner. When the diagram plots proportions of mol equivalents - as the frequently used anion triangle does - the corner formulas must apply the appropriate conversion factors themselves.

Example for an anion triangle:

| Corner | Formula | Plots |
|---|---|---|
| Left | `($WAS:NA$*0.0435) + ($WAS:K$*0.0256)` | NA+K |
| Upper | `($WAS:CA$*0.0499)` | CA |
| Right | `($WAS:MG$*0.0822)` | MG |

The conversion factors per main component are tabulated with the water analysis calculations in [Regression and Curve Fitting](../../data-analysis/calculation-engine/regression-and-curve-fitting.md).

## Reference: Diagram surfaces

<!-- src: help/H0000001680#surfaces -->

The **Surfaces** branch of the diagram defines static areas and lines drawn into the chart - background zones, threshold lines, classification fields.

**Coordinate system:** Choose first which coordinates the elements are defined in. With **Use absolute coordinates of the chart axes**, areas and lines are positioned against the parameters displayed, so a change to the axes moves them accordingly; if the axis interval is reduced they may then extend past the visible diagram, which the option **Clip areas on chart border** truncates at the graphic boundary. Without absolute coordinates, positions are entered in a diagram coordinate system running from X=0, Y=0 at the bottom left corner to X=1, Y=1 at the top right; a later change to the presentation area then distorts the areas and lines instead of moving them. Which system to use depends on what the areas are for.

Beyond drawing them, areas serve two further functions, both based on where a measurement point falls among the defined areas and on that area's color and formula.

### Colorizing a data sequence series from area colors

An area's color can be pushed onto a plotted data sequence series. For example, to color the series "Friction ratio in %" by soil type, build the X-Y diagram of friction ratio against tip pressure with the soil type fields defined as areas; the friction ratio presentation is then correlated with that soil type diagram, which acts as the source for the color coding.

### Calculating new data sequence series from area formulas

Each area can carry a calculation formula. For every measurement point, the formula of the area the point falls into is applied, producing a new measurement series. The formula must start with an `=` symbol and contain a mathematical expression. Three variables are available:

| Variable | Content |
|---|---|
| `$XVALUE$` | The value plotted on the X-axis |
| `$YVALUE$` | The value plotted on the Y-axis |
| `$RGBCOLOR$` | The color value of the area |

For example, an area named `rf to 0,5 : Alpha = 6` with formula `= $YVALUE$ * 6` and 0 decimal places returns, for each point falling in it, the Y-axis measurement value multiplied by 6. A formula can be as simple as a constant (`= 1`) or hold any mathematical operator - `= 26.8 + (4.5*LN($YVALUE$))` - so watch the bracketing.

Used as `= $RGBCOLOR$`, the formula creates a series holding the area color at each depth as an RGB value. That series can in turn drive the color coding of a data sequence presentation, and in this case the presentation layout does not need to contain an X-Y diagram itself - useful, for example, for cross-sections with several colored data sequences.

The **Area without anchor points** has a special role: the formula defined on it applies to all measurement points that fall outside every other area.

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
