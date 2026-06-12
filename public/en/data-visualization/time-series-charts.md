
# Time Series Charts

The **Time Series** diagram type is one of the diagram types available in the **Measurement Value graphic element**. It plots measurement values against time for one or more series, with configurable presentation styles (curve, bar chart, symbols), axis settings, and aggregation options. Add a Measurement Value graphic element to a layout and select **Time Series** as the diagram type to use this feature.

For general steps on adding layout elements, see [Layout Editor Basics](layouts/layout-editor-basics.md) and [Creating Custom Layouts](creating-custom-layouts.md).

***

## Reference: Time Line Series

An individual time line series defines three characteristic features:

1. Selection of the data to be displayed
2. Selection of the parameters or formulas to be displayed
3. Selection of the type of presentation (graphic properties)

Three series types are available:

**Presentation of measurement values from a GeoDin database**

The data source defines which measurement values are used for the presentation and which parameters of the measurement point are to be displayed.

**Aggregation of existing series**

This type of series is based on already existing series and allows, for example, the display of sums or means of those series.

**Pre-defined line**

This series type displays a pre-defined horizontal line — for example, a limit line — in the time line diagram.

Selecting the series type changes the structure of the object properties so that the relevant settings can be adjusted. To distinguish individual series more easily in the object properties tree, give each series a free name in the **Name series** input field.

**Time interval**

By default, a series is displayed for the entire time interval of the time series graph as defined by the time scale settings, for as long as data for the series is available. In some cases it is useful to define a special displayed time interval for a particular series — for example, when a threshold value changes due to regulatory amendments. This way, displaying the threshold as a pre-defined line can include the validity period of the threshold using a specific time interval. Select **-Use user-specified time interval-** and choose the desired interval. The series is then displayed only within the selected time interval.

## Reference: Time Series List Controls

The following toolbar icons appear in list controls throughout the time series properties (both the **Time series** list and the **Series definitions** list):

**New** — Add an entry to the list.

**Duplicate** — Create a copy of the selected entry. The new entry is added at the end of the list and selected automatically.

**Delete** — Remove the marked entries from the list.

**Move selected entry up** — Move an entry up in the list. Moving entries is also possible using drag and drop.

**Move selected entry down** — Move an entry down in the list. Moving entries is also possible using drag and drop.

**Edit without refresh** — Edit list entries without triggering a refresh. Moving a series or column definition in the list can cause long processing depending on the underlying data, because many pages may be affected. Use this icon to edit the list without actualization; abandon editing with the cross or confirm with the tick mark.

**Double-click an entry** — Closes the list and navigates in the object properties tree to the selected entry, so its properties can be edited.

## Reference: Presentation Options

Optionally, a time line series can use curves, bars, and symbols — in any combination. If no presentation type is chosen, the series is not displayed (this can be useful for series used only for aggregations).

**Curve**

Select the **Curve** presentation type to display a continuous line. Optionally choose an interruption criterion based on the time span between two measurements — this avoids the visual impression of continuous measurements when data has gaps. Combined with a symbol or bar diagram, this produces different graphic presentation types for irregular measurement intervals.

By default, data records are ignored when the chosen parameter has no value (but a time exists), and a line is drawn through these records. Use the option **break line for empty records** to interrupt the line at such records instead.

**Bar chart**

Select the bar width. As with the **Symbols** type, choose whether bars should be drawn in areas where samples were taken only infrequently (interruption areas).

**Symbols**

Choose whether symbols are drawn in areas where samples were taken infrequently.

## Reference: Measurement Value Graphic Element

The **Measurement Value graphic element** is used to display time series, X-Y diagrams, triangle diagrams, and hydrochemical special diagrams. It can be inserted into an object frame as often as required.

**The element name**

The element name is used to identify graphic elements in the GeoDin graph tree view. Use meaningful names when building complex layouts. For some graphic elements a related element can be entered. Here also the element name is used.

**Drawing layer**

Displays the drawing layer on which the element is placed. Use the **In another layer** icon to move it to a different layer. See [Layout Editor Basics](layouts/layout-editor-basics.md) for further information on drawing layers.

## Reference: Measurement Graphic Series

An individual series defines two essential features:

1. Selection of the amount of data to be shown
2. Selection of the type of presentation (graphic properties)

For example, in an X-Y diagram, triangle diagram, or hydrochemical special diagram — to display measurement values of one measurement point as red symbols and another as blue symbols — create two series: set the data source for the first to the first measurement point and select red as the symbol color; set the data source for the second to the second measurement point and select blue.

To distinguish individual series in the object properties tree, give each series a free name in the **Name series** input field.

**Series label**

By default the diagram is labeled with the names of the displayed series. An alternative label can be entered here.

## Reference: Time Axis

The time axis can be labeled with any text, displayed below the center of the diagram. The font for this text is selected in the **Parameter labels** branch.

The option **-Draw top diagram boundary-** draws a horizontal closing line at the top of the diagram; without it, the diagram is open at the top.

## Reference: Time Interval

The time interval of the time axis defines the starting and ending time of the presentation. The points in time can be selected separately using the following options:

**Automatic** — The point in time is defined by the existing measurement values.

**Point in time** — The point in time is entered directly in the input field.

**Relative** — The point in time is selected relative to other points in time. This option can be selected for only one of the two endpoints. Optionally, use **Round up time difference** to round the calculated point in time to a round value of the time interval (for example, the 1st of the month).

**Current time** — Available for the ending time only. The current time is used as the ending point.

The starting and ending points resulting from the settings or the actual measurement values are displayed as information.

**Example:** to display the measurement values of the last 10 years until today — set the ending point to **-Current time-** and the starting time to **-Relative-** with a value of 10 and **Years** selected in the dropdown.

## Reference: Formula Syntax

For graphic elements related to measurements and measurement graphics — such as time series, triangle diagrams, and others — formulas are used for the featured parameters. In the simplest case a formula contains only the variable for the parameter; complex mathematical formulas combining several parameters are also supported.

In formula entry fields, use the **Build** button (right icon in the entry field) to build a formula from a list of possible parameters.

Like the labeling instructions, relations to parameters of the database are expressed using `$`-symbols:

**Example:** `$WAT:NO3$`

This defines the parameter 'nitrate' from the data type 'ground water chemistry' for the presentation.

**Mathematical operators**

In addition to single parameters, any formula combining parameter names with mathematical operators is supported:

**Example:** `$WAT:NO3$ * 2`

Uses the parameter 'nitrate' multiplied by 2.

Supported mathematical operators: `+` `-` `*` `/`

Supported functions (argument in round brackets):

* `ABS`
* `ROUND` — example: `ROUND($WAS:NO3$)`
* `EXP`
* `LN`
* `LOG`
* `SIN`
* `COS`
* `SQR`
* `SQRT`

**Detection limits**

Detection limit values from tables are entered as negative values by convention (for example, `-1` for `<1`). If used without special handling, these produce incorrect results. Use the `@B(x)` construct under the `$`-symbols to handle them, where `x` is a factor specifying how much the detection limit contributes to the result:

**Example:** `$BENZENE@B(0,5)$ + $TOLUENE@B(0,5)$ + $XYLENE@B(0,5)$`

With a factor of `0,5`, a detection limit of 5 mg (stored as `-5`) contributes `2,5` to the result.

***

## Reference: Layout Interfaces (Time Series Quick Settings)

These layout interface options control the time axis of time series in a layout.

### Time line presentation for the last

**Using layout interfaces**

The time interval of a time line series can be adjusted so that the measurement values of the current point in time are taken into consideration to a defined time span in the past.

**Requirements:** the layout must contain at least one measurement value graphic with diagram type **Time series** selected.

**Effect:** the presentation area of the time axis of all time line series in the layout is set to the selected time interval in the past of the current date.

### Axis scale — time axis

**Using layout interfaces**

The time axis scale can be adjusted.

**Requirements:** the layout must contain at least one measurement value graphic with diagram type **Time series** selected.

**Effect:** the time axis scale of all time series in the layout is affected.
