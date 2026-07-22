---
description: Importing CPT and other data sequences, including batch import and reduce factor
---

# Data Sequences

Data sequences (German: *Sondierungen*) cover CPT (cone penetration test) data and any other depth-oriented measurement series - SPT, geophysical logs, chemical profiles, etc. This page focuses on importing data sequences from external ASCII files, including free-format CPT import, the reduce factor, and batch import.

For the data entry grid and manual editing of data sequences, see [Data sequences (editor)](../../navigating-the-geodin-workspace/objects/general-data.md#data-sequences).

## Supported formats

- **Free-format ASCII / CSV** - handled by the generic Data Sequences importer described below. Use this for any depth-indexed text file, including CSV-format CPT data.
- **GEF** - supported natively for CPT data. GEF is the standard format used in the Netherlands and the UK.
- **Dedicated ASCII CPT** - a legacy filter built for historic company use. Note that **CSV CPT imports do not go through this filter** - use the generic Data Sequences import for CSV.

## Free-format CPT import

To import a CPT or other data sequence into an existing object:

{% stepper %}
{% step %}
#### Step 1

Select the object in the GeoDin Object Manager and open **Data Management > Data Sequences**.
{% endstep %}

{% step %}
#### Step 2

Click **Import** to open the import dialog.
{% endstep %}

{% step %}
#### Step 3

Select the source file and choose **User Format** (free format).
{% endstep %}

{% step %}
#### Step 4

Configure the columns:
   - **Depth column** - typically column 1
   - **Data start column** - the first column containing measurement values (typically column 2)
   - **Decimal places** - number of decimal places in the source file
   - **Delimiter** - separator character (space, comma, semicolon, etc.)
   - **Units** - unit of the depth values (e.g. m)
{% endstep %}

{% step %}
#### Step 5

Set the **Reduce factor** (see below).
{% endstep %}

{% step %}
#### Step 6

Click **OK** to run the import.
{% endstep %}
{% endstepper %}

### Reduce factor

The reduce factor controls how many values are imported from dense data series. It is useful for CPT data measured at 1 cm intervals, where displaying every value at typical log scales (e.g. 1:100) is unnecessary and slows down the database.

**How it works:**

- Factor = 1: all values are imported (up to 10,000 per series).
- Factor = n (where n > 1): GeoDin reads blocks of n² values. From each block it retains only the **minimum** and **maximum** values (with their depths). Peaks and troughs are preserved; intermediate values are discarded.

**Example:** Factor = 3 -> blocks of 9 values -> 2 values retained per block (min and max). This reduces a 4,500-point CPT to approximately 1,000 imported points.

{% hint style="info" %}
If you leave the reduce factor at 0, GeoDin calculates an automatic factor so that no series exceeds 500 values. Set the factor to 1 to import without any reduction (maximum 10,000 values per series).
{% endhint %}

{% hint style="warning" %}
**Column layout constraint** - data columns must sit to the right of the depth column in the source file. The importer reads every column to the right of depth and there is no option to skip or exclude specific columns at import time. To remove unwanted series, delete them after import.
{% endhint %}

## Import filters (saving and reusing format settings)

To avoid re-entering the same column configuration for every import of a given file type, save the format as a named import filter:

1. In the import dialog, configure all column and format settings.
2. Click the **New import filter** icon and give the filter a name (e.g. "CPT Fugro v3").
3. Confirm. The filter is saved to `SONIFLTR.SYS` in the `SYSLIB` folder and is available to all users of the same installation.

To load an existing filter, click the **Edit selected filters** drop-down in the import dialog and select the filter name.

## Batch import at the Objects branch level

GeoDin can match import files to objects automatically by filename, allowing you to import CPT data for dozens of objects in one step.

**Requirements:**

- Each import file must be named exactly the same as the **short name** of the corresponding GeoDin object (file extension is ignored).
- A saved import filter must exist for the file format.

**Steps:**

{% stepper %}
{% step %}
#### Step 1

In the GeoDin Object Manager, select the **Objects** branch (or a query/group) - not an individual object.
{% endstep %}

{% step %}
#### Step 2

Choose the method **Import data sequences** (or **Update data sequences** to overwrite/append).
{% endstep %}

{% step %}
#### Step 3

Select **Entire folder** and navigate to the folder containing the CPT files.
{% endstep %}

{% step %}
#### Step 4

Select the import filter.
{% endstep %}

{% step %}
#### Step 5

Click **Check object link** to preview which files match existing objects, and which don't. Review the log before proceeding.
{% endstep %}

{% step %}
#### Step 6

Run the import. Objects without a matching file are skipped; new data sequences are created in matched objects.
{% endstep %}
{% endstepper %}

{% hint style="info" %}
**Import data sequences** (German: *Sondierung importieren*) creates new data sequence series. **Update data sequences** (German: *Sondierung aktualisieren*) overwrites or appends to existing series. Use "Update" for re-imports with corrected source files.
{% endhint %}

{% hint style="warning" %}
Filenames must match the object short name exactly (case-sensitive on some systems). Create general data presets (**Stammdatenvorgaben**) before the batch import so that fields like project, client, and coordinate system are pre-filled on any new objects GeoDin creates during import.
{% endhint %}

***

## Beyond CPT - custom filters for any depth-indexed data

The Data Sequences importer is not limited to CPT. Build a custom import filter for any depth-indexed series, for example **measurement-while-drilling (MWD)** logs that record penetration speed, tool pressure, injection pressure, torque, and RPM against depth. The filter mechanism is the same as for CPT: define depth column, data start column, delimiters, units, and series names; save it as a named filter for reuse.

Imported data sequence series can also be **re-exported to CSV** - useful when you need to pull a series out of GeoDin, edit it externally, and re-import.
