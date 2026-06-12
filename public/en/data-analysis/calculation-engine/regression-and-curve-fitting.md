
# Regression and Curve Fitting

#### Presentation options

Optionally in a time line series presentation curves, bars and symbols (in any combination) can be used. If no presentation type is chosen, the series is not displayed (this can be sensible for series, which are used for aggregations).

By default, two measuring points are connected by a line in the graph, which is inclined differently at each measurement values. With the option <**Step plot**> presentations can be achieved, which show a measuring point **from** a certain time. For the following measurement, the curve is drawn as a horizontal line and then perpendicularly to the next value. With this type of representation, the option <**drawing till end of diagram**> can be helpful, which continues the line of the series until the end of the timeline. Thus it can be shown that the measured value has not changed since the last measurement

By default data records on a curve are ignored if the chosen parameter has no value (although a time exists) and a line is drawn through these records. This line can be interupted using the option **break line for empty records**.

For the presentation type <**Bar chart**> the bar width can be selected. Like for the presentation type <**Symbols**>, here you can select, whether this should be drawn in the areas, in which samples were only taken seldomly (i.e. for interruptions of the curve).

#### Curve

In this branch no properties can be selected. Choose a subordinate branch, to edit detail properties.

#### Line

Additionally to presenting the series in a curve, bar or symbol any number of calculated (horizontal) lines can be added to a series.

Here three statistic parameters **Minimum**, **Mean value**, **Maximum** and **Median** are available, which are calculated basing on measurement values. Additionally numeric values of the Object data can be displayed. The selection is done in the drop down menu **"Calculation type"**. By selecting the type Object data in the underlying input field the data field can be chosen, which contains the numeric value.

By choosing the statistic parameters you select, whether here only the **Values of the displayed time interval** or **All measurement values** of the measurement point (not depending on the time interval displayed in the diagram) should be used.

A line or outline is displayed in the chosen Color and Line type. To select a color, which is not available in the drop down menu, click in the list on the first entry **"Individually"**. In the color dialogue you can adjust a new color.

The line thickness can be chosen in mm or pixels. The selection should be done in mm by preference. In this case the thickness of the lines in the preview is not equal to the print output and not depending on the used print resolution. The selection of a line thickness in pixels is only suitable for graphs, which are only viewed on the screen.

#### Drawing type

Selection of the presentation in graphic (Curve, Bar chart, Symbols and Curve + Symbols) or tabular form (Table) of the single measurement values.

The presentation type **Curve** starts with the first and ends with the last measured value. The nodes of the curve characterize a measurement point (measurement value in a certain depth).

Using the presentation type **Bar chart** the values characterize a measurement sector (interval), so that the first value is valid for the section from 0,00m to the first measurement value.

#### bar / curve

The option -Close line to axis- is illustrated in the following graph. In the left hand graph the option is deactivated, the surrounding line of the bar graph is not connected with the 0-axis at the starting and ending point.

The presentation of a curve can optionally be interrupted in not investigated areas. Here a value for the sector length, from which the area is not investigated, is necessary. A general adjusting possibility of this option for all series is available in the **Presentation options**.

The possibility to colorize the view using a diagram as legend is described in detail in the chapter **color coding**.

#### Table

The tabular presentation of a single measurement value as a text in a certain depth is possible as a combination with a curve or a bar chart and also as a pure table. For this choose the option **-Show individual values-**.

Is the option -Show values = 0- deactivated, all individual values that equal zero are counted as fault values and not labeled, otherwise these values are also displayed.

The option -Interpret values < 0- causes a presentation of the measurement values after the following rules:

Measurement value > 0 Value is labeled normally

Measurement value < 0 (except -88 und -99) Labeled as \<data sequence value

Measurement value = 0 Labeled with n.i. = not investigated

Measurement value = -88 Labeled with n.t. = not traceable

Measurement value = -99 Labeled with n.f. = not found

In case the measurement value is =0, the values are only labeled with n.i., if the option -Show values = 0- is activated.

For the presentation of the measurement values as text also the Font and the type of Intermediate lines can be adjusted.

#### color coding

Beside the fixed colorization of a curve or bar graph with a fixed signature and color, these presentations can be colored using a legend depending on the complex conditions.

Condition for this is either:

the presence of a graphic element measurement value graphic as "supplier" of the legend

or

the presence of a measurement series in the object data, which contains RGB colors for the presentation.

**Using a measurement value graphic**

The method to define areas in diagrams is described in chapter **Surfaces**. Select the option -Using diagram- and then chosen diagram in the list. Tip: The list contains only diagrams, which have received a [Measurement value graphic](../../data-visualization/layouts/measurement-value-graphics.md).

**Using a color value measurement series (RGB)**

Chose this option, if the actual object contains an already calculated series with RGB-values. Select the chosen series. The way to calculate data sequence series is described in chapter [Calculating sequences](../../data-collection/import/data-sequences.md)

#### Top tool bar

The top toolbar (default position - it may be moved elsewhere in the window) offers general editing functions:

**Start editing / Stop editing**

If the icon is activated (highlighted in light gray), table entries can be edited.

When inactive (i.e. not "pressed down") all the table fields are gray and cannot be edited.

The edit modus stays active until the icon is deactivated or the icon **Cancel edits** is clicked. Data are saved by moving from one row to another, by deactivating the edit modus, by changing from one data type to another, by selecting another object in the GeoDin Object Manager and by closing the editor.

**Save**

The current data set (row) in the table is saved.

**Cancel edits**

Data set editing is stopped and changes made in the current data set are undone (back to the last time saved). The editor is then placed in the non-editing mode by default.

**Load again**

Data are reloaded. Changes to the current dataset are first saved and then the grid is refreshed. This feature is especially useful to view changes made in a data set.

**Cut, Copy, Paste**

Clipboard functions (the key sequences **Ctrl + X**, **Ctrl + C** and **Ctrl + V** are available).

#### Right tool bar

The second menu strip offers functions for the special editing, navigation and changing settings. This menu strip can also be repositioned (by default it is on the right hand side).

#### Navigation

With the navigation arrows you can move around the table row-wise to the first, previous, next and last row (from top to bottom).

#### Excel export

**\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_**

The method exports measurement values as a table that can then be edited further in Microsoft Excel.

The following dialogue appears when starting the method, where you can choose from the following options:

· **Data type**

One data type can be chosen for export from a list of data types that are available for the measurement point (group).

· **Measurement programs**

The number of parameters for export can be set by the choice of a measurement program (see [Measurement program](../../navigating-the-geodin-workspace/measurement-values/working-with-measurement-data.md)).

· **Layout**

<**Use short parameter names**> uses the GeoDin short parameter names for the table columns in Excel (note for the SDM the column names are identical; the default setting is no/unchecked)

<**Name tables after measurement points**> default setting is yes/checked - activating this option names each table tab after the measurement point.

#### Ion balance

## **Calculation of the ion balance**

The following parameters are used to calculate the ion balance:

| N | Parameter | P | Type | Factor | Sum |
| --- | --- | --- | --- | --- | --- |
| 1 | Calcium (CA) | **1** | cation | 0,0499 | Total mineralization |
| 2 | Magnesium (Mg) | **1** | cation | 0,0822 | |
| 3 | Sodium (Na) | **1** | cation | 0,0435 | |
| 4 | Potassium (K) | **1** | cation | 0,0256 | |
| 5 | Bicarbonate (HCO3) | **1** | anion | 0,0164 | |
| 6 | Carbonate (CO3) | **3** | anion | 0,0333 | |
| 7 | Chloride (CL) | **1** | anion | 0,0282 | |
| 8 | Sulfate (SO4) | **1** | anion | 0,0208 | |
| 9 | Iron (total) | **2** | anion | 0,0537 | |
| 10 | Manganese | **2** | anion | 0,0364 | |
| 11 | Ammonia (NH4) | **2** | anion | 0,0554 | |
| 12 | Nitrate (NO3) | **2** | anion | 0,0161 | |
| 13 | Nitrite (NO2) | **2** | anion | 0,0217 | |
| 14 | Phosphate | **2** | anion | 0,0316 | |
| 15 | pH-value | **3** | | | Proton concentration |
| 16 | m-value | **3** | | | The parameter is used for carbonate substitution |
| 17 | p-value | **3** | | | |
| 18 | Carbonate hardness | **3** | | | |
| 19 | Total hardness | **3** | | | Total hardness - Check |

P = Priority (**1** Main component, **2** secondary component, **3** Substitution)\
N = internal number

**Further details:**

1. If iron (total) is not measured, but iron 3, then iron 3 is used
2. If iron (total) and iron 3 are not measured, but iron 2, the iron 2 is used
3. If ammonium is not analyzed, but ammonium N, then is factorized and used
4. If nitrate is not analyzed, but nitrate N, then is factorized and used
5. If nitrite is not analyzed, but nitrite N, then is factorized and used
6. If phosphate is not analyzed, but phosphate P, then is factorized and used

## **Preparing the calculation**

Seven main components and six secondary components are used in the calculation. Before calculation the process is checked with the available data.

Values that lie below the detection limit or for which the detection limit is unknown (values -66, -88 or -99) have the value zero for the calculation. For parameters below known detection limits these limits are used in the calculation.

The calculation is not carried out when less than five main components are present. If five are present the missing values are estimated for balancing the ionic relationships. By definition only one anion or cation can be missing.

For the case that bicarbonate or CO3 were not analyzed, GeoDin tries to use the m-value, p-value and / or carbonate hardness instead.

The total hardness check gives the plausibility of the Calcium, Magnesium and Total hardness to each other.

The sum of the anions and cations for the error calculation is computed.\
The sum of the cations is added to the proton concentration (calculated from pH).

The error is the difference between anions and cations in relationship to the half of the total mineralization multiplied by the sum of the anions and cations.

Error = cations - anions / 0.5 \* ( cations + anions)

By values less than 5 mmoleq for the total mineralization the ion balance is plausible, if the absolute error is less than 0.05.\
By values more than 5 mmoleq for the total mineralization the ion balance is plausible, if the absolute error is less than 0.02.

#### Curve type

Here you can select the way the displayed points are connected.

For curves, the curve quality can be set. This value determines how many interpolated points are calculated. This value has a considerable influence on the duration of the calculations.

#### Regression calculation

With the help of a regression calculation you aim to find a relationship between a response (dependent) variable and possible predictor(s) (independent) variable(s) by the method of least squares.

A regression calculation allows us to explore the relationship between two (or more) variables. It indicates the nature of the relationship between two (or more) variables. In particular, it indicates the extent to which you can predict some variables by knowing others, or the extent to which some are associated with others.

The conditional expected value is referred to here as the **estimation target**.

This can be estimated from various  ![influencing factors](../../.gitbook/assets/icons/influencing-factors.png) **influencing factors**.

**Methodology:**

A set of linear equations is constructed using the estimation target and influencing factots. Internally a multiple linear regression calculation is performed which is a method for predicting (approximating) the value of a dependent variable _**y**_, based on the value of independent variable(s) _**x**_.

In a cause and effect relationship, the independent variable is the cause, and the dependent variable is the effect. In our terminology the **influencing factors** are the independent variables _**xi**_ and the **estimation target** the dependent variable _**y**_. Numerical instability that occur will be recognised during calculation and can be labelled in the status information using the property "IsSingular". If "IsSingular"=True the regression equation or the regression coefficient should not be used and no results will be displayed in the time series graphic.

**Considering time as an influencing factor**

Set this option if you wish to use time as an influencing factor.

The time-stamp of the measurements is interpreted as a numerical value and used for the regression analysis just like one of the the other influencing factors. This option should be used when time dependent relationships between the measurement size exist.

#### Input magnitude

Please select a measurement size from an existing time series element. This will be considered as a dependent variable y, which is the target of the the regression approximation.

#### Effective size

**Series**

Choose the independent variable source which will be used in the regression calculation as an influencing factor,

**Time offset**

For the regression calculation it is necessary to analyse the time of each measurement for the source series. Each influencing factor can include a time offset in order to smooth out irregularities in measurement intervals. A time offset of zeo days is only possible in the regression analysis for measurement values taken oin the same day.

#### Result text

You can position the results of the regression analysis here as freely positionable text.

**Statisical results**

Choose the statistical result to display from the items in the drop-down list

**X, Y**

Define the relative position of the text.

**Remove text outside the diagram area**

The text generated may have large variations in length. This can be truncated when this option is set.

#### Event

Events generated by a time-series graphic using a regression analysis, are not evaluated directly but may be analysed using the following options.

A graphic with a time series element including a regression series can generate events that can be further processed using the "Evaluate measured values" method. With this method, measured values can be automatically subjected to a regression analysis in order to subsequently generate corresponding evaluations for a measured value.

**Target field**

Choose the field in which a text will be entered upon the event occuring.

**Field value**

Enter the text to be written to the target field.

**Trigger**

Choose between the following options:

1. limit exceeded
2. below limit
3. above or below limits
4. within limits

## Related topics

- CPT and data-sequence topics: [Data Sequences and CPT](../../navigating-the-geodin-workspace/measurement-values/data-sequences-and-cpt.md)
- Shared measurement/data-type reference content now lives in [Formulas in Measurement Values](../../data-analysis/formulas/formulas-in-measurement-values.md)
- Shared measurement/data-type reference content now lives in the measurement-data editor reference ([Working with Measurement Data](../../navigating-the-geodin-workspace/measurement-values/working-with-measurement-data.md))
