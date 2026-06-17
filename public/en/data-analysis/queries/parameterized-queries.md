---
description: Parameterized queries - queries with placeholders that prompt for values at execution time.
---

# Parameterized Queries

**Parameterized queries** use placeholder variables that GeoDin prompts for when the query runs. They let one query template serve many specific filters (e.g. "find objects in project ?ProjectID with depth > ?MinDepth").

Parameters are defined in the Query Builder with a name, type, and optional default value. At runtime, GeoDin shows a dialog listing each parameter and capturing the user's input before executing the query.

## Using result fields for Shape export

The **Result fields (Export)** node in the query wizard determines which data fields are included in the attribute table when the query result is exported as a Shape file.

To enable Shape export of measurement values (e.g. chloride concentrations):

{% stepper %}
{% step %}
#### Step 1: Open the display fields step

In the query wizard, go to the **Set display fields** step.
{% endstep %}

{% step %}
#### Step 2: Add the parameter fields

Drag the desired parameter fields (e.g. `GWC.CHLORIDE`) onto the **Result fields (Export)** node.
{% endstep %}

{% step %}
#### Step 3: Save the query

Save the query. In the Maps module, the query layer will now expose these fields for labelling, interpolation, and Shape export.
{% endstep %}
{% endstepper %}

Without result fields, the Shape export contains only geometry and the object ID. Adding measurement parameters here is the prerequisite for generating interpolation maps or contour layers from query results.

{% hint style="info" %}
Queries on the **Measurement Points** branch work the same way - result fields defined there are exported alongside the measurement point geometry.
{% endhint %}

For the comprehensive reference - full syntax, all options, edge cases - see [**Creating Queries**](creating-queries.md) (long-form) and [**Query Builder Reference**](query-builder-reference.md).
