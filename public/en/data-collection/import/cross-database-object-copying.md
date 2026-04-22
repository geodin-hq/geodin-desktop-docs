---
description: Cross Database Object Copying
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** C (Thin (limited source material))
**Needs:** editorial review
-->

# Cross Database Object Copying

## Database Connections & File-Based Migration

Database connections are created via `Create Database Connection` — choose database type (e.g. Microsoft Access), then either link an existing file or create a new one from scratch. <!-- src: transcript/data-import-migration#database-connections-file-based-migration -->

Access database files can be created locally or on a shared network drive. <!-- src: transcript/data-import-migration#database-connections-file-based-migration -->

Existing Access databases can be added to GeoDin by drag-and-dropping the `.mdb` file into the left-hand tree — this auto-creates the connection. <!-- src: transcript/data-import-migration#database-connections-file-based-migration -->

Right-click on a database connection > `Edit Database Connection` to view or change the stored path. <!-- src: transcript/data-import-migration#database-connections-file-based-migration -->

Demo databases ship with GeoDin installations under a `demos` subfolder in the configuration folder; they appear yellow in the connection list (user-created databases appear blue). <!-- src: transcript/data-import-migration#database-connections-file-based-migration -->

gINT (`.mdb`) databases are referenced as the historical predecessor format — users migrating from gINT must use import routines rather than direct file linking. <!-- src: transcript/data-import-migration#database-connections-file-based-migration -->

## Cross-Database Object Copying & Publish/Export

Objects (boreholes) can be duplicated — creates a full copy. <!-- src: transcript/data-import-migration#cross-database-object-copying-publishexport -->

The `Publish and Export` command at the project level exports selected objects as a zip file containing a GeoDin Access database — useful for extracting a group of boreholes from an existing database. <!-- src: transcript/data-import-migration#cross-database-object-copying-publishexport -->

`Publish and Export` is also available at the individual borehole level; produces a single-borehole Access database that can be re-imported elsewhere. <!-- src: transcript/data-import-migration#cross-database-object-copying-publishexport -->

Cross-database object copying: via `Add Objects` at the project level, users can select boreholes from another (already connected) database and import them into the current project — preserves measurement data and general data. <!-- src: transcript/data-import-migration#cross-database-object-copying-publishexport -->

Options during cross-database copy include: include/exclude attached documents, include/exclude measurement values, location-only copy (just names and general data). <!-- src: transcript/data-import-migration#cross-database-object-copying-publishexport -->

Borehole log properties (layer data) can be copied from one borehole to another, even across databases, via `Copy Borehole Log` — layers are transferred but some standard-specific codes may not translate automatically. <!-- src: transcript/data-import-migration#cross-database-object-copying-publishexport -->

## Converting SEP 1 Objects to SEP 3 During Copy

When copying SEP 1 objects from one database into another using **Add Objects**, a conversion option appears at the bottom of the copy dialog: **Conversion SEP 1 → SEP 3** (German: *Konvertierung von SEP 1 nach SEP 3*).

**How to use it:**

1. Open the **Add Objects** dialog on the target project.
2. Drag the SEP 1 objects from the source database into the **List of objects**.
3. At the bottom of the dialog, check **Conversion SEP 1 → SEP 3**.
4. Choose **Copy** and confirm.

**What to check after the copy:**

GeoDin displays a protocol log on completion. Review this log carefully:

- Successfully transferred layers are listed with their mapped codes.
- Abbreviations (Kürzel) that could not be matched to a SEP 3 code are not discarded — they are written into the **comment/remarks field** (Kommentarfeld) of the target SEP 3 record for manual review.

{% hint style="warning" %}
This conversion is one-directional only: **SEP 1 → SEP 3**. There is no built-in conversion from SEP 3 back to SEP 1 in GeoDin. Always review the protocol log and the comment fields of imported objects to catch any unmatched abbreviations.
{% endhint %}

For importing SEP 3 data delivered by a state authority, see [Importing SEP 3 data via the exchange database](sep3-exchange-database.md).

<!-- src: transcript/2026-04-15-in-person-workshop -->
