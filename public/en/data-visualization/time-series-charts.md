---
description: Time Series Charts
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Time Series Charts

### Time line serie

An individual time line series is defining the following characteristic features:

1\) Selection of the data to be displayed

2\) Selection of the parameters / formulas to be displayed

3\) Selection of the type of presentation (graphic properties)

Here in the first place three different types of series are distinguished:

Presentation of measurement values from aGeoDindatabase

Here the data source defines, which measurement values are used for the presentation and which parameters of the measurement point are to be displayed.

**Aggregation of existing series**

This type of series is based on already existing series and allows for example the display of sums or means of these (other) series.

**Pre-defined line**

This series type is used to display a pre-defined horizontal line (for example a limit line) in the time line series diagram.

By selecting the chosen series type the structure of the object properties is changing in the way, that the relevant settings can be adjusted.

To distinguish the individual series better in the tree of object properties, you can entitle it with a free name in the input field *\"Name series\"*.

**Time interval**

Normally a series is displayed for the entire time interval of the time series graph according to the settings of the time scale (as far as data for the series is available). In some cases it can be useful to define a special displayed time interval for a particular series. For example the threshold of a measurement parameter can change according to amendment \<http://dict.leo.org/ende?lp=ende&p=eL4jU.&search=amendment\>s of \<http://dict.leo.org/ende?lp=ende&p=eL4jU.&search=of\> ordinance \<http://dict.leo.org/ende?lp=ende&p=eL4jU.&search=ordinance\>s. This way the display of the threshold as a pre-defined line can contain the information of the validity period of the threshold using the particular time interval. Select -Use user-specified time interval- and select the chosen interval. The series is then only displayed in the selected time interval in the diagram. <!-- src: help/05/475 -->

### Time series

Where it is possible to define and edit any number of elements, they are displayed with their names in a list. This can be for example series of a data sequences, columns of a report element, lists of layout file names etc. Simultaneously these entries appear in the tree view of the object properties in the selected order. To add, remove and rearrange entries of the list on the right side the following icons are available:

**New**

Using this icon, entries can be added to the list.

**Duplicate**

Use this icon to create a copy of the selected entry. The new entry is added at the end of the list and selected automatically.

**Delete**

Using this icon, marked entries can be removed from the list.

**Move selected entry up**

Using this icon, entries can be moved up in the list. Moving entries is also possible using drag & drop.

**Move selected entry down**

Using this icon, entries can be moved down in the list. Moving entries is also possible using drag & drop.

**Edit without refresh**

Editing the entries of a list can occasionally cause long processing. So for example moving a series or column definition in the list can take relatively long, depending on the basic data material, because sometimes many pages are affected.

Using this icon the list can be edited without actualization. Editing the list can be abandoned with the cross or with the tick mark.

**Double-click an entry of the list**

Closes the list and changes in the tree view of the object properties to the particular entry, so that its properties can be edited. <!-- src: help/05/484 -->

### Presentation options

Optionally in a time line series presentation curves, bars and symbols (in any combination) can be used. If no presentation type is chosen, the series is not displayed (this can be sensible for series, which are used for aggregations).

While selecting the presentation type \<**Curve**\> optionally an interruption criterion can be selected. Here the time span between two measurements is decisive. This way you can avoid the visual impression of continuous measurements through a connected line. In combination with a symbol or bar diagram in the areas, in which samples were taken only seldom, you receive different graphic presentation types for irregular measurement intervals.

By default, two measuring points are connected by a line in the graph, which is inclined differently at each measurement values. With the option \<**Step plot**\> presentations can be achieved, which show a measuring point **from** a certain time. For the following measurement, the curve is drawn as a horizontal line and then perpendicularly to the next value. With this type of representation, the option \<**drawing till end of diagram**\> can be helpful, which continues the line of the series until the end of the timeline. Thus it can be shown that the measured value has not changed since the last measurement

By default data records on a curve are ignored if the chosen parameter has no value (although a time exists) and a line is drawn through these records. This line can be interupted using the option **break line for empty records**.

For the presentation type \<**Bar chart**\> the bar width can be selected. Like for the presentation type \<**Symbols**\>, here you can select, whether this should be drawn in the areas, in which samples were only taken seldomly (i.e. for interruptions of the curve). <!-- src: help/05/533 -->

### Measurement value graphic

The graphic element measurement value graphic is used to display time series, XY-diagrams, triangle diagrams and hydrochemical special diagrams. It can be inserted into a object frame any often.

**The element name**

The element name is used mainly to identify the graphic elements of a GeoDin graph better in the tree view of graphic elements. By using significant names for graphic elements a complex graph can be designed very clear. For some graphic elements a related element can be entered. Here also the element name is used.

[Drawing layer](layouts/layout-editor-basics.md)

Display of the drawing layer, on which the graphic element is placed. Using the icon **In another layer** the graphic element can be moved in anther drawing layer. You find further information on drawing layers in the chapter [Drawing layer](layouts/layout-editor-basics.md).

**Arrangement in the fore- or background**\
\
Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/618 -->

### Measurement graphic series

An individual series defines two essential features:

1\) Selection of the amount of data to be shown

2\) Selection of the type of presentation (graphic properties)

To display for example in a XY-diagram, triangle diagram and hydrochemical special diagram, the measurement values of a measurement point as red symbols and the measurement values of another measurement point as blue symbols, you have to create two series, where the data source for the first is the first measurement point and red is selected as symbol color and the data source for second is the second measurement point and blue is selected as symbol color.

To distinguish the individual series in the tree of object properties more easily, giving a free name in the entry field *\"Name series\"* is possible. <!-- src: help/05/629 -->

### Time axis

The time axis can be labeled with any text. This is displayed below in the center of the diagram. The font for this text can be selected in the branch [Parameter labels](time-series-charts.md).

The option -Draw top diagram boundary- results a horizontal closing line, otherwise the diagram is open at the top. <!-- src: help/05/702 -->

### Time interval

The time interval of the time axis is defining starting and ending time of the presentation. The points in time can be selected separately using the following options:

**Automatic**

The point in time is defined by the existing measurement values.

**Point in time**

The point in time is entered in the input field.

**Relative**

The point in time is selected relative to other points in time. This can be selected only for one of both points in time. For the selection of the relative point in time a rounding up of the calculated point in time on a straight value of the time interval (for example the 1. of the month) can be reached using the option \<**Round up time difference**\>.

**Current time**

Is only available for the ending time. The current time is used as ending point.

The starting and ending point, which are created by the setting or the actual measurement values, are displayed as information.

**Example:**

The measurement values of the last 10 years until \"today\" should be displayed. As ending point the option -Current time- has to be chosen, as starting time the option -Relative- with an entry of 10 and a selection of the time interval \"Years\" in the drop down menu. <!-- src: help/05/704 -->

### Series definitions

Where it is possible to define and edit any number of elements, they are displayed with their names in a list. This can be for example series of a data sequences, columns of a report element, lists of layout file names etc. Simultaneously these entries appear in the tree view of the object properties in the selected order. To add, remove and rearrange entries of the list on the right side the following icons are available:

**New**

Using this icon, entries can be added to the list.

**Duplicate**

Use this icon to create a copy of the selected entry. The new entry is added at the end of the list and selected automatically.

**Delete**

Using this icon, marked entries can be removed from the list.

**Move selected entry up**

Using this icon, entries can be moved up in the list. Moving entries is also possible using drag & drop.

**Move selected entry down**

Using this icon, entries can be moved down in the list. Moving entries is also possible using drag & drop.

**Edit without refresh**

Editing the entries of a list can occasionally cause long processing. So for example moving a series or column definition in the list can take relatively long, depending on the basic data material, because sometimes many pages are affected.

Using this icon the list can be edited without actualization. Editing the list can be abandoned with the cross or with the tick mark.

**Double-click an entry of the list**

Closes the list and changes in the tree view of the object properties to the particular entry, so that its properties can be edited. <!-- src: help/05/1422 -->

### Series

As default the diagram is labeled with the names of the displayed series. As an alternative a differing label can be entered here. <!-- src: help/05/1424 -->

### Formula syntax

For graphic elements with relations to measurements and measurement graphics, like *time series, triangle diagrams* etc. formulas are used for the featured parameters, which contain in the simplest case only the variable for the parameter, but also complex mathematical formulas for the calculation of several parameters.

In the entry fields for formulas you can **Build** a formula from a list of possible parameters with clicking the right icon in the entry field.

Like the labeling instructions the relations to parameters of the database are made in \$-symbols:

**Example:** \$WAT:NO3\$

This value defines that the parameter \'nitrate\' from the data type \'ground water chemistry\' should be used for the presentation.

**Mathematical operators**

Beside the selection of single parameters also the entry of any formula, in which parameter names are combined with mathematical operators, is possible:

**Example:** \$WAT:NO3\$ \*2

Use of the parameter 'nitrate' multiplied by 2.

Beside the mathematical operators + - \* / the use of the following functions is possible:

ABS

ROUND

EXP

LN

LOG

SIN

COS

SQR

SQRT

The argument is made in round brackets:

ROUND(\$WAS:NO3\$)

**Detection limits**

Special cases are detection limits from tables. These are entered as negative value per definition (for example -1 for \<1). If the values would be used uncritical, wrong results would be produced. These values can optionally be handled special. For this a construct \@B(x) under the \$-symbols is necessary, while x is a factor, with which the detection limit is contributing to the result. For example a detection limit of 5 mg (entered as -5 ) would with a use of the factor 0,5 equal the value 2,5.

**Example:** \$BENZENE@B(0,5)\$ + \$TOLUENE@B(0,5)\$ + \$XYLENE@B(0,5)\$

In this case for negative values only half of the value is calculated. <!-- src: help/05/2573 -->

### Time line presentation for the last

**Using layout interfaces**

With this layout interface option the time interval of a time line series can be adjusted so that the measurement values of this current point of time are taken into consideration to a defined time span in the past.

**Requirements in the layout**

The layout to be used has to contain at least one measurment value graphic. As diagram type [Time series](time-series-charts.md) has to be selected.

**Results in the layout**

The presentation area of ther time axis of all time line series in the layout are set to the selected time interval (in the past of the current date). <!-- src: help/05/3697 -->

### Axis scale time axis

**Using layout interfaces**

With this option the time axis scale can be adjusted

**Requirements in the layout**

The used layout has to contain at least one measurement value graphic. The diagram type [Time series](time-series-charts.md) has to be selected.

**Results in the layout**

The time axis scale of all time series in the layout will be affected. <!-- src: help/05/8992 -->
