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

***

## Reference: Plausibility definitions

<!-- src: help/H0000005624#plausibility-dialog -->
<!-- src: help/H0000008075#plausibility-dialog -->

A **plausibility** is a named rule that tests a measurement value against a logical term. Plausibilities are defined in the data type **Properties** and are evaluated in two places: as an input check while you type in the Measurement Editor, and in the plausibility report. The **Plausibility control** tab of the Measurement Editor shows the plausibility analysis for the currently checked row - see [Formulas in measurement values](../formulas/formulas-in-measurement-values.md).

### Fields of the plausibility dialog

| Field | What to enter |
|---|---|
| **Name** | A meaningful name for the rule. The name can be used in the column definitions of a report, so tie it to what the rule tests. |
| **Type of result** | Whether the tested condition being TRUE means the value is **plausible** or **implausible**. |
| **Result as** | Whether a hit is reported as an **error** or as a **notification**. |
| **Result** | The logical term that is evaluated. Use the **Build** icon to assemble the term from available fields and operators. |
| **Message text** | The text reported when the rule fires. It is used in the report column definitions, and the **Build** icon can insert dynamic content into it. |

**Type of result - worked example.** pH values above 14 are impossible, so enter the term `$WAS:PH$>14` and set the type to **implausible**: when the term is TRUE the value is greater than 14 and therefore flagged. The rule can equally be written the other way round - test `$WAS:PH$<=14` and set the type to **plausible** - with the same effect.

**Result as - what each setting does.** An implausible value classed as an **error** is prevented from being entered in the Measurement Editor: the entry is blocked until the value is corrected. A **notification** is advisory only - it tells the user the value is implausible but still accepts it. Use errors for physically impossible values and notifications for values that are merely unusual.

**Message text example:** `The value $WAS:CL$ for Chloride is not plausible because ...`

To run the calculation and plausibility check while recording or maintaining measurement values, press **Enter** after entering the value.

### Relative jumps

Relative jumps let a term refer to a *different* data record of the same field - for example, comparing today's chloride reading with the previous one.

{% hint style="warning" %}
Relative jumps are only specified and evaluated in the **plausibility report**. They produce no result in the input check in the Measurement Editor.
{% endhint %}

For field-related content the dialog offers the plain field reference, for example Chloride as `$WAS:CL$`, which uses the current value of the data field. Append a relative jump range in parentheses to address another record:

| Syntax | Record addressed |
|---|---|
| `$WAS:CL(-1)$` | The previous data record of the field |
| `$WAS:CL(-2)$` | The record before the previous one |
| `$WAS:CL(+1)$` or `$WAS:CL(1)$` | The following data record |
| `$WAS:CL(-~)$` | The first data content |
| `$WAS:CL(+~)$` or `$WAS:CL(~)$` | The last data content |

### Current minimum and maximum values of a parameter

A special parameter syntax reaches the smallest or largest value a parameter takes in the current data:

- `$Min>DAT:PARAM$` - the minimum value of parameter `PARAM` in data type `DAT`.
- `$Max>DAT:PARAM$` - the maximum value of parameter `PARAM` in data type `DAT`.

This lets a rule compare the value in the current data record against all the others:

```
$DAT:PARAM$ < $Min>DAT:PARAM$
$DAT:PARAM$ > $Max>DAT:PARAM$
```

Such a plausibility warns when the value just entered is lower, or higher, than every previous value.

### Counting records

The **Count** operator returns how many data records exist:

- `$Count>DAT:PARAM$` - the number of data records for the current measuring point in data type `DAT`.

A condition limits which records are counted:

```
$%COND[#PARAM#='xy']Count>DAT:PARAM$
```

This counts only the data records whose data field `PARAM` contains `xy`. In the condition, reference the parameter **without** the data type prefix (`DAT:`) and enclose it in `#` characters.
