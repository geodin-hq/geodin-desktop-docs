---
description: Text macro syntax, dynamic fields, conditional separators, and translation support in GeoDin reports
---

# Text Macros in Reports

Text macros are GeoDin's mechanism for pulling live database values into reports. They appear in headers, footers, variable text elements, report column headings, and labels inside borehole log elements. This page covers macro syntax and the practical patterns that come up when building report templates.

For the broader template structure (layouts, snippets, report elements), see [Report Templates](report-templates.md). For borehole-log-specific layouts and cross-section layouts, see [Borehole Log Reports](borehole-log-reports.md) and [Cross-Section Reports](cross-section-reports.md).

## Static text vs. dynamic macros

- **Static text** — placed anywhere on a template; the same text prints on every output.
- **Dynamic macros** — placed inside an object frame, reference a GeoDin parameter and resolve at render time. For example, the `location_name` macro pulls the current borehole name dynamically.

## Macro syntax

Macros are delimited with `$` on both sides:

- `$LONGNAME$` — long location name
- `$%PRNPAGE$` — page print number
- `$ZCOORDE$` — Z coordinate (elevation)

Macros can reference parameters from any table — general data, sample tables, measurement tables, and data sequences.

### Concatenation

Multiple parameters can be concatenated into a single string. Example:

```
Sample $sample_reference$ penetration from $depth_from$ to $depth_to$ meters
```

### Conditional separators

Square brackets `[ ]` inside a macro act as conditional separators: the bracketed content is only rendered if the macro inside has a value. This avoids stray commas and orphan punctuation when fields are empty.

### Calculated parameters

The Build dialog can include calculated parameters — for example, layer thickness derived from top and base depths — alongside raw database fields.

<!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

## Display options

When configuring a text-macro element you can choose:

- **Show depth** — include the depth value of the referenced row.
- **Show layer data** — include layer attributes alongside the macro.
- **Orientation** — text orientation on the page.

The **coding / norm / user** setting controls which descriptor source feeds the macro. For G1 these are mostly equivalent; the **user** option allows arbitrary plain text mixed with macros.

For G1 ground description specifically, most descriptive content sits inside the single `geological description` macro — unlike other object types which split the description across separate petrography and colour macros.

## Translation support

A single layout can hold multiple translations. Switching the file language under `File > Language` prints the same template in different languages without modification.

## Querying for macro data sources

Text macros can pull from query results, not just direct table fields. Build a SQL query that joins tables across different tests — for example, "show water content only where unit weight is non-zero" — and use the query result as the data source for a template element.
