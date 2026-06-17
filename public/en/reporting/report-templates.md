---
description: How to work with report templates, layout snippets, report elements, and text macros in GeoDin
---

# Report Templates

GeoDin ships with pre-built report templates organized by object type. You can customize these templates or create new ones from scratch using the layout editor.

## Template basics

Templates are accessed via the **Layout** section in the Graphic Printing and Editing method. Default layouts ship in `GeoDin\Layouts\`, organized by object type - for example, G1 includes borehole logs, stiff/parameter layouts, water content vs. depth, and Atterberg limits charts.

Users can add custom layout folders via `Available Layouts > + button > browse to folder` (e.g., a network share for team-wide templates).

### File formats

Templates can be saved in two formats:

- **GLO (GeoDin Layout)** - template only, no data connection. Reusable across projects. Only GLO files appear in the Available Layouts overview.
- **GGF (GeoDin Graphic Format)** - layout with connected data (e.g., a specific cross-section with 10 boreholes). Can be reopened by drag-and-dropping into GeoDin.

Save as GLO for reusable templates; save as GGF to preserve a specific graphic with its connected objects.

{% hint style="warning" %}
When editing a default layout, always use `File > Save As` (never Save) to avoid overwriting the shipped default. Create a folder like `[YourCompany]_Layouts` and copy defaults there before editing. If a default is accidentally overwritten, there is no built-in reset - you must request a copy from the GeoDin team. In a network installation, overwriting a default affects all users.
{% endhint %}

### Layout snippets

A layout can embed another layout as a **snippet** - for example, a company header/footer stored once in `Common_A4_LHF.GLO` and referenced by many templates. Changing the logo in the snippet file automatically updates all layouts using it. In edit mode, snippets appear as green-boxed regions that cannot be edited inline; open the snippet layout directly to modify it.

### Multi-language support

Templates can carry translations and print in different languages depending on the `File > Language` setting - the same template can output in German or English without modification.

For detailed layout creation steps, see [Creating Custom Layouts](../data-visualization/creating-custom-layouts.md).

***

## Report elements

The **Report element** is a table-based component for displaying tabular output of general, layer, sample, or measurement data within a layout.

### Setting up a report element

1. **Data source:** choose from General Data, Layer Data, or Samples > specific data type (e.g., CU triaxial tests)
2. **Column configuration:** use the blue `+` button to add columns. Each column has a **Text Macro** (the parameter to display) and a **Heading**.
3. **Selectors:** exclude rows by parameter conditions (e.g., skip values above or below a threshold)
4. **Conditional formatting:** set presentation options to highlight data - for example, "if CU > 50, color the row red" via `Column Properties > Presentation Options`

Multiple report blocks can be combined in one layout (e.g., a general-data table and a measurement table side by side).

### Report types

Two categories of reports are available:

- **Original data reports** - display raw data in summary (borehole tabs, sample overviews, measurement tables)
- **Calculation reports** - process data before display (statistics, list comparisons, plausibility checks, grain size analyses)

### Exporting report data

Reports can be exported to Excel or CSV in two ways:

- From edit mode: right-click the report element > Export as Excel or CSV
- From the layout overview: use the Report Access button (no need to open edit mode)

***

## Text macros and annotations

### Variable text element

The **Variable Text** element displays dynamic data from the database in headers, footers, and annotations. Use the `Build` button to select macros from available parameters.

Common macros include: long name (full location name), project name, driller, borehole, EPSG code, X coordinate, Y coordinate. The macro search bar in the Build dialog speeds up finding specific macros.

### Image element

Load company logos and reference images via `Object Properties > Data Source > Load image file`. Supported formats include BMP, JPG, PNG, TIF, EMF, WMF, and GGF.

### Legend element

The **Legend** element auto-detects fill patterns from objects currently in the frame. Configure via `Options > ... > choose which graphic element to reference` (e.g., select the object frame to show all fill patterns in that frame).

{% hint style="info" %}
The auto-generated legend only includes patterns from objects currently displayed. For an "all possible fill patterns" legend, it must be built manually.
{% endhint %}

For a focused guide to text-macro syntax, conditional separators, calculated parameters, and translation support, see [Text Macros in Reports](text-macros-in-reports.md).

{% hint style="info" %}
PSD (Particle Size Distribution) layouts are pre-built and shipped with GeoDin. It is recommended to customize existing PSD templates rather than building from scratch.
{% endhint %}

Template creation is documented comprehensively in the in-product **F1** guide, covering object frames, single vs. multiple frames, macros, and dynamic objects.

### Create report

&#x20;![Create report](../.gitbook/assets/icons/create-report.png) **Create report**

With the method **"Create Report"** at a database it is possible to fill a prefabricated text with data from a database by using special macro commands. The file format is odt (open documenttext). As the macro commands can be corrupted by other internal Office commands when saving the file, we recommend to use only one text processing program (Ms Word, Libre Office) when creating the report.

At first you choose an odt source file. When reading the data the program gets the constants definitions and displays them in a dialogue. You must choose a target file to start this procress.

All constants will be replaced when clicking the **Ok** button, then the layouts will be loaded and the appropriate elements will be replaced as well. Depending on the size of layout and data this process can take a long time.

A protocol shows the changes and errors when finished. Until this very point all replacements were performed in internal steps. Once you apply the protocol with the **continue** button the target file is going to be written.

You will find a demonstration, including prepared layouts, on our CD in the directory _**GeoDin**\\**DEMO**\GeoDin Beispiel Demodatenbank\\**AutoBerichtserstellung**_ for the sample database.

Refers to a prefabricated GeoDin graphic or layout and delivers back the image from the graphic.

\#GeoDin:getimage?layout= hydraulicheadquicksetting.GGF\&QLConfig1=TimeLineAxisRange+Param1=01.01.2002+Param2=31.12.2002#

QLConfig1=TimeLineAxisRange defines parameters for quick settings of layouts. Possible modifications are TimeLineAxisRange, TimeLineLeftAxisParam, TimeLineRightAxisParam and Coordinates.

+Param1=01.01.2002+Param2=31.12.2002 is as the type of the quick setting of the layout and defines the parameters. For a time domain these are 2 parameters with particular dates.

_**Note:**_ _There must be a place holder in the document already to set both scale and size of the image. Afterwards this place holder image will be replaced by the GeoDin image. Due to this the macro command getimage must be located above the place holder._

Refers to a GeoDin image or layout as getimage does. The difference is the access on text elements within the graphic and their output. At this point a report element can be used as well. In this case the result will be the output of the first cell of the report.

**Example of a frame query, this can be used for getimage too:**

_#GeoDin:gettext?layout=hydraulicheadtexts.GGF\&Query1=year+Param1=01.01.2002+Param2=31.12.2002\&elementname=MaxValue#_

elementname=MaxValue defines the element in the layout meant for analysis

+Param1=01.01.2002+Param2=31.12.2002 is as the name of the framework query and defines the parameters. For a time domain these are 2 parameters with particular dates.

It is recommended to define as many text elements via a layout as possible, otherwise you have to load a new layout for each text element.

This variant relates to calculations without a specific reference to the data. No database relations are necessary. Possible macros may look like this:

You can use the date in the format DD,MM,YYYY. The macro mentioned above would give back the current year.

Furthermore it is possible to set often occurring values during the creation of the report. This is done by defining constants. For example: if you have a report over a year with embedded graphics, in which the time axis is parameterised:

_#GeoDin:getimage?layout=WasserstandSchnelleinstellung.GGF\&QLConfig1=TimeLineAxisRange+Param1=01.01.2002+Param2=31.12.2002#_

For frequently use of the axis setting all setting parameters would have to be readjusted each year. But here it is possible to define constants, which are going to be specified while the document is loading. The macro looks like the following:

_#GeoDin:getimage?layout=WasserstandSchnelleinstellung.GGF\&QLConfig1=TimeLineAxisRange+Param1=DateParam?StartDatum|+Param2=DateParam?EndDatum|#_

_#GeoDin:getimage?layout=WasserstandSchnelleinstellung.GGF\&QLConfig1=TimeLineAxisRange+Param1=01.01.DateParam?Berichtsjahr|+Param2=31.12.DateParam?Berichtsjahr|#_

Replacements from get-commands can be highlighted, if successful in green, otherwise red. For this reason you have to validate these reports manually after an automated setting. The commands for gettext and getmacro can be deleted from the target text by using the button **delete successfully replaced command from the text**.

Replacements of constants cannot be highlighted in a special way because they can also be part of macro commands (see example).
