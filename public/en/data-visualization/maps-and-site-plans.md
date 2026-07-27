---
description: Reference for diagram, chart, and drawing-layer display properties used in GeoDin site-plan and layout graphics
---

# Diagram and Chart Properties

This page documents the display properties available for diagram and chart graphic elements used in GeoDin site-plan layouts and print graphics. For constructing site plans - scenarios, scenes, object selection, and scales - see [Creating Site Plans](site-plans/creating-site-plans.md).

***

## Reference: Diagram Types

The following diagram types are available as graphic elements in GeoDin layouts. Select the diagram type when configuring the element properties.

### Durov Diagrams

The **Durov diagram** is an alternative to the Piper diagram for hydrochemistry visualization. It plots major ions as percentages of milli-equivalents in two triangles, projected onto a square grid perpendicular to the third axis. The plot reveals clustering of data points with similar compositions. An ion balance calculation is performed automatically for missing ingredients.

The **Durov diagram 2020** variant allows freely definable axis parameters (which must normally be converted to percent). Per triangle, sides add up to 100%. The axis division and labeling are fixed, but the orientation of the triangle axes and parameter labeling are freely definable. In the **extended Durov diagram**, additional squares are added at the bottom and right for an extra parameter in each direction with freely defined scales.

Analysis values held in mg/l have to be converted to milli-equivalents in the parameter definition. The following formulas are the usual conversions for a Durov diagram 2020:

| Triangle | Parameter | Formula |
|---|---|---|
| Left | SO4 | `$WAS:SO4$*2/96.0626` |
| Left | CL+NO3 | `($WAS:CL$/35.453)+($WAS:NO3$/62.0049)` |
| Left | HCO3 | `$WAS:HCO3$/61.0168` |
| Upper | Ca | `$WAS:CA$*2/40.078` |
| Upper | Mg | `$WAS:MG$*2/24.305` |
| Upper | Na+K | `($WAS:NA$/22.9897)+($WAS:K$/39.0983)` |

<!-- src: help/H0000011215#durov-diagram-2020 -->

### Schoeller Diagram

Displays a set of parameters taken from a freely defined parameter list; the number of parameters in the list divides the x-axis. Individual data points can be shown with a user-defined symbol. To configure the diagram, define the parameter list and the measurement graphic series. Separate checkboxes control whether the parameters at the left and right edges are displayed with a margin. The x-axis and y-axis labels and their font are set on the same properties page.

<!-- src: help/H0000007156#schoeller-diagram -->

### Formation Diagram (LBGR)

A classification method for high-mineralized natural waters (Valjaschko, 1960s), extended by Rechlin et al. for slightly mineralized freshwater. Distinguishes four elementary water types based on molar equivalent ratios of main ingredients (not predominating ions): **Carbonate Type** (unsaturated NaHCO3 water), **Sulfate Sodium Type** (carbonate saturated, sulfate not - dissolved Na2SO4), **Sulfate Magnesium Type** (carbonate and sulfate saturated with earth-alkali ions), and **Chloride Type** (calcium exceeds carbonate and sulfate). Requires analysis of Ca, Mg, Na, K, HCO3+CO3, SO4, Cl. The LBGR hydrogeochemical formation model (Brandenburg) distinguishes 9 formation types from precipitation through deep water-bearing layers.

### Pie/Bar Chart

Displays parameters or formulas compared against each other using independently adjustable fill patterns and colors. Only positive values are drawn; use a formula such as `$WAS:CL@B0,5$` to convert negative values. Each data record produces one diagram per page. Statistics can be calculated using formulas like `$WAS:CL@MAX$` in the parameter list.

### Circle Diagram

Plots a parameter value on a radius axis against another parameter as an angle value, displayed as a user-defined symbol. Requires defining a radius parameter, an angle parameter, and the series to be shown.

### Boxplot

Graphically represents the distribution of an ordinally scaled characteristic. The **box** spans the middle 50% of data (25th to 75th percentile, IQR). A continuous line marks the **median**. **Whiskers** extend up to 1.5x IQR; their actual length is determined by the last data value within that limit (so whiskers may differ in length). Values beyond the whiskers are plotted individually as outliers.

## Reference: Series and Calculated Lines

### List Management

Where multiple elements can be defined (series, columns, calculated lines, etc.), they appear in an ordered list. Use **New**, **Duplicate**, **Delete**, and arrow icons to manage entries. **Edit without refresh** suspends recalculation during bulk edits. Double-click an entry to navigate to its properties.

### Calculated Horizontal Lines

Horizontal reference lines can be added to any series in addition to curves, bars, or symbols. Available calculation types: **Minimum**, **Mean value**, **Maximum**, and **Median** (computed from measurement values), or a numeric value from **Object data**. Choose whether statistics use only the **displayed time interval** or **all measurement values** regardless of the visible range.

### Default Line

Displays a horizontal line at a user-defined value. Select whether the line references the left or right axis.

### Aggregation Preferences

An aggregation series is calculated from other series. Available types: **Mean values**, **Sums**, and **Differences**. For differences, values of all series from the second onward are subtracted from the first (e.g., series 3,1,2 yields value3 - value1 - value2). Enable **Only values measured at the same time** to restrict calculations to coincident timestamps. The **Stack** option enables stacked or bar display with percentage-based segments.

Two constraints apply to the stacked and bar display types. A stacked display requires all series values to be positive. The percental display scales all series to 100% and automatically sets the scales of the Y-axes to the user-defined range 0-100, whereas the real-value display shows the absolute values. Once drawing is activated, the batch settings appear on the series to be stacked so that the color options can be set.

<!-- src: help/H0000005498#batch -->

### Measurement Frequency

Filters which datasets of a measurement series are displayed using a time-interval. Useful for distinguishing data logger records from manual measurements by defining two series with different frequency settings and line colors. Lines are automatically interrupted at frequency boundaries.

### Confidence Limit

Configures confidence limit display on time series. Properties: **Display name** (for legend), **Confidence level** (0-1, typically 0.95), **Upper/lower confidence level** selection, **Draw curve** and **Draw symbols** toggles (with sub-node styling), and **Show in legend** option.

## Reference: Data Filtering

GeoDin filters measurement value data sets at two points in the presentation pipeline: a **pre-selection** runs before the data types are correlated into combined data sets, a **post-selection** runs afterwards on the correlated result. Both are built from the same kind of selectors and use the same condition syntax.

### Pre-selection

A pre-selection filters the measurement value data sets against fixed criteria - for example "use data sets where chloride > 12" - **before** the data types are combined. It consists of any number of individual selectors (single conditions) that are combined with AND, so a data set must satisfy every selector to survive the filter. Because a single selector can itself contain logical operators, a pre-selection can often be expressed with one selector.

**Presentations using one data type.** When the presentation uses parameters of a single data type only (for example two substances from the data type groundwater chemistry), no data types have to be correlated: both parameters already belong to the same measurement value data set at a given time. The pre-selection simply chooses the data sets that meet the conditions.

**Presentations using several data types.** When the presentation mixes parameters of different data types - for example water level from groundwater dynamics against nitrate from groundwater chemistry - those values live in separate data sets, and there are typically more water level readings than chemical analyses. A presentation such as an XY diagram can only use data sets in which both measurements were taken at the same time, so the data sets of the different data types are combined into one complete data set using correlating criteria. Because the pre-selection is applied before that combination, it can remove data sets of one data type from the correlation entirely, which visibly changes the result.

**How data types are correlated.** The correlating criterion depends on the measurement point type of the data type:

| Data type correlated with | Correlating criterion |
|---|---|
| Measurement point type filter or borehole | Analysis date (the **date** column of the analysis) |
| Measurement point type sample | Sample name (the **sample name** column of the analysis) |

Where two or more data types hold analyses with the same date (or sample name), those data sets are merged into one complete data set. Data sets that cannot be correlated are not lost - they are carried into the combined result, with empty columns for the parameters that were not measured.

**Example.** Groundwater dynamics (water level) and groundwater chemistry (nitrate, laboratory) hold these analyses:

Data type 1 - groundwater dynamics:

| Date | Water level |
|---|---|
| 2005-10-01 | 12.3 |
| 2005-10-02 | 12.4 |
| 2005-10-03 | 11.8 |
| 2005-10-04 | 11.7 |
| 2005-10-05 | 12.1 |

Data type 2 - groundwater chemistry:

| Date | Nitrate | Laboratory |
|---|---|---|
| 2005-10-01 | 12 | A |
| 2005-10-04 | 14 | B |
| 2005-10-04 | 13 | A |

Correlating the two data types produces:

| Date | Water level | Nitrate |
|---|---|---|
| 2005-10-01 | 12.3 | 12 |
| 2005-10-02 | 12.4 | |
| 2005-10-03 | 11.8 | |
| 2005-10-04 | 11.7 | 14 |
| 2005-10-04 | | 13 |
| 2005-10-05 | 12.1 | |

The two chemistry analyses of 2005-10-04 make the relation ambiguous, and in that case the data sets are correlated at random. Adding a pre-selection selector with the condition on the Laboratory column, `Laboratory = 'A'`, removes the laboratory B analysis before the correlation and makes the result deterministic:

| Date | Water level | Nitrate |
|---|---|---|
| 2005-10-01 | 12.3 | 12 |
| 2005-10-02 | 12.4 | |
| 2005-10-03 | 11.8 | |
| 2005-10-04 | 11.7 | 13 |
| 2005-10-05 | 12.1 | |

<!-- src: help/H0000000525#pre-selection -->
<!-- src: help/H0000000650#pre-selection -->
<!-- src: help/H0000005472#pre-selection -->
<!-- src: help/H0000011172#pre-selection -->
<!-- src: help/H0000011192#pre-selection -->

### Post-selection

Filters data sets from correlated data types using logical conditions - see [Pre-selection](#pre-selection) for how the data types are correlated. Define a **Name** (shown in layout interfaces) and a **Condition** using selection syntax. Conditions can be parameterized with placeholders: `%NUMERICPARAM` (numeric fields), `%STRINGPARAM` (text fields), `%DATEPARAM` (date fields). Set a **Default value** for parameterized conditions. Enable **Make available as quick setting** to expose the parameter in layout interfaces. Display selector content in layouts using `$%SelectorContent:Selector_name[@format]$` - use `@t` for translated values or `@c` for key codes.

Several selectors are managed together in the list of selectors. They are evaluated in the order set in the list and are combined with **AND**: a data set stays in the result only if it fulfills the condition of selector 1 **and** selector 2 (and so on). Restricting a presentation to a time period therefore takes two selectors:

| Selector | Name | Condition |
|---|---|---|
| 1 | Start date | `$SMPDATE$ >= '20150601'` |
| 2 | End date | `$SMPDATE$ <= '20150630'` |

Only samples that fall into June 2015 fulfill both conditions and are included in the presentation.

Each condition is defined against a data field in a preset table or data type; click the icon at the right of the **Table** field to choose one. That list also offers the option **-All data types-**, which is useful when one parameter occurs in several data types (for example `$SMPDATE$`) - the selector then only has to be created once, regardless of which data type the presentation ends up using. The condition itself is entered in the **Condition** field; clicking inside it opens a building dialog listing the available parameters, and double-clicking a parameter name inserts it. The syntax is described under [Selection syntax](../data-analysis/queries/conditions-and-operators.md).

<!-- src: help/H0000004283#selector -->


## Reference: Text and Labeling

### Point Labels

Displayed points can be optionally labeled by activating the **Label** option. The label content is defined by a labeling macro, entered directly or built using the **Build** icon. See [Text Macros and Variable Text](layouts/text-macros-and-variable-text.md) for macro syntax details.

### Time Axis Text Formatting

Time axis labels support **absolute** or **relative** time values. Absolute format codes: `d`/`dd` (day), `ddd`/`dddd` (weekday), `m`/`mm` (month number), `mmm`/`mmmm` (month name), `yy`/`yyyy` (year), `h`/`hh` (hour), `n`/`nn` (minute), `s`/`ss` (second). Relative mode starts at 0 and labels the time difference from the start in selectable units (days, months, etc.) with configurable decimal places.

### Diagram Text Positioning

Text elements can be fixed text or linked to legend labels. Position is defined in a 0,0 to 1,1 coordinate system relative to the diagram area (0,0 = lower-left, 1,1 = upper-right). Enable **Use absolute coordinates of the chart axes** to tie positioning to displayed parameter values. **Remove text outside the chart area** hides text that falls outside the diagram due to axis changes. Link to a legend label using the syntax `%Leg:S=<series>,L=<label>` for dynamic text.

### Legend Labels

Used either within a diagram (via a text element linked with `%Leg:S=,L=` syntax) or in a separate legend element. Labels combine free text with variable data field names (text macro syntax). The **Translation (language)** setting controls dictionary retranslation; defaults to "Automatic" (uses the object type language). If no translation exists, the abbreviation is displayed directly.

## Reference: Appearance Properties

### Fill, Color, and Outline

**Fill pattern** applies to symbols with filled areas (no effect on line-only symbols). Enable **Draw area transparent** to show background elements through unfilled areas; disable it to hide background behind the symbol rectangle. **Line type** adjusts symbol contour presentation. **Color** is selected from the dropdown or set to "Individually" for custom colors. **Line thickness** can be set in mm (recommended for print consistency) or pixels (screen-only use).

### Color and Transparency

The default fill pattern background color comes from the fill pattern table. Select **User defined** to override. **Transparent** fill patterns allow overlaying with visible underlying elements (not supported by all output devices). Line thickness adjustment applies only to vector fill patterns and affects print output only.

### Font

Select font family, size, and style from the dropdown. **Alignment** uses six anchor points for precise positioning (status line shows position relative to the alignment point). **Angle** rotates text up to 360 degrees. **Background** mode: _Transparent_ shows graphics through individual characters; _Opaque_ crops the text with a background color (default white, customizable).
