---
description: Data checks and validations - automated rules GeoDin applies to data entry to catch errors and inconsistencies.
---

# Data Checks and Validations

GeoDin applies **automated checks** to data entered through the Data Management method, flagging missing required fields, out-of-range values, and inconsistencies between related data points.

Checks are configured per object type and per data type. Validation runs as data is entered, with results surfaced in the input forms (for example, red field outlines, warning icons, or hover tooltips explaining the violated rule). For dictionary-based fields, GeoDin verifies that entered values match the configured dictionary; for numeric fields, it enforces unit, format, and range constraints declared in the data type definition.

## Working with checks across many objects

The entry-time validation above runs object by object as you type. To check, search, replace, or calculate across a whole **query or group of objects** at once, GeoDin provides the **Data checks and calculations** method. It bundles several related functions:

- **Input control** - tests the layer data of all selected objects for syntax correctness and collects the objects with errors into a group for correction.
- **Search and Replace** - corrects codes or values across many borehole logs or general-data records (including code-aware replacement designed for coded borehole logs).
- **Data sequences: Calculating sequences** - calculates new measurement series for all selected objects.

For the full step-by-step description of the **Data checks and calculations** method, the Search-and-Replace dialogs, and the input-control syntax check, see [**Object Operations Reference**](../../navigating-the-geodin-workspace/object-types/object-operations-reference.md).

For the comprehensive object operations workflow - creating, editing, validating, importing, exporting, and reporting object data - see [**Object Operations Reference**](../../navigating-the-geodin-workspace/object-types/object-operations-reference.md).
