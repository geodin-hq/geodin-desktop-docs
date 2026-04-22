---
description: Cross Section Layouts
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Cross Section Layouts

## GeoDin Onsite Form Layouts

Onsite is fundamentally "a form filler" / digital form-filling application. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Onsite currently ships with 10 form layouts, selected from the 150+ layouts that exist in Gaia Forms (the predecessor tool). <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Form types: **G1 drilling form** (code `G1D`), **Step 3 form** (ISO standard), **picture log**, **standalone Sample Picture Log** (code `SPL`), and a combined **Drilling Report + SPL bundle** (`Dr+SPL`). <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

The G1 drilling form has 8 pages by default, but pages are switchable via "Show/hide pages" (menu under the logo). Users can turn pages on/off based on need (e.g., switch off SPT, discontinuities, sub-samples; switch on water levels). Example: turning off SPT/discontinuities/sub-samples and turning on water levels yields 5 pages. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Page order inside a form can be rearranged using up/down arrows (no drag-and-drop; legacy-style reordering). <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

**Form bundles** concept: a bundle is two forms chained together as one (e.g., G1 drilling form immediately followed by a sample picture log page). To the user it looks like a single form type selectable from the new form list. Once created, a bundle cannot be split. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

In a Drilling Report + SPL bundle, when adding a new sample picture, Onsite does NOT require scanning a QR label — instead it shows the samples already defined on the drilling pages so the user selects an existing sample and attaches a picture to it. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Forms are validated via a Validate button (also appears as a tick icon); validation lists all missing/invalid fields. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Fields are color-coded: red = compulsory, black = optional. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Forms contain standard GeoDin tables (same layout as in GeoDin) for layer identification, samples, etc. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Layer identification uses Munsell color chart, minor constituents, stratification, bed thickness, spacing, etc. — producing standard GeoDin codes with brackets and attributes. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Standard selection: `Configuration > Integration > GeoDin` lets the user select which drilling/description standard to use. The current Onsite version includes 5 standards with their relevant description types. Once a form is started, the standard cannot be changed for that form. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Default form values (driller name, driller assistants, rig name, view name, unit system, local coordinate system EPSG code) are configured once and auto-filled into new forms. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Forms have a validation state — incomplete forms (missing required fields) cannot be published as complete. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

Documentation gap: there is no proper Onsite manual yet; two layers of documentation are recommended in the future — (1) general mechanics (publish vs export, incomplete vs complete, file delivery, shelves analogy), (2) per-form domain documentation (what each field means on the drilling form, how to do layer identification, GeoDin code system). A first-steps tutorial is also planned. <!-- src: transcript/forms-templates-customization#geodin-onsite-form-layouts -->

## Cross-Section Layouts

Cross-section creation workflow (All Objects branch > Cross Section method): <!-- src: transcript/forms-templates-customization#cross-section-layouts -->

Cross-section depth scale divisions can be changed (e.g., 1 m > 5 m main division). <!-- src: transcript/forms-templates-customization#cross-section-layouts -->

Cross-sections can be saved as either GLO (template) or GGF (with connected data). <!-- src: transcript/forms-templates-customization#cross-section-layouts -->

GGF cross-sections are stored as graphic files and can be opened later with their data intact. <!-- src: transcript/forms-templates-customization#cross-section-layouts -->

Cross-sections can be stored in the project's Documents area (New Folder > New Document > choose GGF file > save in database OR link to external file). <!-- src: transcript/forms-templates-customization#cross-section-layouts -->

Cross-section method has a "from the top" map view for selecting boreholes spatially. <!-- src: transcript/forms-templates-customization#cross-section-layouts -->
