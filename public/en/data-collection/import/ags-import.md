---
description: Importing AGS 4.0.4 and AGS 4.1 files into GeoDin
---

# AGS Import

GeoDin's **AGS object type** mirrors the AGS group/header structure, so AGS imports come through with ground descriptions and nested measurement data already in place — there's no per-row mapping to do.

For the general import workflow that applies to General Data, Samples, and Measurements (including AGS imports into the G1 object type), see the [Import overview](../import.md#batch-import-workflow-general-samples-measurements).

## Database backend differences

- **Access (`.mdb`) databases** — GeoDin creates the AGS database structure automatically at import time. No preparation required.
- **SQL Server databases** — manually create a dummy AGS object first to prepare the database table structure, then import.

## What the AGS importer handles

- **Custom field definitions** — imported with warnings; the import still completes successfully.
- **Nested measurement data** — sub-types like SCPG and SCPT are imported in a single procedure because the data is self-contained in the AGS group format. This advantage is **not** available for G1 object type imports.
- **Supported export formats** — AGS 4.0.4 and AGS 4.1, via `Publish and Export > AGS export`. AGS export lets the user choose which groups to export, then click **Execute**.

## Working with AGS files

Most of the user effort with AGS is upstream — getting the AGS file format correct. Once the file is well-formed, GeoDin handles the import end-to-end.

<!-- src: transcript/data-import-migration#ags-format-support -->
