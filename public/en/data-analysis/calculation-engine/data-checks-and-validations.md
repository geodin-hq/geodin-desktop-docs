---
description: Data checks and validations — automated rules GeoDin applies to data entry to catch errors and inconsistencies.
---

# Data Checks and Validations

GeoDin applies **automated checks** to data entered through the Data Management method, flagging missing required fields, out-of-range values, and inconsistencies between related data points.

Checks are configured per object type and per data type. Validation runs as data is entered, with results surfaced in the input forms (for example, red field outlines, warning icons, or hover tooltips explaining the violated rule). For dictionary-based fields, GeoDin verifies that entered values match the configured dictionary; for numeric fields, it enforces unit, format, and range constraints declared in the data type definition.

For the comprehensive object operations workflow — creating, editing, validating, importing, exporting, and reporting object data — see [**Object Operations Reference**](../../navigating-the-geodin-workspace/object-types/object-operations-reference.md).
