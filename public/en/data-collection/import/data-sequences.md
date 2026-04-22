---
description: Importing CPT and other data sequences, including batch import and reduce factor
---

# Data Sequences

Data sequences (German: *Sondierungen*) cover CPT (cone penetration test) data and any other depth-oriented measurement series — SPT, geophysical logs, chemical profiles, etc. This page focuses on importing data sequences from external ASCII files, including free-format CPT import, the reduce factor, and batch import.

For the data entry grid and manual editing of data sequences, see [Data sequences (editor)](../../navigating-the-geodin-workspace/objects/general-data.md#data-sequences).

## Free-format CPT import

To import a CPT or other data sequence into an existing object:

1. Select the object in the GeoDin Object Manager and open **Data Management > Data Sequences**.
2. Click **Import** to open the import dialog.
3. Select the source file and choose **User Format** (free format).
4. Configure the columns:
   - **Depth column** — typically column 1
   - **Data start column** — the first column containing measurement values (typically column 2)
   - **Decimal places** — number of decimal places in the source file
   - **Delimiter** — separator character (space, comma, semicolon, etc.)
   - **Units** — unit of the depth values (e.g. m)
5. Set the **Reduce factor** (see below).
6. Click **OK** to run the import.

### Reduce factor

The reduce factor controls how many values are imported from dense data series. It is useful for CPT data measured at 1 cm intervals, where displaying every value at typical log scales (e.g. 1:100) is unnecessary and slows down the database.

**How it works:**

- Factor = 1: all values are imported (up to 10,000 per series).
- Factor = n (where n > 1): GeoDin reads blocks of n² values. From each block it retains only the **minimum** and **maximum** values (with their depths). Peaks and troughs are preserved; intermediate values are discarded.

**Example:** Factor = 3 → blocks of 9 values → 2 values retained per block (min and max). This reduces a 4,500-point CPT to approximately 1,000 imported points.

{% hint style="info" %}
If you leave the reduce factor at 0, GeoDin calculates an automatic factor so that no series exceeds 500 values. Set the factor to 1 to import without any reduction (maximum 10,000 values per series).
{% endhint %}

<!-- src: transcript/2026-04-15-in-person-workshop -->

## Import filters (saving and reusing format settings)

To avoid re-entering the same column configuration for every import of a given file type, save the format as a named import filter:

1. In the import dialog, configure all column and format settings.
2. Click the **New import filter** icon and give the filter a name (e.g. "CPT Fugro v3").
3. Confirm. The filter is saved to `SONIFLTR.SYS` in the `SYSLIB` folder and is available to all users of the same installation.

To load an existing filter, click the **Edit selected filters** drop-down in the import dialog and select the filter name.

<!-- src: transcript/2026-04-15-in-person-workshop -->

## Batch import at the Objects branch level

GeoDin can match import files to objects automatically by filename, allowing you to import CPT data for dozens of objects in one step.

**Requirements:**

- Each import file must be named exactly the same as the **short name** of the corresponding GeoDin object (file extension is ignored).
- A saved import filter must exist for the file format.

**Steps:**

1. In the GeoDin Object Manager, select the **Objects** branch (or a query/group) — not an individual object.
2. Choose the method **Import data sequences** (or **Update data sequences** to overwrite/append).
3. Select **Entire folder** and navigate to the folder containing the CPT files.
4. Select the import filter.
5. Click **Check object link** to preview which files match existing objects, and which don't. Review the log before proceeding.
6. Run the import. Objects without a matching file are skipped; new data sequences are created in matched objects.

{% hint style="info" %}
**Import data sequences** (German: *Sondierung importieren*) creates new data sequence series. **Update data sequences** (German: *Sondierung aktualisieren*) overwrites or appends to existing series. Use "Update" for re-imports with corrected source files.
{% endhint %}

{% hint style="warning" %}
Filenames must match the object short name exactly (case-sensitive on some systems). Create general data presets (**Stammdatenvorgaben**) before the batch import so that fields like project, client, and coordinate system are pre-filled on any new objects GeoDin creates during import.
{% endhint %}

<!-- src: transcript/2026-04-15-in-person-workshop -->
