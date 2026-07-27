---
description: Text macro syntax, dynamic fields, conditional separators, and translation support in GeoDin reports
---

# Text Macros in Reports

Text macros are GeoDin's mechanism for pulling live database values into reports. They appear in headers, footers, variable text elements, report column headings, and labels inside borehole log elements. This page covers macro syntax and the practical patterns that come up when building report templates.

For the broader template structure (layouts, snippets, report elements), see [Report Templates](report-templates.md). For borehole-log-specific layouts and cross-section layouts, see [Borehole Log Reports](borehole-log-reports.md) and [Cross-Section Reports](cross-section-reports.md).

## Static text vs. dynamic macros

- **Static text** - placed anywhere on a template; the same text prints on every output.
- **Dynamic macros** - placed inside an object frame, reference a GeoDin parameter and resolve at render time. For example, the `location_name` macro pulls the current borehole name dynamically.

## Macro syntax

Macros are delimited with `$` on both sides:

- `$LONGNAME$` - long location name
- `$%PRNPAGE$` - page print number
- `$ZCOORDE$` - Z coordinate (elevation)

Macros can reference parameters from any table - general data, sample tables, measurement tables, and data sequences.

### Concatenation

Multiple parameters can be concatenated into a single string. Example:

```
Sample $sample_reference$ penetration from $depth_from$ to $depth_to$ meters
```

### Conditional separators

Square brackets `[ ]` inside a macro act as conditional separators: the bracketed content is only rendered if the macro inside has a value. This avoids stray commas and orphan punctuation when fields are empty.

### Calculated parameters

The Build dialog can include calculated parameters - for example, layer thickness derived from top and base depths - alongside raw database fields.

## Display options

When configuring a text-macro element you can choose:

- **Show depth** - include the depth value of the referenced row.
- **Show layer data** - include layer attributes alongside the macro.
- **Orientation** - text orientation on the page.

The **coding / norm / user** setting controls which descriptor source feeds the macro. For G1 these are mostly equivalent; the **user** option allows arbitrary plain text mixed with macros.

For G1 ground description specifically, most descriptive content sits inside the single `geological description` macro - unlike other object types which split the description across separate petrography and colour macros.

## Translation support

A single layout can hold multiple translations. Switching the file language under `File > Language` prints the same template in different languages without modification.

## Querying for macro data sources

Text macros can pull from query results, not just direct table fields. Build a SQL query that joins tables across different tests - for example, "show water content only where unit weight is non-zero" - and use the query result as the data source for a template element.

***

## Reference: Format instructions

<!-- src: help/H0000002529#format-instructions -->

Beside the field name, a macro can carry format instructions that control how the field content is converted and rendered. This page is the canonical home for that reference; the layout-side elements that consume macros are described in [Text Macros and Variable Text](../data-visualization/layouts/text-macros-and-variable-text.md).

### Syntax

```
$[T1]VARNAME@F[T2]$
```

| Part | Meaning |
|---|---|
| `T1` | Any text. It is only output if the data field content is not empty. |
| `VARNAME` | Data field name. |
| `@` | Divider between the data field name and the format instructions. |
| `F` | Format instructions (see below). |
| `T2` | Any text. It is only output if the data field content is not empty. |

Everything except `VARNAME` is optional. This is the mechanism behind the conditional separators described under [Macro syntax](#macro-syntax): the bracketed prefix and suffix disappear together with an empty field.

**Example:** `Test: $[Depth below surface ]DEPTH@8.2[m]$`

The depth is read from the data field `DEPTH` as a maximum 8-figure number with exactly 2 decimal places and, if the field content was not empty, wrapped with "Depth below surface" in front and "m" behind:

- With content: `Test: Depth below surface 3,20m`
- With an empty data field: `Test:`

All data fields of the data set can be referenced in one instruction, and the same field can be referenced more than once:

```
Petrography with the depth $DEPTH$m is $PETRO$ (coded: $PETRO@C$)
```

Result: `Petrography with the depth 3,20m is fine sand (coded: fs)`

Format instructions can be combined, and their order does not matter: `$Data_field@.1+ds.$` applied to `8,23` gives `+8.2`.

### Numeric fields

| Instruction | Effect | Example |
|---|---|---|
| `@.x` | Number of decimal places. Overrides the decimal places defined for the parameter in the database. | `8.23` -> `$Data_field@.1$` -> `8.2` |
| `@cutdec` | Removes non-significant decimal places. | `8,20` -> `8,2`; `3,000` -> `3` |
| `@dsx` | Sets the decimal separator (default comes from the Windows regional settings). | `8.23` -> `$Data_field@ds,$` -> `8,23` |
| `@e` | Scientific notation. | `112.20` -> `1.122E+2` |
| `@a` | Recalculates a depth to an absolute value using the borehole elevation (`ZCOORDB`). Only meaningful for fields holding height information. | `1.50` -> `8.50` when `ZCOORDB = 10.00` |
| `@p` | Always shows the content as a positive value, even when negative in the database. | `-8.23` -> `8.23` |
| `@+` | Adds a plus sign when the content is positive or zero. | `8.23` -> `+8.23` |
| `@*Factor` | Multiplies the content by a factor. | `8.23` -> `$Data_field@*2$` -> `16.46` |
| `@grd` | Transforms decimal degrees into degrees, minutes, seconds. | `123,456377` -> `123°27'22",9572` |
| `@sigXX` | Restricts the output to XX significant figures (2 to 15). | `1234,56` -> `$Data_field@sig4$` -> `1235,00` |
| `@B(Factor)` | For values below the detection limit (displayed as `<5`): strips the `<` and `-` symbols and multiplies by the factor, so a fraction of the limit can be used in calculations. | `<5` -> `$PARAM@B(0.5)$` -> `2,5` |

Any format definition applied to a field defined as scientific notation returns it to standard numeric behavior: `1,122E+2` -> `$Data_Field@.2$` -> `112,20`.

### Character fields

If the data field has no dictionary, format information has no effect. With a dictionary available:

| Instruction | Effect |
|---|---|
| `@T` | The data field content is retranslated through the dictionary. |
| `@C` | The data field content is used directly (the coded form). |
| `@R` | The content is transferred into the key of the relevant fill-pattern correlation table. |
| `@K` | Only the text in inverted commas is used. |

If the format instruction is missing, the content is retranslated when a dictionary exists, and used directly when it does not.

For the content `fS,ms4,'Concrete residuals'`:

```
@T  Fine sand, very sandy (medium), Concrete residuals
@C  fS, ms4, 'Concrete residuals'
@R  fS, ms, Concrete residuals
@K  Concrete residuals
```

For `@T` to `@K`, separators to be removed from the result text can be appended. From the content `sa,cl2`, `@R` gives `sa, cl'` while `@R,-+` gives `sacl'` - the separators needed during data entry are stripped. The characters `,-+;():` can be excluded this way. Numeric format instructions can additionally be applied to character fields when the content is a number.

**String functions**

| Instruction | Effect | Example |
|---|---|---|
| `@Copy(Start,End)` | Outputs part of the string. | `$COMMENTARY@Copy(1,50)[...]$` outputs the first 49 characters followed by three dots when the field has content - useful for long memo fields. |
| `@PadLeft(Length,character)` | Extends the string to the given length with the given character. | `$ARNUM@PadLeft(4,0)$` turns `4` into `0004`. |
| `@Replace('from','to')` | Replaces part of the string. | `$PRINSTYPE@Replace('SILT','silt')$` |
| `@Replace('CHR13CHR10','...')` | Replaces a line break. | `$GEOLDESC@Replace('CHR13CHR10','')$` collapses a description onto one line; `$GEOLDESC@Replace('CHR13CHR10',' ')$` replaces each break with a space. |

### Date fields

Dates are formatted with the symbols `M`, `D` and `Y`:

```
dd.mm.yyyy    -> 01.03.1996
d mmmm yyyy   -> 1 March 1996
```

### Units

Parameter units can be printed as unit characters (`~US`) or as unit text (`~UL`):

```
$S3STAMM.ZCOORDE~US$  -> m
$S3STAMM.ZCOORDE~UL$  -> meter
```

Unit systems can be switched dynamically (Anglo-American, metric, or database units). To have a layout print the currently valid unit, use:

```
$Parameter[ <#MesUnit FieldName= Parameter>]$
```

**Example:** `$ZCOORDE[ <#MesUnit FieldName= ZCOORDE>]$`
