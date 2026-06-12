---
description: Maps and Site Plans
---

# Maps and Site Plans

Site-plan construction — scenarios, scenes, object selection, scales, and symbols — is documented in [Creating Site Plans](site-plans/creating-site-plans.md).

## Desktop Reference: Diagram and Chart Properties

The following sections document display properties and diagram types available for maps and site plan graphics in GeoDin Desktop.

### Diagram Types

#### Durov Diagrams

The **Durov diagram** is an alternative to the Piper diagram for hydrochemistry visualization. It plots major ions as percentages of milli-equivalents in two triangles, projected onto a square grid perpendicular to the third axis. The plot reveals clustering of data points with similar compositions. An ion balance calculation is performed automatically for missing ingredients.

The **Durov diagram 2020** variant allows freely definable axis parameters (which must normally be converted to percent). Per triangle, sides add up to 100%. The orientation of the triangle axes and parameter labeling are freely definable. In the **extended Durov diagram**, additional squares are added at the bottom and right for an extra parameter in each direction with freely defined scales.

#### Formation Diagram (LBGR)

A classification method for high-mineralized natural waters (Valjaschko, 1960s), extended by Rechlin et al. for slightly mineralized freshwater. Distinguishes four elementary water types based on molar equivalent ratios of main ingredients (not predominating ions): **Carbonate Type** (unsaturated NaHCO3 water), **Sulfate Sodium Type** (carbonate saturated, sulfate not -- dissolved Na2SO4), **Sulfate Magnesium Type** (carbonate and sulfate saturated with earth-alkali ions), and **Chloride Type** (calcium exceeds carbonate and sulfate). Requires analysis of Ca, Mg, Na, K, HCO3+CO3, SO4, Cl. The LBGR hydrogeochemical formation model (Brandenburg) distinguishes 9 formation types from precipitation through deep water-bearing layers.

#### Pie/Bar Chart

Displays parameters or formulas compared against each other using independently adjustable fill patterns and colors. Only positive values are drawn; use a formula such as `$WAS:CL@B0,5$` to convert negative values. Each data record produces one diagram per page. Statistics can be calculated using formulas like `$WAS:CL@MAX$` in the parameter list.

#### Circle Diagram

Plots a parameter value on a radius axis against another parameter as an angle value, displayed as a user-defined symbol. Requires defining a radius parameter, an angle parameter, and the series to be shown.

#### Boxplot

Graphically represents the distribution of an ordinally scaled characteristic. The **box** spans the middle 50% of data (25th to 75th percentile, IQR). A continuous line marks the **median**. **Whiskers** extend up to 1.5x IQR; their actual length is determined by the last data value within that limit (so whiskers may differ in length). Values beyond the whiskers are plotted individually as outliers.

### Series and Calculated Lines

#### List Management

Where multiple elements can be defined (series, columns, calculated lines, etc.), they appear in an ordered list. Use **New**, **Duplicate**, **Delete**, and arrow icons to manage entries. **Edit without refresh** suspends recalculation during bulk edits. Double-click an entry to navigate to its properties.

#### Calculated Horizontal Lines

Horizontal reference lines can be added to any series in addition to curves, bars, or symbols. Available calculation types: **Minimum**, **Mean value**, **Maximum**, and **Median** (computed from measurement values), or a numeric value from **Object data**. Choose whether statistics use only the **displayed time interval** or **all measurement values** regardless of the visible range.

#### Default Line

Displays a horizontal line at a user-defined value. Select whether the line references the left or right axis.

#### Aggregation Preferences

An aggregation series is calculated from other series. Available types: **Mean values**, **Sums**, and **Differences**. For differences, values of all series from the second onward are subtracted from the first (e.g., series 3,1,2 yields value3 - value1 - value2). Enable **Only values measured at the same time** to restrict calculations to coincident timestamps. The **Stack** option enables stacked or bar display with percentage-based segments.

#### Measurement Frequency

Filters which datasets of a measurement series are displayed using a time-interval. Useful for distinguishing data logger records from manual measurements by defining two series with different frequency settings and line colors. Lines are automatically interrupted at frequency boundaries.

#### Confidence Limit

Configures confidence limit display on time series. Properties: **Display name** (for legend), **Confidence level** (0-1, typically 0.95), **Upper/lower confidence level** selection, **Draw curve** and **Draw symbols** toggles (with sub-node styling), and **Show in legend** option.

### Data Filtering

#### Post-selection

Filters data sets from correlated data types using logical conditions. Define a **Name** (shown in layout interfaces) and a **Condition** using selection syntax. Conditions can be parameterized with placeholders: `%NUMERICPARAM` (numeric fields), `%STRINGPARAM` (text fields), `%DATEPARAM` (date fields). Set a **Default value** for parameterized conditions. Enable **Make available as quick setting** to expose the parameter in layout interfaces. Display selector content in layouts using `$%SelectorContent:Selector_name[@format]$` -- use `@t` for translated values or `@c` for key codes.

### Text and Labeling

#### Point Labels

Displayed points can be optionally labeled by activating the **Label** option. The label content is defined by a labeling macro, entered directly or built using the **Build** icon. See Text macro documentation for syntax details.

#### Time Axis Text Formatting

Time axis labels support **absolute** or **relative** time values. Absolute format codes: `d`/`dd` (day), `ddd`/`dddd` (weekday), `m`/`mm` (month number), `mmm`/`mmmm` (month name), `yy`/`yyyy` (year), `h`/`hh` (hour), `n`/`nn` (minute), `s`/`ss` (second). Relative mode starts at 0 and labels the time difference from the start in selectable units (days, months, etc.) with configurable decimal places.

#### Diagram Text Positioning

Text elements can be fixed text or linked to legend labels. Position is defined in a 0,0 to 1,1 coordinate system relative to the diagram area (0,0 = lower-left, 1,1 = upper-right). Enable **Use absolute coordinates of the chart axes** to tie positioning to displayed parameter values. **Remove text outside the chart area** hides text that falls outside the diagram due to axis changes. Link to a legend label using the syntax `%Leg:S=<series>,L=<label>` for dynamic text.

#### Legend Labels

Used either within a diagram (via a text element linked with `%Leg:S=,L=` syntax) or in a separate legend element. Labels combine free text with variable data field names (text macro syntax). The **Translation (language)** setting controls dictionary retranslation; defaults to "Automatic" (uses the object type language). If no translation exists, the abbreviation is displayed directly.

### Appearance Properties

#### Fill, Color, and Outline

**Fill pattern** applies to symbols with filled areas (no effect on line-only symbols). Enable **Draw area transparent** to show background elements through unfilled areas; disable it to hide background behind the symbol rectangle. **Line type** adjusts symbol contour presentation. **Color** is selected from the dropdown or set to "Individually" for custom colors. **Line thickness** can be set in mm (recommended for print consistency) or pixels (screen-only use).

#### Color and Transparency

The default fill pattern background color comes from the fill pattern table. Select **User defined** to override. **Transparent** fill patterns allow overlaying with visible underlying elements (not supported by all output devices). Line thickness adjustment applies only to vector fill patterns and affects print output only.

#### Font

Select font family, size, and style from the dropdown. **Alignment** uses six anchor points for precise positioning (status line shows position relative to the alignment point). **Angle** rotates text up to 360 degrees. **Background** mode: _Transparent_ shows graphics through individual characters; _Opaque_ crops the text with a background color (default white, customizable).
