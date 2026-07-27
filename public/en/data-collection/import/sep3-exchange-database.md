---
description: Importing SEP 3 data from a state authority using the GeoDin exchange database (Austauschdatenbank)
---

# SEP 3 Exchange Database

State geological authorities (Landesämter) often deliver borehole data as a plain SEP 3 Access database - a file containing only the SEP 3 data tables, without the GeoDin system wrapper tables that a standard GeoDin database requires. GeoDin cannot open such a file directly as a project database.

The **exchange database** (German: *Austauschdatenbank*) is a special Access database that acts as a bridge: it can read the SEP 3 table structure from the authority's file and expose the objects so they can be copied into your main GeoDin database.

## Prerequisites

- GeoDin version 3.4 or later.
- The exchange database file, downloaded from the GeoDin website (free download, version-specific).
- The Access (`.mdb` or `.accdb`) file received from the state authority, placed in a **locally accessible path on the GeoDin server** - for example, `C:\Temp\`. Avoid long UNC network paths, which can cause file access errors.

## Step-by-step import procedure

{% stepper %}
{% step %}
#### Step 1: Download the exchange database

from the GeoDin website. The download is version-specific - ensure you use the version matching your GeoDin installation.
{% endstep %}

{% step %}
#### Step 2: Place the received authority file

in a short local path on the GeoDin server (e.g. `C:\Temp\authority-data.mdb`).
{% endstep %}

{% step %}
#### Step 3: Connect the exchange database in GeoDin.

In the GeoDin Object Manager, use **Create database connection** to add the downloaded Austauschdatenbank file as a new Access database connection.
{% endstep %}

{% step %}
#### Step 4: Point the exchange database to the authority's file.

Once connected, open the exchange database. It will ask you to specify the path to the received authority file. Browse to the file placed in Step 2.
{% endstep %}

{% step %}
#### Step 5: Browse the imported objects.

After the path is set, the exchange database displays the SEP 3 objects from the authority file as if they were in a normal GeoDin project. You can inspect layer data and general data before copying.
{% endstep %}

{% step %}
#### Step 6: Copy objects into your main database.

Select the objects you want to import. Use **Add Objects** on your target project (in your main database) and drag the objects from the exchange database into the list. Choose **Copy** and confirm.
{% endstep %}

{% step %}
#### Step 7: Review the protocol.

After the copy, GeoDin displays a protocol showing which objects were transferred and any issues encountered (e.g. unmapped SEP codes). See [SEP 1 -> SEP 3 conversion](cross-database-object-copying.md#converting-sep-1-objects-to-sep-3-during-copy) for notes on handling unmapped abbreviations.
{% endstep %}
{% endstepper %}

{% hint style="warning" %}
The exchange database only works with files that use the **SEP 3 table structure**. Arbitrary third-party Access databases or non-SEP formats are not supported.
{% endhint %}

## Troubleshooting: exchange database appears empty or will not import

<!-- src: support/sep3-austausch#empty-exchange-db -->

The exchange database is version-matched and path-sensitive. If it opens but
shows no objects, or the import fails:

* **Use the version matching the delivery.** Fugro provides the exchange
  database for [SEP 3.4.X](https://download.geodin.com/tools/SEP3_Austausch/SEP3_Austausch_Version_3-4-X.zip),
  [SEP 3.5.X](https://download.geodin.com/tools/SEP3_Austausch/SEP3_Austausch_Version_3-5-X.zip),
  and [SEP 3.6.X](https://download.geodin.com/tools/SEP3_Austausch/SEP3_Austausch_Version_3-6-X.zip).
  Data exported by other software reads correctly only if it was exported with
  one of these object type versions.
* **The source file must be `C:\Temp\SEP3.mdb`.** The exchange database
  contains fixed links to a database named `SEP3.mdb` in the folder `C:\Temp` -
  rename the received file accordingly and create the folder if needed.
* **Fix the project ID.** The `PRJ_ID` in the source data must be exactly
  6 digits; correct it in the source file if the exchange database stays empty.
* **Add the missing EPSG column.** Older third-party exports can lack the
  EPSG column in the `S3STAMM` table - add it, then re-open the exchange
  database. Legacy coordinate codes may additionally need the
  [KSYS cleanup](../../support/troubleshooting/import-and-data-exchange.md).

{% hint style="info" %}
If you regularly receive data from state authorities, keep a permanent connection to the exchange database in GeoDin and simply update the path to point to each new delivery file as it arrives.
{% endhint %}
