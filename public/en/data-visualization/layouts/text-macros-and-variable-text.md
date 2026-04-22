---
description: Text Macros and Variable Text
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** C (Thin (limited source material))
**Needs:** editorial review
-->

# Text Macros and Variable Text

## Text Macros & Variable Text

Dynamic text fields (macros) can be placed inside the object frame and reference GeoDin parameters — e.g., `location_name` macro pulls the current borehole name dynamically. <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Macros use `$parameter$` syntax (begin and end with `$`). <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Macros can reference parameters from any table — general data, sample table, measurement tables, data sequences. <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Macros can concatenate multiple parameters into one string, e.g., build a dynamic caption like "Sample [sample_reference] penetration from X to Y meters". <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Brackets in text macros `[, ]` (comma-space inside brackets) are conditional separators: the bracketed separator is only rendered if the macro inside has a value, avoiding stray commas. <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Text macro Build button opens the macro editor and supports calculated parameters (e.g., layer thickness). <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Text macro options: show depth, show layer data, orientation. <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Text macro "coding/norm/user" options: for G1 these are mostly equivalent; "user" allows custom plain text combined with macros. <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

**Variable Text element**: used for dynamic header/footer text; Build button > select macros (General parameters, Samples, Layer data, etc.). <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Common macros in Variable Text: long name (full location name), project name, driller, borehole, EPSG code, X coordinate, Y coordinate. <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Macro search bar in the Build dialog speeds up finding specific macros. <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Translation support in text macros: a layout can hold multiple translations; the user switches file language in the File menu to print the same template in different languages (e.g., German and English). <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

Static text fields can be placed anywhere on a template (fixed label text). <!-- src: transcript/forms-templates-customization#text-macros-variable-text -->

---

## Reference: Fill Color and Transparency

<!-- src: help/05/612 -->

### Color / Transparency

Controls the fill color and transparency for fill patterns used in layout elements:

- **Default color** — The background color for a fill pattern is taken from the fill pattern table by default.
- **User defined** — Select this option to override the default and choose a custom color for the area fill.
- **Transparent fill** — Allows overlaying filled areas with a transparent fill pattern so underlying elements remain visible. Note: not all print output devices support transparency.
- **Line thickness** — Adjustable only for vector fill patterns; affects print output only. Changing this setting has no visible effect on the screen.
