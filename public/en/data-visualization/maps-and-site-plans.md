---
description: Maps and Site Plans
---

# Maps and Site Plans

### Name

GeoDin-portal layouts provide the possibility to set references to other sites. This function is the essential difference to normal GeoDin-layouts.

_**Note:**_ _To use the portal links it is necessary to activate the portal function in the advanced properties._

The portal links are differed by the target of the jump.

**Change page**:

Scroll through a multipage portal layout.

**Go to portal page**:

Jump to a portal layout.

**Get portal report**:

Get a PDF of a portal report.

**Go to website**:

Jump to an arbitrary URL in the internet or intranet.

[Show document](../navigating-the-geodin-workspace/documents/managing-documents.md):

Call a document from the GeoDin document manager or from the file system.

If you select a link below the node portal links, the dialogue for the editing the properties of this portal links will open. In this dialogue you can set the following link properties:

**Name of the link:** free name of the link

**Conditions:** Specify here whether and to what type of conditions the portal function should be bound.

-without conditions- The portal function is not bound to a condition and is always active.

-Data set conditions- \*\*One click into the editing field opens a dialogue to enter the data set condition. You can either enter your own condition or use a frame query.

-Conditions of cell content- \*\*referring to the content of a cell you can either enter your own condition or use a frame query.

The option type of the cell content will be active in the case that you have selected the condition of the cell content as a condition.

The type of the cell content may be:

-Numeric- \*\*The condition contains numbers as well as the operators "+" and "-" and the decimal point.

-Alpha numeric- \*\*The condition allows the input of numbers, letters and special characters.

-Date setting- The condition has to be made in a usual date format (e.g. mm.dd.yyyy).

The syntax to be used for the conditions is described in the chapter [Selection syntax](../data-analysis/queries/conditions-and-operators.md).

**Font colour:** font colour of the link, as it is displayed in the browser

### Go to website

Here you can set the target of a portal link of the type **Go to URL**. This target can be an arbitrary address in the internet or intranet.

Select the node **portal links** in the tree of the properties of the element. Select the type **"Go to URL"** in the editing window of the node. At the node **Go to URL** you can either enter the target of this jump as a free text or choose it from a frame query.

### Site plan

The site plan tool is used for constructing site plans of GeoDin objects in a configurable map frame. The objects are automatically labeled without overlapping of the labels.

The following steps are made for constructing site plans:

1. Selection of the desired objects
2. Defining the extent of the map frame
3. Defining the map scale and the position of the site plan on the print
4. Selecting and configuring the presentation options for map frame, point symbols, object names, etc.

The site plan tool can be started at the following places:

1\) Start at a query or at a group of objects

By double clicking the method symbol  **Site plan**:

The graphics window is opened, and the site plan tool is started. All objects of the query or group are added to the site plan

2\) Start at the menu entry \<Extras - Site plan> in the graphics window.

In this case, the site plan tool is started without objects. The desired objects are added later from the GeoDin object manager by drag and drop on the site plan or object list in the \<objects> window.

3\) Navigate to the 'Site plan' branch in the object properties of the currrent graphic

There, you can select the desired site plan and click at the **Start** button. The branches with the functions for creating and editing site plans are now added to the object properties

**Graphic elements of site plans**

All graphic elements used for site plan construction are placed in special drawing layers of the graphic. All these graphic elements can only be edited by changing their parameters in the site plan branch. It is not possible to mark and edit these elements directly, except the site plan is dissolved into its elements by using the **break up site plan** function.

Each site plan scene (object symbols, object names, map frame etc.) is placed into a separate drawing layer. These layers are displayed in in the layer list with a site plan symbol and can be shown or hidden lika any other drawing layer.

All settings made in the site plan branch, like adding new objects, changing the scale or display properties, are immediately shown in the site plan graphic. The changes in the display properties are automatically performed on the objects in the site plan.

**Start and Close site plan**

To start or continue editing a site plan (and all objects included), the **Start** button is used. The branches for object selection, map scale and position, and for editing the site plan scenarios are now shown. The button **Close** stops the editing mode and hides the properties branches.

**Break up site plan**

If it is necessary to edit the individual graphic elements of a site plan, the site plan element can be dissolved with the **Break up site plan** switch. Then, the graphic elements and layers are unlocked and the individual elements can be selected and edited normally.

_**Note:**_ _The link to the site plan is lost and can not be restored if the cross-section is dissolved. It is then no longer possible to edit the display general properties for the element, or set the scales of the site plan. The objects loaded are removed from the current site plan._

**Drawing order**

The entire site plan can be moved as a whole to the fore- or background relative to the other objects.

### Objects

By selecting the branch 'Objects' in a site plan, the window \<Site plan: Objects> opens. The window is freely scalable and stays visible until another branch in the object properties tree is selected or the window is closed.

Objects needed for the site plan or for orientation in the site plan can be added directly by Drag & Drop from the GeoDin object manager. Single objects, queries or groups can be selected with the mouse and can be dropped either onto the list or the site plan. If an object is already included in the list, it is not added again.

Objects for a site plan can be loaded from any database or project, i.e. it is not necessary to store data for a site plan in one project or database.

In the site plan, the objects loaded are presented with a sign and a label, the site plan can be zoomed and moved as necessary with the available tools.

If the coordinates of the boreholes are in different meridian zones, the coordinates can be transformed into a single zone. This is done by selecting the desired zone. The presentation in the site plan is corrected accordingly (this function is available for the Gaus-Krüger coordinate system).

If the boreholes are located in the **southern hemisphere** (Y coordinate increasing "downward"), checking the option -Southern hemisphere- will mirror the site plan.

The selected boreholes are displayed in a site plan presentation. An object can be selected either in the list or in the site plan, it is displayed in red in the site plan and marked in the list. The coordinates of the object, elevation and depth of the borehole are diplayed below the list of objects. An object deleted from the Borehole list list with the **Remove** button is also deleted from the site plan.

It is possible to multiply the object coordinates with a user-defined factor, if necessary.

The field **Map limits** automatically displays the minimum and maximum coordinates (X and Y values) relative to the selected boreholes. The values can be edited if only a selected part of the site plan shall be displayed. If more objects are added later, the values in these fields are kept, so manually entered values are preserved. With the option -Set to maximum-, the values in the input fields can be set to the value necessary with regard to the objects loaded. Choose the -Automatic- option to automate this process.

In the preview, the map frame for the minimum and maximum coordinates of the objects is displayed with a black frame. The red frame is for the extent of the coordinates entered in the input fields.

Often, the coordinates of the corners shall be rounded to a convenient number (e.g. a multiple of 100). It is not necessary to do this manually, but can be done automatically by the site plan tool by checking the box -Round up corner values- . The desired value for rounding can be entered in the input field. The map frame resulting for the rounded is displayed in red (see above).

Changing between the different parts of the site plan (objects, line of section, scales, and site plan scenarios) is possible by directly clicking on the branch in the object properties window, or by using the buttons in the upper right above the site plan (when the object window is too large and hides the branches).

### Scale

Here, the scale of the site plan and the printing position can be set.

**Define scale**

Use this option to define the scale. The size of the paper is defined by the corner co-ordinates and the scale. The size of the map in centimetres at the selected scale is shown without taking into account coordinate labels at the map frame.

**Define width and height**

Use this option to define the site of the site plan on paper. When using this option, define the desired size of the site plan on the paper. The required scale is calculated and displayed.

In the entry field _"Round scale to"_ an optional selection of scales can be pre-defined.

**Example:**

Entry = 1,2,5

Usable scales are the entry values and multiples thereof : 1,2,5,10,20,50,100,200,500,...

**Paper size**

The minimum size and orientation necessary for the site plan is displayed. The position of the site plan, measured from the upper left corner, can be set in the fields _"Position X:"_ and _"Position Y:"_.

If the option -Automatic page layout- is active, the paper size displayed by \<Min:> is used for the site plan construction.

The size of the map in centimetres at the selected scale is given without taking into account coordinate labels at the map frame.

### Site plan scenarios

Here, **detailed scenarios** for site plan construction can be designed, saved and loaded.

A scene contains a graphic element, which should be displayed for all selected objects. For example, a scene can contain the graphic element symbol (for displaying the object), another scene the graphic element text for labelling the objects with their names.

Possible site plan scenes are:

[Symbol](../configuration/fill-patterns-and-symbols.md) for displaying the point symbols

[Variable text](layouts/text-macros-and-variable-text.md) for labelling the objects

[Map frame](maps-and-site-plans.md) for the display properties of the map frame

[Text tag](layouts/text-macros-and-variable-text.md) for the tag lines

Scenes can be added as necessary (also twice if needed), except for the scene type 'tag line', which can be added only once.

As a standard for the appearance of site plans the scenarios map frame, point symbol, tag line and borehole name are preset. Additionally new elements can be added, deleted or edited for the site plan appearance.

Additional scenes can be added with the button . Select the desired scene type from the menu which opens.

The order of the scenes in the scene list determines later drawing order. The upper scene (the graphic elements of the scenario) is drawn first, the scenario at the bottom of the list is drawn last. The order of the scenes is of interest, if various graphic elements overlap. A change of the order is possible with the help of the arrow icons.

Site plan scenarios can be saved and loaded, independent of the objects currently loaded. This way, they can be used later for site plan construction by simply loading the scenario file. All scenes are then immediately available for the new site plan and can be modified as necessary. Any number of site plan scenario files can be created for different thematic site plans.

To save a scenario file, use the **Save** button. The scenarios can be stored as a scenario file (\*.gpz) in any directory.

A stored scenario file can be loaded again with the button **Load** for using them in other site plans.

### Site plan scene

For each scene a name can be entered, and selected whether the scene shall be visble or not.

**Relative Scene position**

The effect of the relative scene position option depends on the type of scene used.

**Site plan scene Symbol**

The relative scene position calculates the point where the symbol is drawn relative to the place where the location would be plotted originally. In the example below, the 4 circle segments (4 scenes of the 'Symbol' scene type) were drawn slightly offset from the original position of the object (exploded pie chart):

**Site plan scene Text**

The relative scene position determines the place where the text is printed, relative to the position of the non-overlapping labels. It is used to create multiple labels placed side by side, which use different fonts. The relative scene position is only necessary when different scnes contain labels. Normally it should be sufficient to use a normal variable text scene, as a label with several lines is possible by using the sign \ (Backslash).

If two different labels are necessary, for example one with normal, the other one with bold typeface, two variable text scenes need to be defined. For the second scene, a relative scene position is necessary.

**Example:**

For the name of the borehole, a larger font with text style Bold Italic is used. The end depth of the borehole uses a smaller text with no special attributes.

Two scenes are defined:

1\. Scene 'Variable text' with the text macro '$LONGNAME$'

2\. Scene 'Variable text' with the text macro 'End depth: $ZCOORDE$ m' '

By defining a relative scenario position for the scenario 'End depth' X:0, Y:3, the text 'ED=10,00m' is moved 3 mm downwards and therefore displayed in a second row.

**Site plan scene Map frame**

The relative scene position for the map frame defines the position of the frame elements relative to the selected map extent.

**Example:**

A second map frame shall be drawn with 3 mm distance to the first frame. By defining a second scene of the type 'Map frame' with the scene position X:3 and Y:3, you get the following result:

### Symbol

The site plan scene type Symbol is used to display symbols at the object location.

Two define symbol type, colour, and size, two different possibilities are available:

**Fixed**

This option defines the symbol for all objects on the site plan. All parameters selected (symbol type, colour, and size) are applied to all objects.

**Variable**

For some object types it is possible to define site plan symbols in the general data. The data field can be selected from the list of general data fields. During the site plan construction, the field content is read for each object and interpreted for symbol type, size or colour. The database field must contain numeric values.

**Defining the symbol type**

The symbol type can be either fixed or variable. If the symbol type 'variable' is selected, the selected general data field must contain valid [Symbol tables](../configuration/fill-patterns-and-symbols.md) entries. If no valid entry can be found, no symbol is drawn for the object.

**Defining the symbol colour**

If the symbol type -variable- is selected, the selected database field has to contain a valid colour number. Otherwise, the symbol is drawn in black. [Color tables](../configuration/fill-patterns-and-symbols.md) from 1 to 16 can be used. The background can be drawn as -transparent-, the graphic elements behind the symbol can be seen through the unfilled areas of the symbol. If the symbol mode -opaque- is used, all graphic elements behind the symbol are completely hidden, regardless of whether the symbol contains unfilled areas or not.

**Setting the Symbol size**

The size of the symbol (height and width) can lie within a range of 0.2 to 100 mm. If the setting 'variable' is used, the selected database field has to contain valid entries, otherwise, the symbol is drawn with a diameter of 2 mm.

**Setting the symbol pen**

With activated option -As symbol color- the lines of the symbol are drawn in the same color as the symbol fill color. With deactivated option -As symbol color- only the filled areas of the symbols are drawn colored, the lines are drawn as selected.

***

## Desktop Reference: Diagram and Chart Properties

The following sections document display properties and diagram types available for maps and site plan graphics in GeoDin Desktop.

### Diagram Types

#### Durov Diagrams

The **Durov diagram** is an alternative to the Piper diagram for hydrochemistry visualization. It plots major ions as percentages of milli-equivalents in two triangles, projected onto a square grid perpendicular to the third axis. The plot reveals clustering of data points with similar compositions. An ion balance calculation is performed automatically for missing ingredients.

The **Durov diagram 2020** variant allows freely definable axis parameters (which must normally be converted to percent). Per triangle, sides add up to 100%. The orientation of the triangle axes and parameter labeling are freely definable. In the **extended Durov diagram**, additional squares are added at the bottom and right for an extra parameter in each direction with freely defined scales.

#### Formation Diagram (LBGR)

A classification method for high-mineralized natural waters (Valjaschko, 1960s), extended by Rechlin et al. for slightly mineralized freshwater. Distinguishes four elementary water types based on molar equivalent ratios of main ingredients (not predominating ions): **Carbonate Type** (unsaturated NaHCO3 water), **Sulfate Sodium Type** (carbonate saturated, sulfate not -- dissolved Na2SO4), **Sulfate Magnesium Type** (carbonate and sulfate saturated with earth-alkali ions), and **Chloride Type** (calcium exceeds carbonate and sulfate). Requires analysis of Ca, Mg, Na, K, HCO3+CO3, SO4, Cl. The LBGR hydrogeochemical formation model (Brandenburg) distinguishes 9 formation types from precipitation through deep water-bearing layers.

#### Pie/Bar Chart

Displays parameters or formulas compared against each other using independently adjustable fill patterns and colors. Only positive values are drawn; use a formula such as `$WAS:CL@B0,5$` to convert negative values. Each data record produces one diagram per page. Statistics can be calculated using formulas like `$WAS:CL@MAX$` in the parameter list.

#### Circle Diagram

Plots a parameter value on a radius axis against another parameter as an angle value, displayed as a user-defined symbol. Requires defining a radius parameter, an angle parameter, and the series to be shown.

#### Boxplot

Graphically represents the distribution of an ordinally scaled characteristic. The **box** spans the middle 50% of data (25th to 75th percentile, IQR). A continuous line marks the **median**. **Whiskers** extend up to 1.5x IQR; their actual length is determined by the last data value within that limit (so whiskers may differ in length). Values beyond the whiskers are plotted individually as outliers.

### Series and Calculated Lines

#### List Management

Where multiple elements can be defined (series, columns, calculated lines, etc.), they appear in an ordered list. Use **New**, **Duplicate**, **Delete**, and arrow icons to manage entries. **Edit without refresh** suspends recalculation during bulk edits. Double-click an entry to navigate to its properties.

#### Calculated Horizontal Lines

Horizontal reference lines can be added to any series in addition to curves, bars, or symbols. Available calculation types: **Minimum**, **Mean value**, **Maximum**, and **Median** (computed from measurement values), or a numeric value from **Object data**. Choose whether statistics use only the **displayed time interval** or **all measurement values** regardless of the visible range.

#### Default Line

Displays a horizontal line at a user-defined value. Select whether the line references the left or right axis.

#### Aggregation Preferences

An aggregation series is calculated from other series. Available types: **Mean values**, **Sums**, and **Differences**. For differences, values of all series from the second onward are subtracted from the first (e.g., series 3,1,2 yields value3 - value1 - value2). Enable **Only values measured at the same time** to restrict calculations to coincident timestamps. The **Stack** option enables stacked or bar display with percentage-based segments.

#### Measurement Frequency

Filters which datasets of a measurement series are displayed using a time-interval. Useful for distinguishing data logger records from manual measurements by defining two series with different frequency settings and line colors. Lines are automatically interrupted at frequency boundaries.

#### Confidence Limit

Configures confidence limit display on time series. Properties: **Display name** (for legend), **Confidence level** (0-1, typically 0.95), **Upper/lower confidence level** selection, **Draw curve** and **Draw symbols** toggles (with sub-node styling), and **Show in legend** option.

### Data Filtering

#### Post-selection

Filters data sets from correlated data types using logical conditions. Define a **Name** (shown in layout interfaces) and a **Condition** using selection syntax. Conditions can be parameterized with placeholders: `%NUMERICPARAM` (numeric fields), `%STRINGPARAM` (text fields), `%DATEPARAM` (date fields). Set a **Default value** for parameterized conditions. Enable **Make available as quick setting** to expose the parameter in layout interfaces. Display selector content in layouts using `$%SelectorContent:Selector_name[@format]$` -- use `@t` for translated values or `@c` for key codes.

### Text and Labeling

#### Point Labels

Displayed points can be optionally labeled by activating the **Label** option. The label content is defined by a labeling macro, entered directly or built using the **Build** icon. See Text macro documentation for syntax details.

#### Time Axis Text Formatting

Time axis labels support **absolute** or **relative** time values. Absolute format codes: `d`/`dd` (day), `ddd`/`dddd` (weekday), `m`/`mm` (month number), `mmm`/`mmmm` (month name), `yy`/`yyyy` (year), `h`/`hh` (hour), `n`/`nn` (minute), `s`/`ss` (second). Relative mode starts at 0 and labels the time difference from the start in selectable units (days, months, etc.) with configurable decimal places.

#### Diagram Text Positioning

Text elements can be fixed text or linked to legend labels. Position is defined in a 0,0 to 1,1 coordinate system relative to the diagram area (0,0 = lower-left, 1,1 = upper-right). Enable **Use absolute coordinates of the chart axes** to tie positioning to displayed parameter values. **Remove text outside the chart area** hides text that falls outside the diagram due to axis changes. Link to a legend label using the syntax `%Leg:S=<series>,L=<label>` for dynamic text.

#### Legend Labels

Used either within a diagram (via a text element linked with `%Leg:S=,L=` syntax) or in a separate legend element. Labels combine free text with variable data field names (text macro syntax). The **Translation (language)** setting controls dictionary retranslation; defaults to "Automatic" (uses the object type language). If no translation exists, the abbreviation is displayed directly.

### Appearance Properties

#### Fill, Color, and Outline

**Fill pattern** applies to symbols with filled areas (no effect on line-only symbols). Enable **Draw area transparent** to show background elements through unfilled areas; disable it to hide background behind the symbol rectangle. **Line type** adjusts symbol contour presentation. **Color** is selected from the dropdown or set to "Individually" for custom colors. **Line thickness** can be set in mm (recommended for print consistency) or pixels (screen-only use).

#### Color and Transparency

The default fill pattern background color comes from the fill pattern table. Select **User defined** to override. **Transparent** fill patterns allow overlaying with visible underlying elements (not supported by all output devices). Line thickness adjustment applies only to vector fill patterns and affects print output only.

#### Font

Select font family, size, and style from the dropdown. **Alignment** uses six anchor points for precise positioning (status line shows position relative to the alignment point). **Angle** rotates text up to 360 degrees. **Background** mode: _Transparent_ shows graphics through individual characters; _Opaque_ crops the text with a background color (default white, customizable).
