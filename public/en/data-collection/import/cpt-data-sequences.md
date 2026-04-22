---
description: CPT Data Sequences
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# CPT Data Sequences

## CPT & Data Sequence Import (GEF, ASCII, Custom Filters)

GeoDin has a dedicated ASCII CPT import filter built for historic company use. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

For generic depth-sounding data, users should use the "General Data" import section within Data Sequences (not the ASCII-specific CPT importer). <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

CSV CPT import is NOT handled by the CPT-specific importer — users must use the generic Data Sequences import. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

GEF file format is supported natively for CPT data (GEF is a standard format used in the Netherlands and UK). <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

Import filters for Data Sequences are user-created structures defining: depth column index, data-columns-begin column, number of data columns, decimal places, decimal delimiter, field separator, unit of depth column, and series name for each data column. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

The Import Filter dialog is opened via `Import > Import Filter > New Import Filter`. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

Filters are stored in the user's syslib configuration folder in a file called `Sony_Filter.sys` — this file can be shared between users to distribute filter configurations. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

The Data Sequences import has a constraint: data columns MUST be located to the right of the depth column in the source file. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

The Data Sequences import has NO option to skip/exclude specific columns during import — all columns right of depth are imported; users must delete unwanted series manually after import. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

Users can build their own custom import filters for arbitrary depth-indexed data such as "measurement while drilling" (penetration speed, tool pressure, injection pressure, torque, RPM). <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

Data sequence series can be re-exported as CSV files — useful if users import, modify, and re-export. <!-- src: transcript/data-import-migration#cpt-data-sequence-import-gef-ascii-custom-filters -->

## GeoDin ML — Field-to-Office Data Flow

GeoDin ML is the file format used for data transfer between Onsite (field) and Desktop (office); Onsite has no server front-end and cannot talk directly to a GeoDin server. <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

Workflow: in Onsite, click `Export to GeoDin` (or Publish), save a GeoDin ML file, then import that file into GeoDin via the GeoDin ML import function. <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

Two export mechanisms from Onsite: <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

Only two form types currently produce GeoDin ML output: the G1 drilling form and the Step 3 form (ISO standard). <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

The picture log form does NOT produce GeoDin ML — it produces a PDF with embedded small images plus the original JPEG/PNG source files. These can be delivered via file delivery but cannot be imported into GeoDin as structured data. <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

EN ISO E2 standard is currently disabled in Onsite because of a bug in the GeoDin GeoDin ML importer specifically for E2-flavoured GeoDin ML. The form exists in both E2 and Step 3 flavours in Onsite but E2 has been temporarily hidden to prevent users from creating data they cannot import. Re-activation in Onsite is a ~5-minute turnaround once the Desktop importer is fixed and released. <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

On `Publish as Complete`, the full set of deliverables (`.GDOF`, PDF, GeoDin ML, AGS) is generated and placed in the shared delivery folder. <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

## gINT Migration & Layer Data Import Gap

gINT users historically populated layer data in Excel and imported to gINT — this Excel-based layer import is an explicit gap in GeoDin for the G1/Location object type and is a flagged critical feature request. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->

The gINT `.mdb` object type was mainly for boreholes and CPT locations — GeoDin's G1 object type was built to mimic this workflow. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->

GeoDin's AGS object type was built to mimic AGS group/header structure; importing AGS files "saves you this part of the job" because ground descriptions come through the importer automatically, unlike the manual-entry workflow required for G1 with non-AGS data. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->

The layer-data import gap is acknowledged internally as "a topic that's been discussed" and "a felt issue we need to deal with at some point"; the commercial team tracks feature requests internally and ranks this one near the top. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->
