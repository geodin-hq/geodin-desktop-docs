# Cross Section Layouts

The cross-section layouts graphic element controls how a cross-section graphic is embedded in a layout, including saving formats and document storage. For scale, axis range, labeling, and cross-section panel settings, see [Cross Section Layouts (cross-sections)](../cross-sections/cross-section-layouts.md).

## Cross-section file formats

Cross-sections can be saved in two formats:

* **GLO (GeoDin Layout)** - template only, no connected data. Use for reusable cross-section templates.
* **GGF (GeoDin Graphic Format)** - layout with connected borehole data. The cross-section can be opened later with its data intact.

For a full comparison of GLO and GGF formats, see [Layout Files and Lists](layout-files-and-lists.md).

## Storing a cross-section in the project

A GGF cross-section can be stored directly in the project's **Documents** area:

1. In the Documents branch, create a new folder.
2. Add a new document and choose the GGF file.
3. Save the file in the database, or link to an external file.

This makes the cross-section accessible to all users of the project.

## Selecting boreholes for a cross-section

The cross-section module includes a **"from the top" map view** for selecting boreholes spatially. This view is accessed from the **All Objects** branch using the **Cross Section** method. Use it to select boreholes by their geographic position before defining the line of section.

## Depth scale

The depth scale division in a cross-section can be changed - for example, from a 1 m main division to a 5 m main division. For axis range and main division configuration across all layout elements, see [Cross Section Layouts (cross-sections)](../cross-sections/cross-section-layouts.md).

***

## Working with GeoDin Onsite form layouts

The following section describes **GeoDin Onsite** form layout behavior - the Onsite mobile data collection application, not the desktop layout editor covered above.

GeoDin Onsite is a digital form-filling application. It currently ships with 10 form layouts, selected from the 150+ layouts that exist in Gaia Forms (the predecessor tool).

Form types: **G1 drilling form** (code `G1D`), **Step 3 form** (ISO standard), **picture log**, **standalone Sample Picture Log** (code `SPL`), and a combined **Drilling Report + SPL bundle** (`Dr+SPL`).

The G1 drilling form has 8 pages by default, but pages are switchable via "Show/hide pages" (menu under the logo). Users can turn pages on/off based on need - for example, switching off SPT, discontinuities, sub-samples and switching on water levels yields 5 pages.

Page order inside a form can be rearranged using up/down arrows (no drag-and-drop; legacy-style reordering).

**Form bundles** are two forms chained together as one (for example, G1 drilling form immediately followed by a sample picture log page). To the user it looks like a single form type selectable from the new form list. Once created, a bundle cannot be split.

In a Drilling Report + SPL bundle, when adding a new sample picture, Onsite does not require scanning a QR label - instead it shows the samples already defined on the drilling pages so the user selects an existing sample and attaches a picture to it.

Forms are validated via a **Validate** button (also appears as a tick icon); validation lists all missing or invalid fields.

Fields are color-coded: **red** = compulsory, **black** = optional.

Forms contain standard GeoDin tables (same layout as in GeoDin) for layer identification, samples, and other data.

Layer identification uses Munsell color chart, minor constituents, stratification, bed thickness, spacing, and similar attributes - producing standard GeoDin codes with brackets and attributes.

Standard selection: **Configuration > Integration > GeoDin** lets the user select which drilling or description standard to use. The current Onsite version includes 5 standards with their relevant description types. Once a form is started, the standard cannot be changed for that form.

Default form values (driller name, driller assistants, rig name, view name, unit system, local coordinate system EPSG code) are configured once and auto-filled into new forms.

Forms have a validation state - incomplete forms with missing required fields cannot be published as complete.
