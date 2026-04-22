---
description: Creating Objects
---

# Creating Objects

### Objects

A project may contain up to 9998 objects or boreholes. Because the number of projects in a database is unlimited, the number of objects in a database is also unlimited.

A object may be defined in the GeoDin system as an object that has at least a name and is related to a project. Objects can be boreholes, monitoring wells, cone testing holes as well as climate measuring stations, surface water collection points etc.

Each object must be defined by general data containing information like its name and where present its coordinates. Depending upon the type of object further information may then be entered and displayed, for example a borehole log, CPT results, a groundwater monitoring well. There are over 100 different types of objects ("Object types\*\*"\*\*) in GeoDin, which cover all types of data collection and presentation.

The default installation provides the user a set of object types, depending on the language version. Further object types can be installed from the CD. For example all German geological survey organizations (Geologische Landesämter) have their own input masks for which special syntax controls have been defined. Other international standards are supported (e.g. BS5930, NEN, ÖNORM) as well as specific national standards (e.g. Dept. of Geological Survey, Botswana). A project may contain several different types of objects as long as these are installed in the GeoDin-System folder. In addition there are controls to allow or to prevent the creation of certain types of objects (e.g. read only).

The difference between a measurement point and a object is that the former cannot be created directly - a measurement point is part of a object. For example a measurement point could be a point at which groundwater levels, groundwater or sediment chemistry values are recorded. In each case GeoDin will generate the measurement point automatically, when either a filter or a sampling point is defined. In special object types, like climate measuring stations, the measurement point is generated, when the object is defined.

In the GeoDin object manager a project is always subdivided into objects and measurement points. Both categories may be further subdivided depending on what data is to be collected. As a user you cannot alter this arrangement, because each subdivision is automatically generated.

Datenbases

DemoDB

GeoDin Demo

Objects

All objects

General borehole log

Measurement points

### View in Object Manager

A list of objects and measurement points is shown in the GeoDin object manager, either by clicking on the group header name or on the plus <**+**> symbol:

GeoDin Demo Project

Objects

All objects

Standard outcrop SEP compatible

Borehole 01

Borehole 02

Borehole 03

Borehole 04

Cone penetration test

Measurement points

Filter

Samples

B01: (1.4-1.8m)

B01: (2.5-2.9m)

B01: (5.2-5.6m)

The objects are shown with their longname. The measurement point identifier is made up of the shortname of the object, the name of the measurement point and depth (where present).

In addition to these automatically generated views, you may use queries and groups to generate any number of completely different views where both the type and amount of information displayed can be controlled (e.g. the SHORTNAME with the height of ground surface in brackets). Hence the way that objects are displayed can be customized to your way of working.

GeoDin Demo Project

Objects

All objects

Standard outcrop SEP compatible

Borehole 01

Borehole 02

Borehole 03

Borehole 04

Cone penetration test

Short name (height)

B01 (105m)

B02 (107m)

B03 (107m)

B04 (115m)

Both the entries "Borehole 01" and "B01 (105m)" refer to the same object in the database. What you see in the GeoDin object manager is simply a "**view**" of the database. The entry "Borehole 01" is only present once in the database, although it may appear several times in different views. Hence an object (e.g. a borehole) that appears under "All objects" and under the specific object type exists only once in the database but is presented in two different views. Views are the result of queries - in this example GeoDin automatically generates the queries. The chapter **Creation of queries and groups** explains the concepts of queries and groups more detailed.

### Create object

A new object can be accessed when  _**Object**_, _**All objects**_ or the particular **object type** (in the example "General borehole log") is selected in the GeoDin object manager.

GeoDin Demo Project

Object

All objects

General borehole log

Create a new object with a double-click the method  **New object**:

If the method was selected whilst either _**Object**_ or _**All objects**_ were selected, a dialogue field appears containing the option to choose, which type of object should be created.

The option of choosing the unit system to be used is only available for certain object types that support this feature.\
\
In the dialogue you can optionally choose that -Data types are created automatically\*\*-\*\*. For this it is required, that the object type has the permission and that a measurement program for data types has been created ([Measurement programs](../measurement-values/working-with-measurement-data.md)). If at least one data type for the chosen object type, has not yet been created, then this option can be activated. Upon adding this object the relevant tables for the data type with the parameters of the measurement program will be created.

Objects

All objects

General borehole log

New object

If a specific object type was selected whilst starting the method **"New object"**, then the same type of object will be created.

After creating a object it is automatically inserted into the GeoDin object manager and the [Data management](data-management.md) mask is opened.

If you mistakenly create a new object you can undo this by clicking the **Cancel Edits** button in the data collection:

After a warning you may then delete the object by clicking on **OK**.

Normally however you will want to continue in the **"data management"** mask using one of the five editors: General data, Layer data, Sample data, Well design and Data sequences. Detailed information is available in the following chapters.

Once you are in the data management mask, there is no need to change over to the GeoDin object manager in order to create another objects. Instead just click the button **New object**. This may be repeated as often as you like.

### Import and export

The following chapters describe the import and export of data sequences and data of various exchange formats.

[Import data sequence](../../data-collection/import/data-sequences.md)

[Create objects from data sequences](../../data-collection/import/data-sequences.md)

[SEP import](../../data-collection/import/special-imports.md)

[SEP1 export](../../data-collection/export.md)

[Export shape files](../../maps/cad-and-gis-exports.md)

[XML export](../../data-collection/export/geodinml-export.md)

### Delete objects

Alternatively you may choose a group of objects to delete all at once by selecting the appropriate group in the GeoDin object manager

All Objects

Borehole 01

Borehole 02

and selecting the option **"Delete all objects"**.

_**WARNING:**_ _THIS METHOD CANNOT BE UNDONE!_

### Create objects from data sequences

Often data sequences are imported into already existing objects. This is described in the chapter [Import data sequence](../../data-collection/import/data-sequences.md).

A special import is available for data sequences. For each imported ASCII file a object is created automatically. As name for the object the name of the ASCII file is used.

Because in objects, which are automatically filled by the import of ASCII files, the name is entered automatically (with the file name), it is recommended to create general data presets before the import of files. So also additional data fields are filled automatically (for example project, client etc.).

For this do as follows:

1. Create a object of the type, into which the data sequence should be imported. The editing window of the general data appears.
2. Change the mode of the general data settings, click the appropriate icon.
3. Fill the entry fields with content now.
4. Lock the general data presetting (by clicking on the icon **Default general data**)
5. Delete the (unused) object. The result is still an empty project (except objects were entered already), but already with general data presets for the data sequences to be imported!
6. Now chose the method **Import data sequences** on the branch _**Objects**_ and you get to the method described above.

You can select a certain group of files with the icon **Chosen files** or an entire folder with the icon **Entire folder**. Select also, in which object type the files should be used.

With the automatic reduction factor GeoDin calculates the reduction factor so , that no measurement series contains more than 500 measurement values. With the setting 'fixed' you can define an individual factor, and with the value =1 completely deactivates the data reduction.

### SEP1 export

You export objects in the SEP format with the method **"SEP export"**, within the method **"Publish and export"** which is available at the entry _**All objects**_ or in queries and groups.

You can export the boreholes as single files or combined in a file (SEP catalogue).

Optional the entry of vowel mutations is possible in the DOS output.

Note that not all object types can be exported in the SEP format. If for example all boreholes, have been entered in the ÖNORM, the export function for this borehole is not available. The location types, which contain the addition SEP compatible in the name, can always be exported in the SEP format.

### Import general data

The method **"Update general data"** imports or updates general data from the external files into **existing GeoDin objects**.

The method **"Import general data"** creates **new GeoDin objects** based on general data from external files (MS-Access, Excel, text files, CSV files).

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

This means that subsequent imports with the same or similar data can be carried out much more quickly without having to make all the assignments again. When loading a configuration file, it is also possible to take over only parts of the configuration settings. This is useful, for example, if the parameter assignments of your import files are always identical, but the object assignment must be made anew in each case. To do this, activate the configuration settings to be adopted in the "Adopt configuration settings" dialogue.

**Group of imported objects for "Import general data"**

When importing data as new objects, a group with the name _**New objects created / imported on (date)**_ is automatically generated and added to the object manager. This makes it easier to edit the new objects, as you will find them all in one group (and not mixed up with already existing GeoDin objects). In addition, in case of errors during the import (for example, incorrectly assigned data field), you can delete the objects in one step (execute method **"Delete all objects"** on the group) in order to repeat the import.

### Check measurements

By using this method you can check and evaluate measured data sets.

The procedure:

GeoDin graphic documents must be inserted below the object. It is irrelevant if these objects are linked or embedded in a database. The method provides all of the graphics for the currently selected object of the GeoDin Object Manager. If the graphic contains a time series element including a regression series, it is possible to use this graphic for the evaluation of the measured data.

**Step 1**

Once you have selected a usable graphic this will be shortly analysed, a report will be displayed summarizing measured quantities as well as the configured influencing factors.

Use these details to identify or validate the underlying objects and regression parameters. The evaluation of the measured data will be executed by clicking the button "continue".

**Step 2**

Here you can see the results of the evaluation.

You will get a list of **Event** that have occurred during the calculation.

The different event groups can be switched on and off by using the buttons

.

**Step 3**

Clicking the continue button you will be asked if you want to take in the evaluated measuring parameters into the database. Doing so the target fields of the event will be filled with the appropriately configured target values. Only at this point any data will be written into the database.

_**Note:**_

_If both the target field and the measuring parameter, meant for evaluation, are in the same data type, the data set of the measurement will be located and the dataset will be completed with the target value of the target data field. If there already is an evaluation for the data set, the existing information remains, which means that no data fields will be overwritten._

_If the target field is of another data type, a new dataset will be created in this data type. Therefore the target field is filled with the target value of the event._

_A separate target data type for events should contain a field with the name LINKSMPID. The SMPID of the triggering data set can be entered into this field during the evaluation of the data. Furthermore the target data type should contain fields for the triggering data type or the triggering parameter. You can choose this option in the data type manager of a certain measurement parameter under Special settings._

### Map view

The map view shows the location of the marked objects on an OpenStreetMap map, according to the coordinates stored in the general data.

An internet connection is needed for this.

If the object type being used supports the use of the EPSG code field in the general data and this is filled with a valid EPSG code, the object is displayed directly in the selected coordinate system according to the coordinates.

If there is no EPSG code in the general data, GeoDin tries to find the appropriate coordinate system using the existing data. A small preview tile is then created and displayed for each possible solution. For rough orientation, a small world map is displayed in the lower left corner of the tile when the mouse is positioned over one of these tiles. This should make it easier to find the right suggestion from GeoDin and select it with one click.

If GeoDin finds only one valid system, the tile preview is hidden and the main view is maximised directly.

If no valid coordinate system is found, a dialogue window opens in which the coordinate system to be used is requested. The correct display of all marked objects requires that the coordinates of the objects are based on the same coordinate system.

### Update data sequences

This method allows you to import or update data sequences for existing objects. Simply choose the import files and define the coorelation betweem them and the objects.

You can choose a group or a whole folder by using the **Chosen files** or **Entire folder** options.

The name of the import file must match a data field of the objects. This field can be chosen from the **Object link** window pane. The file extensions are ignored for the files to be imported.

The button **Check object link** will analyse which files to be imported can be linked to existing objects and for which objects there are no files to be imported. The results are recorded in a log; no import is carried out at this stage.

After selecting an import filter, the import can be carried out.

_**Note:**_

If you have created your own customized import filter(s) these will be shown in the **"Import filter"** list but can only be edited in the data sequence editor.
