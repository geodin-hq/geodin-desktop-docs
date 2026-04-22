---
description: Importing SEP 3 data from a state authority using the GeoDin exchange database (Austauschdatenbank)
---

# SEP 3 Exchange Database

State geological authorities (Landesämter) often deliver borehole data as a plain SEP 3 Access database — a file containing only the SEP 3 data tables, without the GeoDin system wrapper tables that a standard GeoDin database requires. GeoDin cannot open such a file directly as a project database.

The **exchange database** (German: *Austauschdatenbank*) is a special Access database that acts as a bridge: it can read the SEP 3 table structure from the authority's file and expose the objects so they can be copied into your main GeoDin database.

## Prerequisites

- GeoDin version 3.4 or later.
- The exchange database file, downloaded from the GeoDin website (free download, version-specific).
- The Access (`.mdb` or `.accdb`) file received from the state authority, placed in a **locally accessible path on the GeoDin server** — for example, `C:\Temp\`. Avoid long UNC network paths, which can cause file access errors.

## Step-by-step import procedure

1. **Download the exchange database** from the GeoDin website. The download is version-specific — ensure you use the version matching your GeoDin installation.

2. **Place the received authority file** in a short local path on the GeoDin server (e.g. `C:\Temp\authority-data.mdb`).

3. **Connect the exchange database in GeoDin.** In the GeoDin Object Manager, use **Create database connection** to add the downloaded Austauschdatenbank file as a new Access database connection.

4. **Point the exchange database to the authority's file.** Once connected, open the exchange database. It will ask you to specify the path to the received authority file. Browse to the file placed in Step 2.

5. **Browse the imported objects.** After the path is set, the exchange database displays the SEP 3 objects from the authority file as if they were in a normal GeoDin project. You can inspect layer data and general data before copying.

6. **Copy objects into your main database.** Select the objects you want to import. Use **Add Objects** on your target project (in your main database) and drag the objects from the exchange database into the list. Choose **Copy** and confirm.

7. **Review the protocol.** After the copy, GeoDin displays a protocol showing which objects were transferred and any issues encountered (e.g. unmapped SEP codes). See [SEP 1 → SEP 3 conversion](cross-database-object-copying.md#converting-sep-1-objects-to-sep-3-during-copy) for notes on handling unmapped abbreviations.

{% hint style="warning" %}
The exchange database only works with files that use the **SEP 3 table structure**. Arbitrary third-party Access databases or non-SEP formats are not supported.
{% endhint %}

{% hint style="info" %}
If you regularly receive data from state authorities, keep a permanent connection to the exchange database in GeoDin and simply update the path to point to each new delivery file as it arrives.
{% endhint %}

<!-- src: transcript/2026-04-15-in-person-workshop -->
