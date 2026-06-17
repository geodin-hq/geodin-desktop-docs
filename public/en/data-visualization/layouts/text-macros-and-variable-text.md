---
description: How to use the Text element and Variable Text element in GeoDin layouts, with macro syntax and display options
---

# Text Macros and Variable Text

The **Text element** places static or fixed text anywhere on a layout. The **Variable Text element** places dynamic text that resolves live database values at render time - used for headers, footers, titles, and any labeled field that changes per object. Both elements are placed inside or alongside an object frame in the layout editor.

For the macro syntax reference (delimiters, concatenation, conditional separators, Build dialog, coding/norm/user modes, translation), see [Text Macros in Reports](../../reporting/text-macros-in-reports.md).

## Adding a Variable Text element

Add a **Variable Text element** to the layout (for general steps on adding elements, see [Layout Editor Basics](layout-editor-basics.md) and [Creating Custom Layouts](../creating-custom-layouts.md)).

Once the element is placed, configure it:

1. Click the **Build** button in the element properties to open the macro editor.
2. Select macros from the available categories - **General parameters**, **Samples**, **Layer data**, and others. Use the **search bar** to find a specific macro by name.
3. Set the display options: **Show depth**, **Show layer data**, **Orientation**.

Common macros used in Variable Text elements: long name (full location name), project name, driller, borehole, EPSG code, X coordinate, Y coordinate.

## Optional settings

* **Coding / Norm / User mode** - controls which descriptor source feeds the macro. For G1 object types these are mostly equivalent; the **User** option allows arbitrary plain text mixed with macros.
* **Static text fields** - the plain **Text element** places fixed label text anywhere on a layout; it does not resolve database values.

***

## Working with text macros

Dynamic text fields resolve GeoDin parameters at render time. A macro placed inside an object frame references the object currently bound to that frame - for example, `$location_name$` pulls the current borehole name dynamically.

Macros can reference parameters from any table - general data, sample table, measurement tables, data sequences. Multiple parameters can be concatenated into a single string, for example to build a dynamic caption like "Sample `$sample_reference$` penetration from `$depth_from$` to `$depth_to$` meters".

Square brackets `[ ]` inside a macro act as conditional separators: the bracketed content is only rendered if the macro inside has a value, avoiding stray commas when fields are empty.

The **Build** button opens the macro editor, which also supports calculated parameters - for example, layer thickness derived from top and base depths.

**Translation support:** a single layout can hold multiple translations. Switching the file language under **File > Language** prints the same template in different languages without modification.

***

## Reference: Text element

The **Text element** displays static content - the same text on every output. It can be placed anywhere on a layout, including outside object frames. For shared element properties (element name, drawing layer, z-order, font, line, and fill properties), see [Element Properties](element-properties.md).

## Reference: Variable Text element

The **Variable Text element** displays dynamic content resolved from the GeoDin database at render time. It is typically used for headers, footers, and labeled fields that change per object.

| Property | Description |
|---|---|
| **Build button** | Opens the macro editor. Categories available: General parameters, Samples, Layer data, and more. Use the search bar to find macros by name. |
| **Show depth** | Includes the depth value of the referenced row in the rendered text. |
| **Show layer data** | Includes layer attributes alongside the macro value. |
| **Orientation** | Sets text orientation on the layout. |
| **Coding / Norm / User** | Controls the descriptor source. **User** allows custom plain text combined with macros. |

Macro syntax - delimiters (`$...$`), concatenation, conditional separators (`[...]`), and the full list of available parameters - is documented in [Text Macros in Reports](../../reporting/text-macros-in-reports.md).

## Reference: Fill Color and Transparency

### Color / Transparency

Controls the fill color and transparency for fill patterns used in layout elements.
