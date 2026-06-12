---
description: General data entry for GeoDin objects — identifying information, location metadata, and project association.
---

# General Data

**General data** records the identifying and locational information for each object (borehole, sample point, monitoring well). Typical fields include name and short name, coordinates, elevation, project association, and any extended metadata required by the object type.

General data is entered through the **Data Management** method, on the **General Data** tab. The exact fields available depend on the object type — for example, G1 Location, AGS 4, and Geotechnical Investigation EN ISO 22475 each define their own General Data schema.

### Setting default values for new objects (Stammdatenvorgaben)

**Stammdatenvorgaben** (master data presets) allow you to pre-fill fields that are the same for all objects in a session — for example, the coordinate system, height system, client name, or drilling company — so they appear automatically when a new object is created.

**How to activate:**

1. Open the general data editor for any object (or create a temporary new object for the purpose of entering defaults).
2. In the method bar at the top right of the general data mask, click the **Stammdatenvorgaben** (master data defaults) icon to activate preset mode. A yellow indicator appears in the toolbar.
3. Fill in the fields you want to use as defaults.
4. Click the icon again to save and lock the defaults. From this point on, every new object created in this session will inherit these pre-filled values.

**Date shortcut:** In any date field within the preset, type `H.E.` and then press **Tab**. GeoDin fills in today's date. This is especially useful for fields like "Date of survey" that always default to today.

{% hint style="info" %}
Stammdatenvorgaben are stored per-user in the database table `GeoDin_ENGINEER_DEF_ENGINEER_S3_STAMM`. They persist between sessions until you change them. To clear all defaults, re-open the preset mode and delete the field values.
{% endhint %}

For the comprehensive object operations workflow — creating, editing, validating, importing, exporting, and reporting object data — see [**Object Operations Reference**](../object-types/object-operations-reference.md).
