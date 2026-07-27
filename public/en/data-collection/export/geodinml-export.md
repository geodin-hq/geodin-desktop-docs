---
description: Export GeoDinML from GeoDin and GeoDin Onsite, and configure the XML export templates and elements that shape any XML output.
---

# GeoDinML and XML export templates

**GeoDinML** is GeoDin's structured data exchange format - what it is and how the field-to-office bridge works is defined on [GeoDinML Import](../import/geodin-ml-import.md), its canonical page.

This page covers the **export** side - generating GeoDinML files from Desktop and Onsite. For what to do with the file on the receiving end, the round-trip workflow, and which Onsite forms can produce GeoDinML, see [GeoDinML Import](../import/geodin-ml-import.md).

GeoDinML and every other XML output GeoDin can write are produced by **XML templates**. A template describes one exportable XML document format: which object type it exports, what the output file is called, and - element by element - what the document contains. The reference sections at the end of this page describe those template settings and are the target of the *Settings for XML templates* links elsewhere in the documentation.

## Exporting from GeoDin

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

***

## Reference: XML export templates

<!-- src: help/H0000005510#xml-templates-list -->

XML templates are held in an **XML templates** list in the GeoDin configuration. Each template in the list appears by its name in the tree on the left, and every template carries its own settings, its own element structure, and optionally its own code list database. Templates are added, duplicated, deleted, and reordered with the standard list toolbar described under [Managing condition lists](../export.md).

Once defined, a template is offered as one of the available formats when a user runs the **XML export** method from the GeoDin object manager - see [XML export](../../navigating-the-geodin-workspace/object-types/object-operations-reference.md#xml-export). During an export, one XML document is created per exported GeoDin object, based on the selected template.

### Template settings

<!-- src: help/H0000005547#xml-template -->

| Setting | What it does |
|---|---|
| **Name** | Display name of the template, shown in the configuration tree and in the format list at export time. |
| **Object type** | The object type whose objects this template exports. |
| **File extension** | Extension given to the generated file, for example `xml`, `kml`, `wl`, or `gml`. |
| **Post processing** | Optional stylesheet applied to the generated XML. Use the **<...>** button to select the stylesheet file. |
| **Write BOM (Byte Order Marker)** | Writes a byte order marker at the start of the file. Decide this per output format. |
| **Description** | Free text describing the content or intended use of the template. It is shown at export time, so it is the main way users tell several templates apart. |

{% hint style="warning" %}
Enter the file extension **without** a leading dot - `xml`, not `.xml`.
{% endhint %}

A template can be refined further by two subordinate nodes:

- **Code list database** - the Access database and mapping table used by code transformations. Its properties are documented under [Code transformation for XML/dictionary export](../../configuration/dictionaries.md#reference-code-transformation-for-xml-dictionary-export).
- **Element** - the XML elements that make up the document, described below.

### Post processing with a stylesheet

Post processing applies an XSL transformation (XSLT) to the generated XML. Because the stylesheet controls the final output, a template can produce something that is no longer XML at all - a plain text file, for example.

**Example: file extension `wl` for SKUA-GOCAD.** The template sets `wl` as the file extension and stores a text-output stylesheet under **post processing**. The export therefore writes a `.wl` text document that SKUA-GOCAD can read, even though the template itself is an XML template.

## Reference: XML elements

<!-- src: help/H0000005552#element -->

Elements define what the exported document actually contains. Each element in a template's element list produces one XML element in the output, and elements can be nested to any depth.

### XML tag

The **XML tag** is the element name written to the document. Entering `shortName` in the XML tag field produces:

```xml
<shortName></shortName>
```

### Text

**Text** defines a fixed text for the element, used for the parts of the document that do not vary with the exported data. An element with the XML tag `Firma` and the text `Drill and good` produces:

```xml
<Firma>Drill and good</Firma>
```

### Sub-elements

An element can have any number of sub-elements. Add them as further entries in the element's own list. An element `Firma` with the sub-elements `Firmenname` (text `Drill and good`), `PLZ` (text `12345`) and `Ort` (text `Oberberg`) produces:

```xml
<Firma>
  <Firmenname>Drill and good</Firmenname>
  <PLZ>12345</PLZ>
  <Ort>Oberberg</Ort>
</Firma>
```

### Attributes

<!-- src: help/H0000005554#attribute-list -->

Any number of XML attributes can be defined on an element. Attributes are maintained as a list on the element and use the same list toolbar as every other GeoDin list - see [Managing condition lists](../export.md).

### Transformations

<!-- src: help/H0000005561#transformation-types -->

A transformation supplies the element's text from GeoDin data instead of from a fixed string. Each element takes one transformation; the transformation determines which data is read and how it is converted. The general-purpose transformations are:

- **none** - no transformation is performed and the element keeps its fixed text. This is the default for every new element.
- **Generate subnode** - turns the element into a generator: one sub-element is written per record in a source table, so the sub-element can appear many times in the document. The **Data records available** option suppresses the node and all its sub-nodes when the exported object has no records in that table.
- **Generate subnotes (Layer)** - supplies layer data that is not held in the standard GeoDin table structure, for example sub-strata or several stratification versions on the same object. See [Generate subnotes (Layer)](../../configuration/object-types-management.md#generate-subnotes-layer).
- **Components** - supplies sub-layers or components from layer data that cannot be mapped directly to the GeoDin table structure; the layer data is loaded per object and classified into main and sub-layers.
- **Generate sub-nodes (piezometers)** - supplies pipe tours from the well extension data, sorted by their tour IDs.
- **Generate sub-nodes (casing)** - supplies well design information such as casing from the extension data, assigned to the matching tour ID.
- **Without code transformation** - reads the element content straight from GeoDin tables or calculated variables. Takes a **Macro** (for example `{$SHORTNAME$}` or `{$SHORTNAME$|$LONGNAME$}`) and an optional boolean **Condition** (for example `$ZCOORDE$>100`; text comparisons go in single quotes, as in `'$SHORTNAME$'<>''`).
- **With code transformation** - reads the content the same way but maps the stored code to a target code first. See [Code transformation for XML/dictionary export](../../configuration/dictionaries.md#reference-code-transformation-for-xml-dictionary-export).
- **With layer queries** - reads a source field of the layer data table and interprets its content through layer queries.
- **Transform coordinates** - converts the object's coordinates into geo-coordinates for the output. Set the source **EPSG code** as a fixed value (for example `31867`) or a field macro (for example `$EPSG@C$`), then name the macros that yield the X, Y, and Z coordinates. The Z macro is optional - without it GeoDin transforms in 2D.
- **First applicable genetic term** - splits the recorded genetic components, compares them against a referenced key list, and returns the first match as the element content.

Additional generated-subnode transformations exist for German state-authority formats.
