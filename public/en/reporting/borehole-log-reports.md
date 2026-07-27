---
description: How to generate borehole log reports in GeoDin using templates, layouts, and the borehole log graphic element
---

# Borehole Log Reports

Borehole log reports are GeoDin's primary output for documenting individual boreholes. Templates and layouts drive the report output, combining borehole description text, layer fill patterns, water levels, borehole design diagrams, data-sequence plots, test result tables, static labels, and dynamic macros into a single printable document.

## Borehole element configuration

The borehole element supports three drawing types: **Graphic Log**, **Tabular Log**, and **Log with Default**. Elements can be resized within the layout; a red outline indicates insufficient space for the description text.

**Scale options:**
- Fixed ratios (e.g., 1:100, 1:200)
- Fixed depth intervals (e.g., only show the first 10 m)
- "Fit to Page" (dynamic scale per object)

A depth interval setting can force a page break - for example, setting an end depth of 10 m causes the borehole to continue on page 2. Scale, interval, page break, and fit-to-page settings interact and must be balanced together.

{% hint style="info" %}
Each borehole with measurement data is marked with a small blue sphere icon next to it in the tree view.
{% endhint %}

For cross-section reports, see [Cross-Section Reports](cross-section-reports.md). For printing and exporting reports, see [Bulk Print and PDF Export](bulk-print-and-pdf-export.md).

***

## Reference: Report graphic element

### Overview

The **Report** graphic element displays tables with database contents or calculated reports (statistics, list comparisons, etc.). It can be inserted into an object frame multiple times. Each graphic element has a configurable **element name** (for identification in the tree view), a **drawing layer** assignment, and **arrangement controls** (bring to front / send to back) for overlapping elements.

### Report types

| Type | Description |
|---|---|
| **Original data report** | Shows original data in summary: tabular borehole presentations, sample overviews, measurement value tables. Nearly all data in a GeoDin database can be documented in any combination. |
| **Report calculation** | Processes measurement value data before reporting - includes list comparison, statistics, annual statistics, laboratory control reports, plausibility reports, and grain size analyses (particle size parameter, sieve analysis, hydrometer analysis). |
| **Plug-in reports** | Requires external plug-in modules. The plug-in handles all configuration and calculation; no further settings can be made in GeoDin. |

Row types, page breaks, and dynamic captions are common to all report calculations and are documented under [Export](../data-collection/export.md#reference-report-row-types).

#### List comparison

<!-- src: help/H0000000872#configuration -->

The list comparison is a report calculation in which the measured values of different parameters are compared with a comparative list, so that exceedance of or approximation to a comparative value is shown in tabular form. Configure it with:

| Setting | Description |
|---|---|
| **Data type** | The data type for which the list comparison is calculated. The list of possible data types depends on the selected data source (measurement point type). |
| **List group** | A list group from the offered entries. If the chosen data type is not correlated with any comparative list, a list comparison is not possible. |
| **List** | The comparative list itself. |
| **Parameter list** | **manual** - choose the parameters to be considered one by one. **automatically create from** - take the parameters to be considered from a measurement program, or alternatively use all parameters of the data type. |

Display tolerances and the behavior for parameters with or without a list value are set under [Parameter settings (list comparison)](../data-collection/export.md#reference-parameter-settings-list-comparison).

#### Statistic

<!-- src: help/H0000000875#settings -->

The statistic is a report calculation in which statistical values such as minimum, maximum, standard deviation and variance are shown in tabular form. The values can be structured temporally, and several parameters can be examined at once.

**Parameter settings**

- **manual** - a parameter list is shown below the statistic, in which any parameter can be added or removed.
- **automatically create from** - gives access to the parameter lists of prepared measurement programs. Select a data type and a measurement program; alternatively all parameters of a data type can be used.

**Time based classification**

| Option | Effect |
|---|---|
| **without** | The measurement values are not divided into time periods. All measurement values of the whole time span of the measurement are considered for the statistic values. |
| **monthly** | The measurement values are analyzed monthly. The monthly statistic contains several statistic values per parameter depending on the time interval of the entire measurement series. Only the year of the first data set is used. |
| **monthly multi year** | As monthly, but all data sets are used independent of year for the chosen time period. |
| **yearly** | The measurement values are analyzed yearly. The annual statistic contains several statistic values per parameter depending on the time interval of the complete measurement series. |

**Pool measurement points**

If several measurement points exist for a single object, these can be combined. If several objects are used in one object frame, all their measurement points can be combined to create a statistic across locally separated measurement points of an area.

How parameters with no data in a period are shown is controlled by the [blank-value options](../data-collection/export.md#reference-blank-values-in-statistic-reports).

#### Laboratory control report

<!-- src: help/H0000005326#parameter-rows -->

The report type **Laboratory control report** displays single parameters as rows. Samples, filters, boreholes, or object manager queries can be specified as the data source under report > report type > data source (in the object properties).

With samples as data source, the result looks like this:

```
Measurement parameter    Measurement value   Unit
Cyanide (total)          0.333               mg/kg DW
Metals
Lead                     40.000              mg/kg DW
Nickel                   50.000              mg/kg DW
PAH
Naphtalene               4.200               mg/kg DW
```

The columns define which information about the parameter is displayed - measured value, unit, and optionally the extended measurement value specifications such as measurement method, sample preparation, or detection limit. The rows define which parameters and which subheadings ("Metals", "PAH" in the example) appear. A sample with several measured parameters is displayed with a corresponding number of rows; if several samples are connected to the layout, the same number of row blocks is created for each sample. Row blocks can be separated by subheadings (for example the sample name) or page breaks - see [Report row types](../data-collection/export.md#reference-report-row-types) and [Dynamic captions](../data-collection/export.md#reference-dynamic-captions).

Rows carrying a parameter need their line type set to **measurement parameter** beforehand; rows carrying a subheading need line type **Text**.

**Parameter-level defaults**

Standard unit of measurement, standard limit of determination, and standard method do not have to be entered for each individual measured value. They can be defined once at the parameter itself.

{% hint style="info" %}
These defaults can only be set in the system configuration.
{% endhint %}

| Default | Where to set it |
|---|---|
| Unit | The **Unit** field of the parameter. |
| Standard detection limit | A discrete text line `DEFAULTQUANTIFLIMIT=<value>` in the parameter's editing field. |
| Standard method | A discrete text line `DEFAULTMETHOD=<string>` in the parameter's editing field. |

### Image element

The **Image** graphic element can be used for company logos, topographic backgrounds, and similar. Supported formats: BMP, EMF, ICO, JPG, GGF (GeoDin graphic files), PCX, PNG, TIFF, WMF. After adding, the element appears as a blue dashed frame; select the image file via the **Data source** settings.

### Well design horizontal scale

Configure the horizontal scale for well design elements. Enter diameters for borehole and casing elements drawn at accurate scale. Options include "Constant width" (fixed maximum borehole diameter), "Centre display" (keeps the well design centered regardless of data), and percentage-based borehole widening for better display of fill patterns or staggered piezometers.

### Report parameter selection

Select a parameter from the available data types by clicking the button in the entry field to open the selection dialogue.
