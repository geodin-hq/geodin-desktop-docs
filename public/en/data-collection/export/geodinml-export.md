---
description: GeoDinML export
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# GeoDinML export

## GeoDin ML — Field-to-Office Data Flow

GeoDin ML is the file format used for data transfer between Onsite (field) and Desktop (office); Onsite has no server front-end and cannot talk directly to a GeoDin server. <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

Workflow: in Onsite, click `Export to GeoDin` (or Publish), save a GeoDin ML file, then import that file into GeoDin via the GeoDin ML import function. <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

Two export mechanisms from Onsite: <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

Only two form types currently produce GeoDin ML output: the G1 drilling form and the Step 3 form (ISO standard). <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

The picture log form does NOT produce GeoDin ML — it produces a PDF with embedded small images plus the original JPEG/PNG source files. These can be delivered via file delivery but cannot be imported into GeoDin as structured data. <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

EN ISO E2 standard is currently disabled in Onsite because of a bug in the GeoDin GeoDin ML importer specifically for E2-flavoured GeoDin ML. The form exists in both E2 and Step 3 flavours in Onsite but E2 has been temporarily hidden to prevent users from creating data they cannot import. Re-activation in Onsite is a ~5-minute turnaround once the Desktop importer is fixed and released. <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

On `Publish as Complete`, the full set of deliverables (`.GDOF`, PDF, GeoDin ML, AGS) is generated and placed in the shared delivery folder. <!-- src: transcript/data-import-migration#geodin-ml-field-to-office-data-flow -->

## File-Based Integration (GeoDin ML)

GeoDin ML is the standard file format for exchanging structured data between Onsite (field) and Desktop (office). <!-- src: transcript/api-integrations#file-based-integration-geodin-ml -->

GeoDin ML is the only server-less way to push a project list to field users — one person centrally exports a GeoDin ML file and shares it (e.g., via cloud folder) so all field users pick from the same project list. <!-- src: transcript/api-integrations#file-based-integration-geodin-ml -->

Onsite `Configuration > Integration > Project metadata` has two modes: `Manual` (user types project number freely) and GeoDin ML-based (pull-down menu listing all projects from a selected `.GeoDinml` file). <!-- src: transcript/api-integrations#file-based-integration-geodin-ml -->

GEF file format (Dutch/UK CPT standard) is supported natively as a standards-based integration path for field survey data. <!-- src: transcript/api-integrations#file-based-integration-geodin-ml -->

## Project Metadata Loading via GeoDin ML

Project metadata can be loaded into Onsite from a GeoDin ML file: in GeoDin, export all projects to GeoDin ML with "no samples, no other data, just locations", then point Onsite at that file. <!-- src: transcript/data-import-migration#project-metadata-loading-via-geodin-ml -->

In Onsite, `Configuration > Integration > Project metadata` has two modes: `Manual` (user types project number freely) and GeoDin ML-based (pull-down menu listing all projects from a selected `.GeoDinml` file). <!-- src: transcript/data-import-migration#project-metadata-loading-via-geodin-ml -->

When a GeoDin ML file is selected, Onsite auto-reads the client name and project name for each project listed. A `Reload` action re-reads the file if it has been updated in the background. <!-- src: transcript/data-import-migration#project-metadata-loading-via-geodin-ml -->

GeoDin ML is the only server-less way to push a project list to field users — the intended workflow is one person centrally exports the GeoDin ML and shares it (e.g. via cloud folder) so all field users pick from the same list. <!-- src: transcript/data-import-migration#project-metadata-loading-via-geodin-ml -->

Onsite never sanitizes data on import via GeoDin ML beyond the standard project-number file-name sanitization rules. <!-- src: transcript/data-import-migration#project-metadata-loading-via-geodin-ml -->
