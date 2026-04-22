---
description: How to work with report templates, layout snippets, report elements, and text macros in GeoDin
---

<!--
**Content status:** Polished from product documentation
**Source quality:** A (Help + Transcripts)
**Needs:** screenshots, editorial review
-->

# Report Templates

GeoDin ships with pre-built report templates organized by object type. You can customize these templates or create new ones from scratch using the layout editor.

## Template basics

Templates are accessed via the **Layout** section in the Graphic Printing and Editing method. Default layouts ship in `GeoDin\Layouts\`, organized by object type — for example, G1 includes borehole logs, stiff/parameter layouts, water content vs. depth, and Atterberg limits charts. <!-- src: transcript/reporting-exports#report-templates-layout-snippets -->

Users can add custom layout folders via `Available Layouts > + button > browse to folder` (e.g., a network share for team-wide templates). <!-- src: transcript/reporting-exports#report-templates-layout-snippets -->

### File formats

Templates can be saved in two formats: <!-- src: transcript/reporting-exports#report-templates-layout-snippets -->

- **GLO (GeoDin Layout)** — template only, no data connection. Reusable across projects. Only GLO files appear in the Available Layouts overview.
- **GGF (GeoDin Graphic Format)** — layout with connected data (e.g., a specific cross-section with 10 boreholes). Can be reopened by drag-and-dropping into GeoDin.

Save as GLO for reusable templates; save as GGF to preserve a specific graphic with its connected objects.

{% hint style="warning" %}
When editing a default layout, always use `File > Save As` (never Save) to avoid overwriting the shipped default. Create a folder like `[YourCompany]_Layouts` and copy defaults there before editing. If a default is accidentally overwritten, there is no built-in reset — you must request a copy from the GeoDin team. In a network installation, overwriting a default affects all users.
{% endhint %}

### Layout snippets

A layout can embed another layout as a **snippet** — for example, a company header/footer stored once in `Common_A4_LHF.GLO` and referenced by many templates. Changing the logo in the snippet file automatically updates all layouts using it. In edit mode, snippets appear as green-boxed regions that cannot be edited inline; open the snippet layout directly to modify it. <!-- src: transcript/reporting-exports#report-templates-layout-snippets -->

### Multi-language support

Templates can carry translations and print in different languages depending on the `File > Language` setting — the same template can output in German or English without modification. <!-- src: transcript/reporting-exports#report-templates-layout-snippets -->

For detailed layout creation steps, see [Creating Custom Layouts](../data-visualization/creating-custom-layouts.md).

---

## Report elements

The **Report element** is a table-based component for displaying tabular output of general, layer, sample, or measurement data within a layout. <!-- src: transcript/reporting-exports#report-elements-annotations -->

### Setting up a report element

1. **Data source:** choose from General Data, Layer Data, or Samples > specific data type (e.g., CU triaxial tests)
2. **Column configuration:** use the blue `+` button to add columns. Each column has a **Text Macro** (the parameter to display) and a **Heading**.
3. **Selectors:** exclude rows by parameter conditions (e.g., skip values above or below a threshold)
4. **Conditional formatting:** set presentation options to highlight data — for example, "if CU > 50, color the row red" via `Column Properties > Presentation Options`

Multiple report blocks can be combined in one layout (e.g., a general-data table and a measurement table side by side). <!-- src: transcript/reporting-exports#report-elements-annotations -->

### Report types

Two categories of reports are available: <!-- src: transcript/reporting-exports#report-elements-annotations -->

- **Original data reports** — display raw data in summary (borehole tabs, sample overviews, measurement tables)
- **Calculation reports** — process data before display (statistics, list comparisons, plausibility checks, grain size analyses)

### Exporting report data

Reports can be exported to Excel or CSV in two ways: <!-- src: transcript/reporting-exports#report-elements-annotations -->

- From edit mode: right-click the report element > Export as Excel or CSV
- From the layout overview: use the Report Access button (no need to open edit mode)

---

## Text macros and annotations

### Variable text element

The **Variable Text** element displays dynamic data from the database in headers, footers, and annotations. Use the `Build` button to select macros from available parameters. <!-- src: transcript/reporting-exports#report-elements-annotations -->

Common macros include: long name (full location name), project name, driller, borehole, EPSG code, X coordinate, Y coordinate. The macro search bar in the Build dialog speeds up finding specific macros. <!-- src: transcript/reporting-exports#report-elements-annotations -->

### Image element

Load company logos and reference images via `Object Properties > Data Source > Load image file`. Supported formats include BMP, JPG, PNG, TIF, EMF, WMF, and GGF. <!-- src: transcript/reporting-exports#report-elements-annotations -->

### Legend element

The **Legend** element auto-detects fill patterns from objects currently in the frame. Configure via `Options > ... > choose which graphic element to reference` (e.g., select the object frame to show all fill patterns in that frame). <!-- src: transcript/reporting-exports#report-elements-annotations -->

{% hint style="info" %}
The auto-generated legend only includes patterns from objects currently displayed. For an "all possible fill patterns" legend, it must be built manually.
{% endhint %}

---

## Text macros for dynamic fields

Text macros allow dynamic insertion of database content into any text element. They can be used in: <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

- Page headers and footers
- Variable text elements
- Report column headings
- Labeling within borehole log elements

Macros are constructed via the `Build` dialog, which presents available fields from the connected data source. The syntax uses `$` delimiters: `$LONGNAME$` for the location name, `$%PRNPAGE$` for page numbering, etc. <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

{% hint style="info" %}
PSD (Particle Size Distribution) layouts are pre-built and shipped with GeoDin. It is recommended to customize existing PSD templates rather than building from scratch.
{% endhint %}

Template creation is documented comprehensively in the in-product **F1** guide, covering object frames, single vs. multiple frames, macros, and dynamic objects. <!-- src: transcript/reporting-exports#report-templates-layout-snippets -->
