---
description: Well design data - casing, screens, backfill, and piezometer installation details for monitoring wells.
---

# Well Design Data

**Well design data** records the physical construction of a monitoring well: hole diameter, casing diameters and depths, filter and screen positions, backfill materials, and any special features such as piezometer boxes.

Well design data is entered through the **Data Management** method, on the **Well Design Data** tab. The schema depends on the object type - for example, AGS 4 supports a structured well design with HDIA, FLSH, BKFL, PIPE, and FILT groups; EN ISO 22475 uses E2WDCAS, E2WDFILD, E2WDBCKF and related tables.

Filters created in the well design table also generate measurement points of the type **Filter**, which is how groundwater measurement data attaches to the well - see [Working with Measurement Data](../measurement-values/working-with-measurement-data.md).

## Exporting well design data

Well design data leaves GeoDin as part of the object, not as a separate export. Two routes matter in practice:

- **XML export.** The **XML export** method (under **Publish and Export** at object nodes, queries and groups) writes one XML document per object using a configurable template, so the casing, screen and backfill tables are mapped into the target schema. It can be driven interactively or unattended from an export configuration `.INI` file - see [Object Operations Reference > XML export](../object-types/object-operations-reference.md#xml-export) for the method and the full `[PARAMS]` parameter reference.
- **Template definition.** Which well design tables and fields appear in the XML output, and under which element names, is decided in the XML export template - see [GeoDinML and XML export templates](../../data-collection/export/geodinml-export.md).

For the comprehensive object operations workflow - creating, editing, validating, importing, exporting, and reporting object data - see [**Object Operations Reference**](../object-types/object-operations-reference.md).
