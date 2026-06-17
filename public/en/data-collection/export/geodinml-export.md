---
description: Exporting GeoDinML files from GeoDin Desktop and GeoDin Onsite
---

# GeoDinML Export

**GeoDinML** is GeoDin's structured data exchange format. It is the bridge between GeoDin Onsite (field) and GeoDin Desktop (office), and it is also the way to push a centralised project list to field users.

This page covers the **export** side - generating GeoDinML files from Desktop and Onsite. For what to do with the file on the receiving end, the round-trip workflow, and which Onsite forms can produce GeoDinML, see [GeoDinML Import](../import/geodin-ml-import.md).

## Exporting from GeoDin Desktop

From Desktop you can export GeoDinML at two granularities:

- **Full project export** - every location, with or without samples and measurement data.
- **Project-list-only export** - a "no samples, no other data, just locations" file used to push project metadata to Onsite.

Both run through the standard export entry point in Desktop.

## Exporting from GeoDin Onsite

GeoDin Onsite produces GeoDinML at the form level. Two relevant actions:

- **Export to GeoDin** (or **Publish**) - writes a GeoDinML file containing the current form's data.
- **Publish as Complete** - writes the full deliverable set (`.GDOF`, PDF, GeoDinML, AGS) to the configured shared delivery folder.

For the form-level constraints (which forms produce GeoDinML, which produce only PDF, the temporarily-disabled E2 standard), see [GeoDinML Import - Which Onsite forms produce GeoDinML](../import/geodin-ml-import.md#which-onsite-forms-produce-geodinml).

## File-based integration to Onsite

GeoDinML is the only server-less way to push a project list from Desktop to field users: one person centrally exports the project list, shares the file (e.g. via a cloud folder), and all field users see the same canonical projects.
