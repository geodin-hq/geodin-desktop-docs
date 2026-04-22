---
description: Data Checks and Validations
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Data Checks and Validations

### Objects

A project may contain up to 9998 objects or boreholes. Because the number of projects in a database is unlimited, the number of objects in a database is also unlimited.

A object may be defined in the GeoDin system as an object that has at least a name and is related to a project. Objects can be boreholes, monitoring wells, cone testing holes as well as climate measuring stations, surface water collection points etc.

Each object must be defined by general data containing information like its name and where present its coordinates. Depending upon the type of object further information may then be entered and displayed, for example a borehole log, CPT results, a groundwater monitoring well. There are over 100 different types of objects (\"Object types**\"**) in GeoDin, which cover all types of data collection and presentation.

The default installation provides the user a set of object types, depending on the language version. Further object types can be installed from the CD. For example all German geological survey organizations (Geologische Landesämter) have their own input masks for which special syntax controls have been defined. Other international standards are supported (e.g. BS5930, NEN, ÖNORM) as well as specific national standards (e.g. Dept. of Geological Survey, Botswana). A project may contain several different types of objects as long as these are installed in the GeoDin-System folder. In addition there are controls to allow or to prevent the creation of certain types of objects (e.g. read only).

The difference between a measurement point and a object is that the former cannot be created directly - a measurement point is part of a object. For example a measurement point could be a point at which groundwater levels, groundwater or sediment chemistry values are recorded. In each case GeoDin will generate the measurement point automatically, when either a filter or a sampling point is defined. In special object types, like climate measuring stations, the measurement point is generated, when the object is defined.

In the GeoDin object manager a project is always subdivided into objects and measurement points. Both categories may be further subdivided depending on what data is to be collected. As a user you cannot alter this arrangement, because each subdivision is automatically generated.

 Datenbases

 DemoDB

 GeoDin Demo

 Objects

 All objects

 General borehole log

 Measurement points <!-- src: help/03/141 -->

### Data management

When you create a new object the **\"Data management\"** method automatically opens (as described in the previous section). When you want to edit an existing object, select it in the GeoDin object manager and double click the ![Data management](.gitbook/assets/icons/data-management.png) [Data management](../../navigating-the-geodin-workspace/objects/data-management.md) method icon.


The **\"Data management\"** method always shows the data corresponding to the current selection in the GeoDin object manager. If you change the selection, your edits are automatically saved to the database and the data for the new selection shown. If you select an object, which GeoDin is not able to display in the current editor, then a message appears in the edit window, which remains open. This is advantageous when you temporarily need to carry out other operations or call up other functions, before continuing with the data management.

The **\"Data management\"** method has two tool bars that may be horizontally re-positioned. The tools displayed depend on the object selection in the GeoDin object manager.

The following tools are always available:



 **Modify object (Start editing) / Stop editing**

When activated (**Modify object**) the tables and masks can be edited. In the deactivated state all entry fields are gray and editing is not possible.\
\
This browser-mode (read only/ write-protected) is useful, if inadvertent changes in object data are to be avoided or if another user is simultaneously working on the same object.

The editing mode stays active as long as the icon is not re-clicked (**Stop editing**). All alterations in the object data are stored automatically by toggling this button.

***Tip:*** *If you change boreholes (objects) then GeoDin also saves automatically. This can optionally be turned off by editing the configuration parameter* ***AutoSave*** *to =false (see Installation - Configuration file: GeoDin.ini).*

 **Save**

By clicking the **Save** icon you can save all the changes made in the current editing session. The **Save** button leaves the editing modus open.

 **Cancel edits**

By clicking the **Cancel edits** icon you can undo all the changes made in the current editing session. The **Cancel edits** button deactivates data editing.

After an alert message, all alterations for the current object are discarded and the original status of the object restored for all data (general data, geological tables, well design, samples etc.)

***Tip:*** *The* ***Cancel edits*** *icon has another very useful function. When you select a object containing faulty data GeoDin will not let you move on to another object before the syntax errors have been corrected. This can arise when working with imported data or when you have accidentally created a new object. Using Cancel edits the syntax check can be bypassed or the new object deleted.*

 ![New](.gitbook/assets/icons/new.png) **New object**\
\
Creates a new object without leaving the Data management method (see also: [Create object](../../navigating-the-geodin-workspace/objects/creating-objects.md)).

 **Go to object**

In the data entry grid each object is shown as one line. By clicking this icon, you are taken to the general data input masks for the object selected in the current line.

 ![Create object group](.gitbook/assets/icons/create-object-group.png) **Create object group**

The data records of the GeoDin objects can be filtered in the general data grid. Not all objects of the underlying query or group will then be displayed as rows. Using the Create Object Group function, these filtered GeoDin objects can be combined into a new group in the Object Manager.

    **Cut, Copy and Paste**\
\
These icons are used for the clipboard functions. These functions can also be activated by using the standard key combinations **Ctrl + X**, **Ctrl + C**, **Ctrl + V**.

 **Data collection language**

Here you can choose a different language for the data collection masks than the GeoDin user interface. If you want to use the same language, just keep the default \"Automatic\" setting. This setting is also used for the [Document description](../../navigating-the-geodin-workspace/documents/document-organization.md) masks types.

The language for previewing the layer data (as a log profile and text) can be defined separately.

***Note:* *Only data input masks in different languages can be shown for object types that have multilingual support and an existing translation. Currently this is available only for the object type "Geotechnical investigation EN ISO 22745" in English and German and for the international document description objects (DOC) for English, French, German, Spanish and Russian (March 2015).*

  **Keyboard short cuts**

A dialogue with the current keyboard short cuts is displayed. Many functions of the editor can be called up with the help of the listed keys.

  **Help**

The help option is started.

 ![Page layout](.gitbook/assets/icons/page-layout.png) **Page layout** (direct link to the graphic preview)\
\
This function saves any changes made in the [Data management](../../navigating-the-geodin-workspace/objects/data-management.md) method and opens the graphic preview for the current object. Hence using this preview method you always view the actual status of the database.

  **Manage documents**

The **Document management** for the current object is started. If you edit a sample or a groundwater measurement point the document branch for this measurement is opened.

Data collection is carried out in specific editors, which are also located in the upper tool bar:



The number of editors available depends on the object type chosen. There are tools available for the collection of:

 \'General data\'

 \'Layer data\'

 \'Samples\'

 \'Well design\'

 \'Data sequences\'

If for the current object an input of these data is not possible the particular icons are not present in the tool bar. For example for a climate measurement point only the general data can be entered, so only one icon appears in the tool bar. <!-- src: help/03/144 -->

### General data

 The input masks for recording general data are accessed by clicking on this icon.

The **Object information** card opens by default in the editor after creating a object.

In the General Borehole Log, the two further masks allow **Site information** and **Extras** to be entered. Depending on your object type there may be further cards available, with differing constellations of entry fields.\
\
To scroll through the index cards one can either click the corresponding tab with the mouse or use the **Page up** and **Page down** keys. To jump from one entry box to the next use either the **Tab** or **Enter** keys. To reach the previous entry box hold the **Shift** key and press **Tab**.\
\
A short explanation to each entry box is shown in the status bar. For several input fields, a longer support text can be called up via the keys **Ctrl** + **F1**.

The following special icons are available for the input of the general data:



 ![Select input form](.gitbook/assets/icons/select-input-form.png) **Select input form**

For the input of the data different masks can in some cases be used. The selection of (another) input form is done with this icon.

 **Edit general data**

\
The general information for a project is entered in the general input mask. By using **Defaults** general data, recurring information such as site description, drilling company, data security etc. must only be entered once (i.e. the site description remains the same for each object, although each object has different coordinates). Click to start and stop (i.e. save) the default entries, so that they appear automatically with each new object.

To use the default general data completely it is best to enter the relevant information before beginning with the first object. The top bar above the program icons shows which general data is active. Now enter all chosen presets in the entry fields.

Depending upon the object type there will be a ceratin number of obligatory entry fields in the input mask: **Short name**, **Full object name**, **Easting** (X coordinate), **Northing** (Y coordinate) and **Depth** of borehole are always required, though further entries may be necessary . More data can be entered as required, depending on the availability, complexity and future use.

Dictionary fields such as *Field log, Summary log, Data security* and *Checked by* in the BS 5930 object typeare user-definable i.e. you can customize the dictionaries linked to each field. For example, if always the same persons check the data their names can be stored in the relevant dictionary and can be subsequently chosen from the pull-down menu to quicken data collection.

 ![Input control](.gitbook/assets/icons/input-control.png) **Input control**

When entering data in an input field it is tested automatically for correctness of its content (e.g. invalid code or number).

Right-click to adjust the input configuration settings **\<Input control\>.**

*\[Underline errors\]* - turns the feature on and off

*\[Check after entering separator\]* - activates the feature when a separator is entered

The second option results in the data enter being first checked when a comma, bracket or other separator has been entered and the next field selected. The default setting is \"off\" for this feature so that when typing several letters an error may be shown before one has completed the data entry. Once data entry is finished it will however be clear whether errors have been made. This feature does basic checks on data entry and is fully supported in the table grid view.

 ![Map preview](.gitbook/assets/icons/map-preview.png) **Map preview**

This icon shows an object plotted as a red cross (x) on a OpenStreetMaps background. You must have an internet connection to display the OSM map. In the edit modus you can move the position of the cross. There are two options available by clicking the three bar icon in the top left corner of the map:\
\
Show valid extent in map - shows the map limits for the chosen coordinate system

Move object to valid extent center - moves the object to the map center within the chosen coordinate system

Beneath the map information on erroneous entries or missing EPSG codes is shown

Use the menu button in the top left corner of the map to access the following functions:

**\"Show valid extent in map\"**

The valid extent of the coordinate system is shown by a red rectangle superimposed on the map. Note that for global coordinate systems (e.g. WGS 84) the whole world will be shown!The po

**\"Move object to valid extent center\"**

The object position (red cross) is centered within the valid map extent. The coordinate entries are NOT changed. This first happens when the position of the cross is changed by either manually moving it or right-clicking in another position; then the new coordinates can be saved.

This method is useful for quickly bringing objects with no or erroneous coordinates within the coordinate system where fine positional adjustments can be made.

**Geometry panel**

The geometry panel in the general data editor can be used for manual input or correction of coordinates.

***Note:*** *The input fields always refer to the x-coordinate, y-coordinate and EPGS code and are independent of the object type.*

The edit fields also update when the object is moved on the map.

 ![Coordinate transformation](.gitbook/assets/icons/coordinate-transformation.png) **Coordinate transformation**

The tool for the coordinate transformation can be used by clicking on the crosshair symbol  in the general data editor.

The tool uses the coordinates and the coordinate system of the current object for the coordinate transformation as input data. The target system can be selected in the next field. To do so, click on the question mark symbol and select the desired coordinate system in the new window. ***Note: The default setting is the last coordinate system used.***

To calculate the coordinates, click on the **Calculate** button. After converting the coordinates, the **OK** button becomes active and the newly calculated values can be transferred to the object.

 ![Export master data](.gitbook/assets/icons/export-master-data.png) **Export master data**

In the table/grid view of the master data, the \<Export\> button is also available in the upper toolbar. This allows you to export the table to Excel in the form in which it is displayed. <!-- src: help/03/145 -->

### Sample data

All sampling information is recorded in the sample editor.

Depths are entered in m below ground.

The following special icons are available for the input of sample data:



 ![First](.gitbook/assets/icons/first.png) **\<First row\> -** Moves to first data record

\
 **\<Previous row\> -** Moves to previous data record

\
 ![Next](.gitbook/assets/icons/next.png) **\<Next row\> -** Moves to next data record\
\
 **\<Last row\> -** Moves to last data record

 **\<Insert line\> -** Inserts data recordin current row

 **\<Duplicate record\> -** Duplicates current data record

 **\<Remove line\> -** Deletes current data record

 **Input control**

When entering data in an input field it is tested automatically for correctness of its content (e.g. invalid code or number).

Right-click to adjust the input configuration settings **\<Input control\>.**

*\[Underline errors\]* - turns the feature on and off

*\[Check after entering separator\]* - activates the feature when a separator is entered

The second option results in the data enter being first checked when a comma, bracket or other separator has been entered and the next field selected. The default setting is \"off\" for this feature so that when typing several letters an error may be shown before one has completed the data entry. Once data entry is finished it will however be clear whether errors have been made. This feature does basic checks on data entry and is fully supported in the table grid view.

With the key combination **Ctrl + Del** complete rows can be deleted and inserted with the key combination **Ctrl + Ins**. The **F2** key or clicking on the question mark at the end of the entry field can be used to search in the dictionaries. After ending a row a new row can be created using the **Tab** key or the **Arrow Down** key. The number of rows is not limited.

Key functions for the input in the table:

**Tab stop** Moves to next entry field or at the end of a line creates new line

**Shift + Tab** Goes to previous entry in the line

**Arrow Up** Goes to previous line

**Arrow Down** Goes to next line or creates new line

**Ins** Inserts new line (above current line - following lines move down)

**Ctrl + Del** Deletes current line (following lines move up)

Please also see the help notes [Using the data entry grid](../../navigating-the-geodin-workspace/measurement-values/working-with-measurement-data.md). <!-- src: help/03/147 -->

### Well design data

Information on technical construction of a groundwater monitoring wells are collected in the editor for well design.

With the exception of the general data and measurement point information, all other data is entered in grid tables. Each table in a grid is composed of various entry fields and drop-down choice boxes. A new row can be created either at the end of a row by using the Tab key or anywhere within the row using the down-arrow key. The number of rows is not limited.

When entering information on backfill, casing and special features, codes (abbreviations) are used for the elements. These can either be searched for in the associated dictionaries and used, or entered directly in the field. **Depths** are generally entered in **m below ground surface**; depth information for **elements above ground** must be preceded by a **negative sign**.

Well design information is divided into the following groups (shown as individual editors in the GUI):



 ![Borehole information, drilling method and tools](.gitbook/assets/icons/borehole-information-drilling-method-and-tools.png) **Borehole information, drilling method and tools**

This table is used to collect information on drilling progress, including the drilling method and the tools used.

The following fields are mandatory:

• Depth from (in m below ground surface)

• Depth to (in m below ground surface)

• Borehole diameter (in mm)

This information is used for the graphical presentation of the borehole true to scale. The optional entries for drilling methods and tools can be chosen using the key combinations **Shift down-arrow** and **Shift up-arrow**.

 ![Backfill information](.gitbook/assets/icons/backfill-information.png) **Backfill information**

Backfill information is also entered in a table, whereby the following fields are mandatory:

• Type of backfill (code)\
• Depth from (in m below ground surface)\
• Depth to (in m below ground surface)

The type of material is entered using easy to remember abbreviations. This can be entered directly or chosen from the dictionary list. As soon as the entry matches a known code, the plain text translation appears in the Material field.\
\
The automatic entries in the Material field can be overwritten and will be used in the graphical presentation of the backfill. Additional information on the grain size (from - to) can be optionally entered in two fields. This will also be displayed graphically.

 ![Casing information](.gitbook/assets/icons/casing-information.png) **Casing information**

This table is used for entering the individual components of the monitoring well such as filters and end caps etc. If such a well has several piezometers, each one will have a separate entry table. The tables are created as index cards and can be accessed by clicking on the tabs at the lower window boundary. You can also use the key combination **Ctrl+digit**. Each piezometer is numbered successively, up to a maximum of nine per object.

Following fields require an entry:

• Element (code)\
• Depth from (in m below ground surface)\
• Depth to (in m below ground surface)\
• Element diameter (Dia.) (in mm)

Individual elements are entered using codes, either directly or from the dictionary list. The plain text appears automatically in the field *\"Type of casing\"*. Here to this text can be edited, overwritten or deleted. Depth information for elements above ground must be preceded by a negative sign.

The depth and diameter information are used for the true scale graphical presentation.

In the field *\"casing material\"* further information can be entered. This can be chosen from a list and will be used in combination with *\"the type of casing\"* for labeling the well design graphic. This is an optional field as is the element thickness (Thk.).

 ![Filter details](.gitbook/assets/icons/filter-details.png) **Filter details**

After entering an element of the type **"Filter"** the data entry mask can be used for collecting further details on the groundwater monitoring well.

This entry mask is available via the casing table when the cursor is in an entry row where there is a filter element. None of the mask entries are compulsory - the information is evaluated using the measurement editor. If there are more than one set of casing then you can move between them using the \"up arrow\" and \"down arrow\" buttons.

 ![Information on special features](.gitbook/assets/icons/information-on-special-features.png) **Information on special features**

Here special features can be recorded that cannot be attributed to individual casing elements, for example concrete rings, hydrant covers etc. With these elements complicated well housing features for multiple piezometer installations above and below the ground surface can be constructed. All these elements are drawn centred on the borehole.

Special features are also entered using codes that are either entered in the **Type** field or chosen from the list. The field **Feature type** is automatically filled out with plain text upon entry of a Type code - this text can be over-written, changed etc. and is used for well design labelling.

 ![Additional information](.gitbook/assets/icons/additional-information.png) **Additional information**

General data for a groundwater monitoring well can be entered in this mask.

 ![Copy well-design data from another object](.gitbook/assets/icons/copy-well-design-data-from-another-object.png) **Copy well-design data from another object**

This feature allows you to copy well design data from another object.

Please also see the help notes in Chapter [Using the data entry grid](../../navigating-the-geodin-workspace/measurement-values/working-with-measurement-data.md).

The following icons are also available when enetering data in a table (grid) :

 **Go to first data record**

\
 **Go to previous data record**

\
 **Go to next data record**\
\
 **Go to last data recordInsert data record in current rowDuplicate current data recordDelete current data recordInput control**

When entering data in an input field it is tested automatically for correctness of its content (e.g. invalid code or number).

Right-click to adjust the input configuration settings **\<Input control\>.**

*\[Underline errors\]* - turns the feature on and off

*\[Check after entering separator\]* - activates the feature when a separator is entered

The second option results in the data enter being first checked when a comma, bracket or other separator has been entered and the next field selected. The default setting is \"off\" for this feature so that when typing several letters an error may be shown before one has completed the data entry. Once data entry is finished it will however be clear whether errors have been made. This feature does basic checks on data entry and is fully supported in the table grid view. <!-- src: help/03/148 -->

### SEP import

To import files in the SEP format first create a new GeoDin project or open an existing GeoDin project, into which you want to import the data.

Select the method **\"SEP import\"** at the entry object.


Choose the source of your SEP files. For this you have 3 options:

**1. Chosen files:**

The SEP files are chosen from one or several folders individually and are added to the particular GeoDin project. The SEP files to import have to have the following endings: \*.HY; \*.BV; \*.SE; \*.GE; \*.IG.

**2. Entire folder:**

Here complete directories, which contain SEP files, can be added.

**3. SEP-catalogue:**

Import of a SEP catalogue file (usually contains several boreholes)

\
Chose the option **Files in DOS text** for older files, which were created with the DOS version of SEP. The German vowel mutations are converted in the Windows notation.

Select now, which location type should be imported. All SEP compatible location types are listed.

Optional the coordinates from the SEP files can be transformed into another meridian. For this select the middle meridian. The original coordinates can be saved by selecting the appropriate general data fields for both coordinates.

\
Confirm your selection with **OK**. After completing the import further data can be imported without calling up the option again. <!-- src: help/03/152 -->

### Data checks and calculations

You can use the method **\"Data checks and calculations\"** for input controls, search and replace of contents and layer queries.


**Search and Replace in Layer Data**

With this function you can replace wrong codes, which can derive from importing borehole log data to your GeoDin database

First select the entry field, which contains the wrong code, enter the wrong code in the field *\"Search for\"* and in the field *\"Replace with\"* the right code, for example:

Data field: Stratigraphy

Search for: qx

Replace with: qw

Confirm with **Proceed**. All borehole logs are now searched and corrected.

It is also possible to replace text by code or code by text. So it could be the case that a user not knowing the codes has entered all information as text in inverted commas, for example fS,'pockets,u. For 'pockets' the code poc is available.

\
Write the word in single high commas and run the search for text contents, example:

Data field: Petrography

Search for: \'pockets\'

Replace with: poc

The search and replace function is specially developed for coded borehole logs. Here no symbol strings are exchanged (like similar functions in a word processing program would do). The borehole log is made up of individual codes, so it is possible to define the code u (silty) as a search term, in a way that not every letter u is replaced, but only the identified codes u.

**Search and replace in General Data**

With this function you can replace entries in the general data table.

First select the entry field, which contains the value to replace, enter the value in *\"Search for\"* and in the field *\"Replace with\"* the new value, for example:

Data field: Client

Search for: Drillers & Sons Ltd.

Replace with: Drillers & Partners Inc.

Confirm with **Proceed** to correct the values in all the selected objects .

In the *\"Search for\"* field the placeholders \"?\" and \"\*\" can be used, where \"?\" stands for a single character, and \"\*\" for a string. If you were to look for all the entries starting with Drillers, but are not surehow many characters follow, enter *Drillers\**. If you want to search for Sons, but don't know whether it has been written with a *u* or *oh,* enter *S\*ns* in the search field, whereby the \"\*\" may stand for one or two characters. A ? can be used when you want to search for an exact number of unknown characters.

When searching in date fields GeoDin accepts the following formats in *\"Search for\"***:**

TT.MM.JJJJ

The separators \[-\], \[/\] or \[.\] can be used (e.g. 09/04/2011 for 9th April 2011).

Here too the placeholders \"?\" and \"\*\" are accepted, but only in the format TT.MM.JJJJ with \[.\] as the separator.

\
**Input control**\
\
Using this function you test the entered layer data of all selected boreholes on syntax correctness. If syntax errors are found, the following message appears:

2 objects contain syntax errors.

These objects are shown in the group:

\'Syntax error 06.04.2006 15:27:12\'.

To correct the errors, mark the first borehole of the group and start the method **\"Data management\"**. Change there to the layer data and in the editing g mode. Click on the icon **Syntax control**, so that you are led directly to the layer, which contains errors. After the correction of all errors you go on with another borehole of the group.

To be sure to have corrected all mistakes start a new test at the entry of the group syntax error.... (The test is only carried out for these boreholes; the others have been tested already). If no borehole contains syntax errors anymore a message appears, otherwise another group is created with the boreholes, which still contain syntax errors.

**Data sequneces: Calculating sequences**

With this method you can calculate new series for all selected objects. A detallied description of the configuration and setup of this method is available in the chapter [Calculating sequences](../../data-collection/import/data-sequences.md). <!-- src: help/03/155 -->

### Import and export

The following chapters describe the import and export of data sequences and data of various exchange formats.

[Import data sequence](../../data-collection/import/data-sequences.md)

[Create objects from data sequences](../../data-collection/import/data-sequences.md)

[SEP import](../../data-collection/import/special-imports.md)

[SEP1 export](../../data-collection/export.md)

[Export shape files](../../maps/cad-and-gis-exports.md)

[XML export](../../data-collection/export/geodinml-export.md) <!-- src: help/03/182 -->

### Layer data

The layer data editor is used to record geological information for a object. A object can be a single borehole, a groundwater monitoring well or a climate measuring station etc. from which the data originates. Click the \<**Layer data**\> button to start.

The following special icons are available for the input of the layer data:

 **Input form** choice and selection of recording mask

\
 ![First](.gitbook/assets/icons/first.png) **First layer** - scrolls to the first layer (not in full-text mode)

 ![Previous](.gitbook/assets/icons/previous.png) **Previous layer** - scrolls to the previous layer (not in full-text mode)

\
 ![Next](.gitbook/assets/icons/next.png) **Next layer** - scrolls to the following layer (not in full-text mode)

 ![Last](.gitbook/assets/icons/last.png) **Last layer** - scrolls to the last layer (not in full-text mode)

\
 ![Insert](.gitbook/assets/icons/insert.png) **Insert layer** - inserts a new layer

 **Duplicate layer** - duplicates the current layer

\
 ![Delete](.gitbook/assets/icons/delete.png) **Delete layer** - deletes the current layer

\
 **Input control** - syntax control

When entering data in an input field it is tested automatically for correctness of its content (e.g. invalid code or number).

Right-click to adjust the input configuration settings **\<Input control\>.**

*\[Underline errors\]* - turns the feature on and off

*\[Check after entering separator\]* - activates the feature when a separator is entered

The second option results in the data enter being first checked when a comma, bracket or other separator has been entered and the next field selected. The default setting is \"off\" for this feature so that when typing several letters an error may be shown before one has completed the data entry. Once data entry is finished it will however be clear whether errors have been made. This feature does basic checks on data entry and is fully supported in the table grid view. Complex checks on interdependencies and key code transitions are not covered.

 ![Borehole profile preview and translation of codes to text](.gitbook/assets/icons/borehole-profile-preview-and-translation-of-codes-to-text.png) **Borehole profile preview and translation of codes to text**

Both the graphic preview of the borehole and the text description are displayed beneath the data entry mask and are permanently updated during layer data input. You can navigate in this preview by using the scroll bars, a mouse wheel or an equivalent touch gesture (on mice or track pads). By clicking on a layer you can directly go to the data entry mask at the chosen depth.

\
The following keys have special functions for working in the layer data mask editor:

**Ctrl+PageUp** Jumps to the layer above\
**Ctrl+PageDn** Jumps to the layer below

**Crtl+End** Jumps to the last layer

**Crtl+Home** Jumps to the first layer\
**Ins** Inserts a new layer between two existing ones\
**Ctrl+Del** Deletes the current layer

**Crtl+D** Duplicates the current layer

**Crtl+K** Switching between main layer and components

**F2** Opens the appropriate dictionary (which may then be searched)\
**F3** Syntax control\
**F4** Turns the graphic preview on and off

**F7**Preview of layer queries (only for SEP 3)

In the input screen the information of each layer can be edited. The lower layer boundary of the previous and the next layer is displayed left and right beside the entry field for the depth value. <!-- src: help/03/337 -->

### Data sequences

Data sequence information is collected with the data sequence editor.

All types of data sequences can be entered: CPTs, SPTs, chemical profiles, geophysical logs, etc. Depth values are entered in m below ground surface and the measurement values may have any number of decimal places, or just text.

The data sequence list shows all the data sequences that belong to the object. New data sequences are created by clicking the **New** button upon which it must be given a name.

Confirming with **OK** an empty table is added and data entry can begin.

An existing data sequence can be deleted by clicking the **Remove** button. After confirming the security query the data sequence and all its' values are removed.

The button **Rename** allows existing data sequences to be renamed.

Data sequences such as SPTs with regularly spaced depth intervals should use the option **Automatic depth interval ** and enter a value. After inputting the first depth value and associated measurement, in the following rows only the measurement values must be entered.

The **Import** button can import existing data sequences from ASCII files. A detailed description of this function is given in Chapter [Import data sequence](../../data-collection/import/data-sequences.md).

Conversely the **Export** button allows selected data sequences to be exported in CSV-Format. For each data sequence a file with the following format is created in a user defined folder: Objekt.LONGNAME_SNDNAME_SNDID.csv.

Please also see the help notes [Using the data entry grid](../../navigating-the-geodin-workspace/measurement-values/working-with-measurement-data.md). <!-- src: help/03/412 -->

### Data collection with SEP3

**Collection of borehole and layer data with SEP3**

Detailed information on and instruction for the collection of borehole and layer data with SEP3 you find on the NLfB website:

http://www.lbeg.niedersachsen.de/master/C39467367_L20_D0_I31802357_h1.html

General information on the use of input tools you find in the chapter:

[Data management](../../navigating-the-geodin-workspace/objects/data-management.md) <!-- src: help/03/2099 -->

### Import data sequence

The import of borehole measurements and data sequences to an existing object is available in the [Data sequences](../../data-collection/import/data-sequences.md).

To import external measurement values from ASCII click import and choose between Uniplot (CPT) and a free ASCII-file format (User Format).

To import an external ASCII file it must be conform to the following rules:

Example:

\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--

Project number ,Z-

Sequence ,DS 4

Depth, Cone, Friction, Friction Ratio, w/c

(m), (MPa), (MPa), (mV), (%)

0.02, -0.030, 0.00130, -2.944,

0.04, 0.020, 0.00180, -2.894,

0.06, 0.070, 0.00205, .844,

0.08, 0.120, 0.00230, -2.794, 1.118

0.10, 0.120, 0.00505, -2.794, 0.985

0.12, 0.270, 0.01293, -2.894, 1.373

\....

The file may contain any number of columns. The first column must contain depth in m below ground surface. Between individual values in one line there can be a separator but this is not obligatory. Any headers, titles or other text without depth information will be ignored.

By choosing the option **Import new data sequences** new data sequences will be created and existing empty data sequences without values will be deleted. In order to re-import data the option **Import values to data sequence '...'** should be used, whereby the data sequence must be pre selected and the existing data will be deleted. Note existing empty data sequences will not be deleted.

**How the Reduction factor works**

For long data sequences with small measurement increments the amount of data is considerable, although the density of information is not always necessary for presentation in borehole logs (e.g. a object with several data sequences measured at 1 cm intervals produces thousands of records - if a vertical scale of 1:100 is used then for each millimeter 10 values are to be displayed!). Hence the need for a reduction factor that removes selected values without influencing the curve path of a data sequence. This works in the following way:

When the reduction factor = 1 then no data reduction takes place. If the data sequence holds more than 500 values then all they are imported without any data loss, but individual values are not editable. When the reduction factor \> 1 then the values are imported according to the following rules :

• The first and last values of a data sequence are always imported

• Groups of points are read (4,6,8 or 10 values) whereby

Factor = 2 -\> 2 x 2 = 4 values read\
Factor = 3 -\> 3 x 2 = 6 values read\
Factor = 4 -\> 4 x 2 = 8 values read\
Factor = 5 -\> 5 x 2 = 10 values read

From each group of measurement values the minimum and maximum values with the corresponding depth are imported so that the peaks and troughs are unaffected. The bold numbers represent the number of values imported

• Each column is treated separately, so that a value in one data sequence does not necessarily have a corresponding depth in another sequence.

• The automatic reduction is calculated as follows:

when Number of Values\> 500 then factor = (Number of Values / 500) + 1\
The number of values imported = Number of Values / Reduction factor\
(Up to 500 value are imported without any reduction).

\
If a data reduction is not required/wanted, up to 10000 values can be imported per sequence. Hence data sequence with more than 10,000 values must use a reduction factor. In a borehole with several such data sequences the amount of data is several 100Kbyte, which slows down read and write times considerably.

Example of Data reduction: Reduction factor = 3 (i.e. from 6 values only 2 are imported):

  ------------- -------- --- ------ --------------
  Depth         Cone         Used
  (m),          (MPa)
  0.02,         1.850    1   X      (1. value)
  0.04,         1.500    2   X      (Min)
  0.06,         1.875    3
  0.08,         2.250    4
  0.10,         2.600    5
  0.12,         3.050    6   X      (Max)

  0.14,         3.900    1   X      (Min)
  0.16,         4.750    2
  0.18,         5.300    3
  0.20,         5.950    4
  0.22,         12.175   5
  0.24,         17.712   6   X      (Max)

  0.26,         19.706   1
  0.28,         21.700   2   X      (Max)
  0.30,         16.700   3
  0.32,         13.100   4
  0.34,         10.625   5
  0.36,         8.150    6   X      (Min)

  0.38,         7.000    1   X      (Max)
  0.40,         6.600    2
  0.42,         6.250    3
  0.44,         6.000    4
  0.46,         5.850    5
  0.48,         5.800    6   X      (Min)

  0.50,         5.850    1   X      (Min)
  0.52,         5.950    2
  0.54,         5.850    3
  0.56,         6.050    4
  0.58,         6.100    5   X      (Max)
  0.60,         5.950    6

  0.62,         5.850    1
  0.64,         5.800    2   X      (Min)
  0.66,         5.800    3
  0.68,         6.150    4
  0.70,         6.600    5
  0.72,         7.650    6   X      (Max)

  \.... \....

  20.00, 3      0.800        X      (last value)

  ------------- -------- --- ------ --------------

Display of data sequence using raw values (i.e. without reduction) at 1:100 (Fig. 1) and display of data sequence using reduction factor = 3 at 1:100 (Fig. 2):


**Use of import filters**

For the import of data sequences from ASCII files individual import filters can be defined, to make the reading of many files of the same type easier.

For this the following icons are available in the import dialogue:

 **Edit selected filtersNew import filterDelete selected filters**

The definition of individual import filters is stored in the file SONIFLTR.SYS in the folder SYSLIB. Make sure before creating new filters, whether you have the right to store data in this directory.

Give a name for the import filter and select the parameters of the columns to import.

**Multiple series to import:**

For each column to import (measurement series) a name and the number of decimal places to read of the values can be chosen separately.

The change between the series is done in the field \"For row\". The given name is used for naming the data sequence series in the GeoDin data bank. A change of the names after a standard import in the \"free format\" is avoided this way.

**Reduction factor:**

If you give in the entry field \"Reduction factor\" a value \<\>0, the data of the files are always reduced with this factor. If you enter 0, GeoDin calculates a reduction factor automatically, so that per measurement series maximum 500 values are imported. For an entry of 1 the data are imported without reduction (maximum 10000 values per row). For an entry \> 1 the data are reduced with this preset factor. <!-- src: help/03/2142 -->

### Create objects from data sequences

Often data sequences are imported into already existing objects. This is described in the chapter [Import data sequence](../../data-collection/import/data-sequences.md).

A special import is available for data sequences. For each imported ASCII file a object is created automatically. As name for the object the name of the ASCII file is used.

Because in objects, which are automatically filled by the import of ASCII files, the name is entered automatically (with the file name), it is recommended to create general data presets before the import of files. So also additional data fields are filled automatically (for example project, client etc.).

For this do as follows:

1.  Create a object of the type, into which the data sequence should be imported. The editing window of the general data appears.

<!-- -->

1.  Change the mode of the general data settings, click the appropriate icon.

<!-- -->

1.  Fill the entry fields with content now.

<!-- -->

1.  Lock the general data presetting (by clicking on the icon **Default general data**)

<!-- -->

1.  Delete the (unused) object. The result is still an empty project (except objects were entered already), but already with general data presets for the data sequences to be imported!

<!-- -->

1.  Now chose the method **Import data sequences** on the branch ***Objects*** and you get to the method described above.

You can select a certain group of files with the icon **Chosen files** or an entire folder with the icon **Entire folder**. Select also, in which object type the files should be used.

With the automatic reduction factor GeoDin calculates the reduction factor so , that no measurement series contains more than 500 measurement values. With the setting \'fixed\' you can define an individual factor, and with the value =1 completely deactivates the data reduction. <!-- src: help/03/2148 -->

### Calculating sequences

New series of data sequences can be calculated with the help of graphical templates or formulae. The formular can be defined in a special section of the GeoDin.ini file and is described at the end of this chapter. The graphical templates have to contain one or more [XY-diagram](../../data-visualization/layouts/x-y-diagrams.md) with the formulas. The calculation is done using already existing data sequence series, which have to be displayed in the diagram. The selected areas in the diagram define the conditions for the use of the formula.

**Example template:**


Supposed, the measurement series

Maximum pressure in MN/m²

Friction ratio in %

Mantel friction in MN/m²

are detected from a pressure data sequence ASCII.

A graph of the maximum pressure against the friction ratio in the XY diagram leads to the following example view:


The calculation of a new measurement series (for each single measurement point) is done on the base of the position of a measurement point in a defined area and the related **Surfaces** to this area. The definition of the area and the formulas are created and edited in the branch [Diagram design](../../data-visualization/layouts/layout-editor-basics.md).

***Important!*** *The [Measurement value graphic](../../data-visualization/layouts/measurement-value-graphics.md) of the graphic element XY diagram is decisive for the name of the new data sequence measurement series to create.*

A calculation layout can also contain several calculation diagrams:


In this case several data sequence series are calculated in one operation.

***Note:*** *Required for the use of the prepared templates for the calculation in the data sequence editor is the registry of this templates in the configuration file GeoDin.ini.*

Here a section with the name DataSequenceCalculation has to be created, which can contain any number of templates:

**Example:**

\[DataSequenceCalculation\]

Template1=c:\\programs\\GeoDin\\templates\\Example detection stiffness module.glo

Template2=c:\\programs\\GeoDin\\templates\\Kennwerte DIN 1055.glo

Template3=\$Ratio Parameter 1 / 2 \[,3\]\$ = \$\>DS:Parameter 1\$ / \$\>DS:Parameter 2\$

Template4=\$Sum Parameter 1 und 2\$ = \$\>DS:Parameter 1\$ + \$\>DS:Parameter 2\$

The first two entries are links to GeoDin layouts with XY-Plots. The templates 3 and 4 each contain a simple formula to calculate a new series. The syntax is:

\$Result name \[Options\]\$ = \$\>DS:Name of a series\$ Operator \$\>DS:Name of a series\$ \...\...

Before the equal sign the name of the result series is selected. In the brackets optionally the number of decimals for the result values can be selected. In template 3 the results will be created with 3 decimals and a comma as separator. Without these settings (like in template 4) the results will be displayed with 2 decimals and a point as separator as default.

If you want to include an existing series in the formula the series name has to be included in \$-signs. Additionally the key term \>DS: has to be entered after the first \$-sign (like in the formulae in the diagrams). If the term is for example \"Sleeve Friction in MN/m²\", the term in the formula has to be:

\$\>DS:Sleeve Friction in MN/m²\$

The formula can contain any mathematical operator. Use paranthesis in complex formulae for example:

\$\>DS:New series\$ = ( \$\>DS:Series 1\$ \* \$\>DS:Series 2\$ ) + \$\>DS:Series 3\$

The calculation of new series is done in the [Data sequences](../../data-collection/import/data-sequences.md) with the icon [Calculating sequences](../../data-collection/import/data-sequences.md).

**Selecting the Parameter**

After selecting the chosen template the calculation of one or more series (depending on the number of calculation diagrams in the template). The calculated series are afterwards available as new measurement series and can be used for graphic presentation.

**Calculating new series for several objects in at once**

Instead of working in the data sequence editor you can calculate series also in the method #GeoDinHelpLink:**Data checks and calculations**155#. You can start this method on a query or group of objects and select the function **Data sequneces: Calculating sequences**.

**Example**

In these examples, series are calculated step by step and presented as graphics.

1\) Representation of the constrained modulus

Open GeoDin.ini and insert the following section to define a template:

\[DataSequenceCalculation\]

Template1=C:\\Programme\\GeoDin 8\\Layouts\\Serien\\Beispiel Ableitung Steifemodul.glo

Template3=\$Verhältnis Parameter 1 / 2 \[,3\]\$ = \$\>DS:Parameter 1\$ / \$\>DS:Parameter 2\$

Template4=\$Summe Parameter 1 und 2\$ = \$\>DS:Parameter 1\$ + \$\>DS:Parameter 2\$

2\) Representation of the constrained modulus over the depth

Template1=C:\\Programme\\GeoDin 8\\Layouts\\Serien\\Steifemodul Tiefe.glo

Template3=\$Änderung des Steifemoduls mit der Tiefe \[,3\]\$ = \$\>DS:Parameter 1\$ / \$\>DS:Parameter 2\$ <!-- src: help/03/4059 -->

### Import general data

The method **\"Update general data\"** imports or updates general data from the external files into **existing GeoDin objects**.

The method **\"Import general data\"** creates **new GeoDin objects** based on general data from external files (MS-Access, Excel, text files, CSV files).

For the import of external data the following steps are necessary:

**Data source**

This opens the external file or database containing the data to be imported.

**Object link**

Here the assignment of the data sets to be read in to a GeoDin object is defined.

**Parameter links**

Define here the assignment of the columns to be read in to GeoDin parameters of the selected object type.

[Import](../../data-collection/import.md)

Here further settings for the import are made, see a preview of the importable data and execute the import.

**Save and load configuration**

All settings of an import process can be saved in a configuration file.

This means that subsequent imports with the same or similar data can be carried out much more quickly without having to make all the assignments again. When loading a configuration file, it is also possible to take over only parts of the configuration settings. This is useful, for example, if the parameter assignments of your import files are always identical, but the object assignment must be made anew in each case. To do this, activate the configuration settings to be adopted in the \"Adopt configuration settings\" dialogue.

**Group of imported objects for \"Import general data\"**

When importing data as new objects, a group with the name ***New objects created / imported on (date)*** is automatically generated and added to the object manager. This makes it easier to edit the new objects, as you will find them all in one group (and not mixed up with already existing GeoDin objects). In addition, in case of errors during the import (for example, incorrectly assigned data field), you can delete the objects in one step (execute method **\"Delete all objects\"** on the group) in order to repeat the import. <!-- src: help/03/7174 -->

### Using the data entry grid

When performing data collection and organisation tasks using a grid, with data entry fields as columns and data records arranged in rows, there are many configuration options. A **view** of the data can be created with a few mouse clicks, which allows the order and visibility of the columns chosen to optimally present the data with respect to sorting, grouping and filtering of the current situation. These views can be saved with user defined names for later re-use.

**Column properties**

1.  The column width can be changed by clicking and dragging in the header.

<!-- -->

1.  By double-clicking the right-hand boundary of a column its width will be automatically adjusted to the length of the current content.

<!-- -->

1.  Clicking the column heading once sorts the data records in ascending order.

<!-- -->

1.  A further click sorts the data in the reverse direction (descending order).

<!-- -->

1.  By Ctrl-clicking a column header the sorting is removed.

<!-- -->

1.  Staggered sorting over several columns can be achieved Shift-clicking a column header, whereby the column chosen is lower in the hierarchy than the previously sorted column.

<!-- -->

1.  The type of sorting is indicated by a triangular symbol in the column.

<!-- -->

1.  The top left corner of the data input grid contains a button to allow the visibility of columns can be toggled on and off.

**Selecting data records**

Several data records can be selected at once by clicking the top-left button in front of each data record. By keeping the mouse button depressed after the first click and dragging the mouse to another part of the data input grid several records can be chosen. The area selected is shown in a different colour. Alternatively you may use the Shift-key to highlight an area or the Ctrl-key to select individual data sets. The key combination Ctrl+A can be used to select all data records.

**Grouping data records**

Data records can be grouped using the contents of one or more columns. Select and drag the column header to the area above the column headers. The data records are now arranged in groups within a column according to its' contents. Each group is automatically given a header which contains the name and contents of the data record. More hierarchal grouping is achieved by dragging further column headers onto the grouping area. Note: When adding a data record to a group (Insert or Ins) all contents of the parent group are automatically added to the new data record. Manual entry is not necessary and the data record automatically belongs to this group. Normally a grouping column is not visible as a single column. Should this be the case and the contents of a data record change, then this data record will be automatically moved to the relevant group when saving.

***Attention!***

Normally a calculated data field is locked by default, so that the value is pre-determined and cannot be changed by the user.

Unexpected behavior may occur, when entering new data records in groups below locked data fields.

If you group a data record by a locked data field and add a new data record afterwards, it is not mandatory for GeoDin to use the grouping value as the content for the locked data field in the new data record, but rather to use the calculated value by default.

The grouping value has priority for unlocked data fields even if the grouping value overwrites an older one. It is equal to a direct overwrite of the data field by the user.

**Example:**

If you group by a locked data field, such as the username, and another user adds a new data record, therefore with another username, the locked data field USER will be filled with the default value. But previously the grouping has been done with another username. Due to that the new data record does not fulfil the grouping value and will not appear in the current group. However the data record has been added correctly and can be found in another group.

Generally speaking, if a new data record is added when grouping by a locked data field and the values both in the grouping field and the new data record do not match, the data record will be moved to the fitting group. The data record still exists, but is not shown in the current group.

**Filtering data records**

You can use filters to define which data records are shown. On the right-hand side of a column header there is a pop-up menu which offers a range of quick filtering options based on the contents of the data records. By choosing one or more of these filters, the number of data records in the grid can be constrained. The current selection is shown at the lower grid boundary. Here you have the option of temporarily removing the filter (checkbox next to the filter criteria), ending the filtering (closing the sub-window using the left-hand button), or choosing a recent filter from a pop-up list next to the current filter item. To set up detailed filter criteria and use individual logical connections and conditions click the \<Customize\> button. Filter definitions can also be saved or opened from a file.

**Column header context menu**

By right-clicking a column header a context menu appears in which diverse settings for the current column can be defined (visibility, sorting, grouping, alignment and width. The additional **Footer** option overlays a footer at the base of the grid. The contents of the footer are chosen in the next step by right-clicking in this area. The horizontal position of the mouse pointer determines the column, whereby the minimum, maximum, sum, mean (for numerical columns only) and the number of data records (all columns) can be shown.

**Managing settings**

A multitude of settings for different data combinations can be individually saved for later re-use. A separate toolbar is available:

\<**User defined view**\>

The drop-down menu allows the choice between saved views. The \<User defined view\> defines a view whose settings are automatically saved upon closing the grid.

 **Restore view**

This button restores the view to default setting.

 **Save current view**

This button allows you to save the current view using an individual name, or overwrite an existing view. Note: If you make changes to a saved view and neglect to re-save these, they will be lost upon changing to a new object. The following applies:

Current view is \<User defined view\>: upon changing from one object or editor to another, the view will be exactly reproduced as when you left it.

Current view is a saved view: upon changing from one object or editor to another, the view will be reproduced as defined by the last saved view settings. Subsequent unsaved changes are disregarded.

 ** Delete current view**

This button removes the current view (e.g. when it is no longer needed).

The management of these settings is user-specific on each PC. <!-- src: help/03/8586 -->

### Check measurements

By using this method you can check and evaluate measured data sets.

The procedure:

GeoDin graphic documents must be inserted below the object. It is irrelevant if these objects are linked or embedded in a database. The method provides all of the graphics for the currently selected object of the GeoDin Object Manager. If the graphic contains a time series element including a regression series, it is possible to use this graphic for the evaluation of the measured data.

**Step 1**

Once you have selected a usable graphic this will be shortly analysed, a report will be displayed summarizing measured quantities as well as the configured influencing factors.

Use these details to identify or validate the underlying objects and regression parameters. The evaluation of the measured data will be executed by clicking the button \"continue\".

**Step 2**

Here you can see the results of the evaluation.

You will get a list of **Event** that have occurred during the calculation.

The different event groups can be switched on and off by using the buttons

   .

**Step 3**

Clicking the continue button you will be asked if you want to take in the evaluated measuring parameters into the database. Doing so the target fields of the event will be filled with the appropriately configured target values. Only at this point any data will be written into the database.

***Note:***

*If both the target field and the measuring parameter, meant for evaluation, are in the same data type, the data set of the measurement will be located and the dataset will be completed with the target value of the target data field. If there already is an evaluation for the data set, the existing information remains, which means that no data fields will be overwritten.*

*If the target field is of another data type, a new dataset will be created in this data type. Therefore the target field is filled with the target value of the event.*

*A separate target data type for events should contain a field with the name LINKSMPID. The SMPID of the triggering data set can be entered into this field during the evaluation of the data. Furthermore the target data type should contain fields for the triggering data type or the triggering parameter. You can choose this option in the data type manager of a certain measurement parameter under Special settings.* <!-- src: help/03/8719 -->

### Map view

The map view shows the location of the marked objects on an OpenStreetMap map, according to the coordinates stored in the general data.

An internet connection is needed for this.

If the object type being used supports the use of the EPSG code field in the general data and this is filled with a valid EPSG code, the object is displayed directly in the selected coordinate system according to the coordinates.

If there is no EPSG code in the general data, GeoDin tries to find the appropriate coordinate system using the existing data. A small preview tile is then created and displayed for each possible solution. For rough orientation, a small world map is displayed in the lower left corner of the tile when the mouse is positioned over one of these tiles. This should make it easier to find the right suggestion from GeoDin and select it with one click.

If GeoDin finds only one valid system, the tile preview is hidden and the main view is maximised directly.

If no valid coordinate system is found, a dialogue window opens in which the coordinate system to be used is requested. The correct display of all marked objects requires that the coordinates of the objects are based on the same coordinate system. <!-- src: help/03/10752 -->

### Update data sequences

This method allows you to import or update data sequences for existing objects. Simply choose the import files and define the coorelation betweem them and the objects.

You can choose a group or a whole folder by using the **Chosen files** or **Entire folder** options.

The name of the import file must match a data field of the objects. This field can be chosen from the **Object link** window pane. The file extensions are ignored for the files to be imported.

The button **Check object link** will analyse which files to be imported can be linked to existing objects and for which objects there are no files to be imported. The results are recorded in a log; no import is carried out at this stage.

After selecting an import filter, the import can be carried out.

***Note:***

If you have created your own customized import filter(s) these will be shown in the **\"Import filter\"** list but can only be edited in the data sequence editor. <!-- src: help/03/10809 -->

### Data source

As a data source the following formats can be used:

· MS Excel (\*.XLS, \*.XLSX, \*.XLSM)

· MS Access (\*.MDB, \*.ACCDB)

· Text-files (\*.TXT)

· CSV- files (\*.CSV)

· Shape- files (\*.SHP)

Navigate to the import file via the ![Open](.gitbook/assets/icons/open.png) **Open**  button and select it.

If the file can contain several tables, e.g. MS Excel or MS Access, please select the desired table via the drop-down box below.

For MS Excel files or text files, it can additionally be set whether the first line of these files contains column labels, which is often the case.

In addition, the date format used for formatting a date in these files can be specified. GeoDin takes this setting into account when converting dates later.

The records can be marked in the preview and removed by using  button if these records are not to be considered for the import. The records will only be removed in this preview and will not be used for the import, your import file will not be changed.

**Notes on importing MS Excel files(\*.xls, \*xlsx)**

GeoDin uses a Microsoft OLEDB database connection to access an MS Excel file. This driver (not GeoDin!) interprets the first rows of the table to determine the field format of the column. If the driver concludes that the values are numerical, the column is formatted numerically and any text in this column (i.e. content that is not numbers) is lost.

In this case it helps to format this column in MS Excel with the cell format \'Text\' BEFORE opening it with GeoDin. The contents will then be visible.

Regardless of this, however, GeoDin will generate an error if an attempt is later made to import cells with text content into a numeric target field of the GeoDin database, as this is not allowed.

MS Excel stores all time data internally as real numbers. This applies to the date as well as to minutes and seconds. Since GeoDin manages date (type date) and time (type string with length 5) separately for reasons of compatibility, these two pieces of information must be available separately when importing.

If you split a combined time information from date and time into two columns in MS Excel, which then display the date and time, the time is internally available as a full time information with the date 0 (corresponds to the date 31.12.1899).

When importing such preset data, the string \'31.12\' will be entered as the result in the time field of GeoDin, which corresponds exactly to the first 5 digits of the zero date. One way to prevent this is to manage/save the minute field in MS Excel as text or to save the Excel table as a CSV (text) file and then import it. <!-- src: help/03/10893 -->
