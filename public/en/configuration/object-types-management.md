---
description: Object Types Management
---

# Object Types Management

### Object types

The default setting installs only a limited number of object types. The international English version installs the "General Borehole Log". You will find this under the **System** tab.

There are many more object types for all the different language versions of GeoDin, which each user may install directly from the GeoDin DVD. These include separate object type for all the geological survey organizations in Germany as well as several international types in English and Dutch. Additionally there is a range of object types covering other fields of data collection that are not related to boreholes (for example climate measuring station, surface water measurement point).\
\
&#xNAN;_**Note:**_ _There are also special FUGRO object types available only for internal company use._

The installed object types are shown in the directory **Configuration**.

To install further types double-click the [Install](../installation/express-installation.md) method and choose the appropriate folder from the chosen directory on the GeoDin DVD.

**Downward compatibility as of GeoDin 9**

Please note that databases created with GeoDin 9 can only be opened with GeoDin 9 and 8.4. Databases created with GeoDin version 8.3 or older must be updated once to the new database structure. When opening an older database in GeoDin 8.4 or higher, a window appears in which you are shown the changes to be made and can agree to the process. The database can now only be used with GeoDin 8.4 or higher.

New layouts created in GeoDin 9 cannot be used with older versions. However, older layouts can be used with GeoDin 9.

### Fill patterns

All the fill patterns and symbols available in the GeoDin system are displayed in the object manager of the system objects (via the **System** tab).

This is based on the files stored in the SOURCE folder of the GeoDin installation. The folder contains files with the extension:

.SGA - Signature Table

.SYA - Symbol Table

These files contain the definitions of the fill patterns and symbols in text format and can be modified using the  **"Edit"** method.

The formats of the fill pattern and symbol definitions are described in the chapter [Fill patterns](fill-patterns-and-symbols.md)

The drawing definitions can be edited in the \<Instructions> text window.

Using the **Preview** button or the **F4** key, the fill patterns and symbols can be greatly enlarged in the preview bar on the right. If you select a fill pattern or symbol in this bar, it will remain visible as the top entry the next time you activate the preview. Double-clicking on a fill pattern or symbol in the preview list takes you to the first line of the associated definition statement.

To finally apply the changes to the drawing definitions, the **Create** button must be used. The current definition file is then compiled and the result is stored in the SYSLIB folder. The compiled signature tables get the file extension .SGN, while compiled symbol tables get the extension .SYM.

To create a new fill pattern or symbol table, simply copy an existing file or create a new text file with the appropriate extension (.SGA or .SYA) in the SOURCE folder. The new file is now displayed in the object manager of the system objects under [_Fill patterns_](fill-patterns-and-symbols.md) or _**Symbols**_. If GeoDin has not been closed in the meantime, you can update the display by right-clicking and selecting the _**Refresh**_ menu item for the corresponding entries.

_**Attention:**_ _The fill pattern \[Empty#0]\[TYPNULL]\[$00FFFFFF] must be defined as the first available fill pattern in every fill pattern table._\
&#xNAN;_&#x44;epending on the local language version, GeoDin may come with a wide variety of fill pattern tables._

_The fill pattern table INTENG.SGN (Source INTENG.SGA) contains the English version of the BS5930 fill patterns and symbols and is therefore identical with the fill pattern table GEODDEF.SGN (Source GEODDEF.SGA). The graphical representation of boreholes uses the INTENG fill pattern table for English language objects. Hence changes to the GEODDEF fill pattern table do not affect the display of boreholes. When filling polygons and other areas in the layout editor, the signature table depends on the selection in the corresponding fill dialogue._\
&#xNAN;_&#x46;or special object types (for example "Geotechnical borehole" or "Botswana Dep. of Geol. Survey") there are custom made fill pattern files (GEOTECH1 and BOTSWANA)._

### Edit

Locking the edit function prevents the **Configuration** from being changed by mistake.

**Locking the System Objects**\
\
To change the lock options make the following new entry under \[System] in the configuration file GeoDin.ini :\
\
&#xNAN;_\[System]_\
&#xNAN;_&#x53;ysPath=C:\Programme\GeoDin\SYSLIB\\_\
&#xNAN;_&#x53;ysObjChange=false_

Restart GeoDin and click the **System** tab. Under system configuration the method  **"Remove edit security"** is now shown.

Double-clicking the method opens the dialogue for setting the password the first time. The entered password is used to unlock the editing of the system objects later.

Enter a password, confirm it and press **OK**. The encrypted password is stored in the GeoDin.ini. If you forget your password you must delete both the SysObjChange and SysPassword entries from the configuration file and then define a new password.

Of course this protection is only good in so far as write permission is granted (or forbidden) for the configuration file in your network.

In a password protected GeoDin environment, only viewing methods are available in the system object manager, so that unwanted changes are not possible (i.e. they cannot be edited).

The administrator can remove the protection by double-clicking the **"Remove edit security"** method and entering the correct password.\
\
After entering the password all editing functions are available. This restores full edit options to the system configuration.

### Uninstall

To delete an object type that is no longer required, select this type from the object types list and double-click the method **"Uninstall object type"**.

If you have not made any changes to the dictionaries or masks, you can remove them in the same step so that unnecessary files are deleted from the GeoDin system directory (default setting).

### Install

You have 3 options to install new object types:

Select a folder containing the object type(s), for example the GeoDin DVD. All object types from this directory are displayed in a list. Here the entire subfolder structure of the folder is searched, therefore you can use this method also to detect object types.

Select a ZIP folder containing the object type(s), which are displayed in a list. If the ZIP file is password secured, you will have to type the password in during installation.

Here all object types availble on the GeoDin website are listed, sorted after languages. GeoDin will try to establish a connection to the Internet. If you use a Internetproxy, please configure it in the [Proxy configuration](../installation/infrastructure-and-environment-setup-guide.md).

After you have selected the required object types with either of these methods click [Install](../installation/express-installation.md). You can install several object types in succession. Select another directory and repeat the installation.

### GeoDin licence management

The following information of the current license is shown:

_Serial number:_ \*\*\*\*\*\*\*\*\*\*\* 10-13 digit number

_Version:_ For example 8.0

_Number of available licenses:_ e.g. 1 GeoDin

_Number of available modules: e.g._ 1 Premium

1 Logs

\*\*1 Site

_Option:_ e.g. Premium

_System edit lock:_ Yes/No

**Updating a license with an update file**_**Attention:**_ _The HASP dongle has to be connected directly (local) to the PC to perform the license update! For GeoDin Version older than 9.5, only!_

Click on the folder symbol and chose your update file (for example yourSerialnumber.upd). The new license information is shown. If the information is displayed correctly, click on the icon **Change license**.

After confirming the new license is installed. A new program window opens, and the new license file is installed on clicking  **\<Apply Update>.**

Do not interrupt the update process!

After the message "Update written sucessfully" close the window.

_**Note:**_ _If you select the wrong license file the following message is shown: "The license file was not created for the connected dongle."_

### Export object type

This method can be used to create a Zip File from one or more object type definitions. After the export you can send the ZIP-file containing the object type to another GeoDin user. The recipient can install the object type(s) directly from the Zip file (See also [Install](../installation/express-installation.md)).

All necessary data of the object type (structure definitions, dictionaries, masks, data types and comparison lists) are included in the Zip file. Therefore select the desired object type(s). It is also possible to include a layout folder for this object type.

Start the export by clicking the **Export** button.

### Configure SEP3 conversion

The configuration is used to control the conversion of boreholes coded in SEP1 to the SEP3 standard.

Several object types are supported, for which different object conversions exist. Such an object conversion can contain one or more object types. The standard SEP1 object types are all combined in one object conversion. The extended specifications, which distinguish the individual SEP1 object types from each other, have no relevance for the conversion, as they do not have corresponding target fields in SEP3.

When converting to SEP3, it must be taken into account from the outset that certain information will be lost, since not all data fields occurring in the SEP1 definition also exist in SEP3.

An object conversion consists of three components:

**SettingsAllow incomplete conversion**

The conversion is based on an error analysis and the correction of constructs of the coding. If a construct cannot be corrected, the translation of a layer is incomplete. The option decides whether the incomplete translation should be used. If the option is activated, the translated content, which was determined until the unresolved error occurred, is entered into the layer.

If necessary, this results in a layer description with incomplete content. In the majority of cases, however, the main rock is taken over correctly and a correct representation in the drilling profile is achieved.

If the option is deactivated, the corresponding SEP3 field remains empty. In this way, you have a very quick overview of where corrections need to be made.

**Correct main rock**

In special cases (merging of SEP1 descriptions from different resolved table columns) secondary rocks can be used as capital letters. If necessary, secondary rocks may also occur in the main rock section (before the semicolon). These errors can be corrected, provided that the dictionary S3PETRO : UPPER is defined with corresponding entries in the layer data transformation.

**Example:**

fS;mS,kf becomes fS;ms,kf

**General data transformation**

In general, all fields with the same name and type are transferred from SEP1 to SEP3. No changes are made to the content.

If fields with different names are to be transferred, at least one assignment must be entered in the transformation. At least the field names of the input field (source) and target field (target) as well as the name of the SEP3 table are required.

If additional content changes are to be made, assignments of the contents to be translated must be entered.

It can be specified that an entry is only accepted if the target field is empty.

A default value can be specified that is entered if no content is available in the input field (source).

**Layer data transformation**

Several translations of contents can be defined for the individual fields of the layer descriptions. The individual translations differ according to the types of incoming information.

CODE

After the field content has been broken down into the individual keys, a check is made to see whether an individual key is to be replaced by another. This is especially the case if keys were renamed when defining the SEP3 dictionaries.

PHRASE

Before the field contents are resolved into individual keys, combinations of keys (phrases) are exchanged.

EXACT

A complete field content is replaced by another.

UPPER

A special set of abbreviations that interchanges the main and secondary rocks if they are incorrectly used in the main or secondary rock area. Prerequisite for the execution of this translation is the activation of the setting "Correct main rock".

KLAR

Exchange of plaintexts by keys corresponding to the content.

### Edit parameter

The core technology of data types is the organization and management of parameters. There is no limit to the number of parameters for each data type, though by large numbers the data model (SDM and LDM, see [Data model](../navigating-the-geodin-workspace/data-types.md)) is an important consideration.

A new parameter can be added to the currently selected parameter group.

\*\*_Database Area:Parameter name/long name_

Long name of the parameter, can be of 140 characters.

**Short name/field name**

Short name of the parameter (max. 10 characters), labelling a table's column in SDM; must not contain blank and special characters; must not begin with a number; must be valid inside the data type.

**Type**

Text (characters/string)

Integer (small)

Integer (long)

Double (float)

Date

Timestamp (date/time)

Memo

**Field length**

This setting defines which field type should be used in the database.

The maximum length of the field depends on the type:

Text 254

Integer (small) 4

Integer (long) 8

Double 20

The field length for memo and date/time fields is set by the system.

**Decimal places**

Decimal places are adjustable for Double (float) and with the _**Field format**_ only. The maximum is 10 and must be at least 2 places smaller than the field length.

**Field format**

The number of entered decimal places can be changed here once again. Enter the total field length and the number of decimal places in the format _\[fieldlength.decimalplaces]._ The number of digits before the decimal point is then calculated from the total field length, minus the digits after the decimal point and minus the one digit for the decimal separator.

**Example:** 3.1 for a single-figure number, a decimal mark and one decimal place (total length of the field=1 place for the single-figure numer + 1 place for the decimal mark + 1 place for the one decimal places).

**Allow negative values**

The parameter can consist of negative values (example: redox potential). In case of concentrations negative values represent data below the limit of detection, this option must not be used for this.

This option is not available for integer types.

\*\*_Scale units:Scale unit_

no restrictions for entering a scale unit (max. 40 characters); optional

**dyn scale unit**

This is a scale unit, which can be used for metric (meter, centimeter etc.) or english (feet, inch etc.) values.

\*\*_Special settings:Options_

· offset (only for numeric parameters)

Explains, that the concerning parameter acts as an offset field. For certain data types it is used as an information of the remove of the sampling starting point. According to this the absolute depth of the concerning investigation is calculated.

· Mandatory field

The field must be filled in for the record to be saved.

· Write Protect

The parameter is displayed in the measurement editor, but it cannot be edited.

· One- time editing/ single editing

This setting causes a special behavior of the input field. If the input field is empty, a new content can be entered and edited. After completing the input with \<Enter> or by leaving the input field, the input content is locked. It is then no longer possible to change the input. To change the existing input, the entire content must first be deleted by using the \<Enter> key. The input field will be completely cleared. Now a new single input in this input field is possible. A use case for this option is an input field for a BarCode scanner. After reading in the BarCode, a change of the character string is to be prevented. However, a re-reading of the BarCode is possible after using the \<Del> key.

· inorganic (only for numeric parameters)

Qualifies a parameter as inorganic to be used for special lists comparison with calculations (see there).

· calculated (only for numeric parameters)

The parameter cannot be edited, but it will be calculated with a formula.

· scientific notation (only for floating-point numbers)

This option conduces the handling of very small values because their registration would require a large number of decimal places. The notation of the data entry is done by the rule "9.99 E-8".

· use last value

If this option is activated, the value of the parameter is transferred from the previous row, when a new dataset is created in the measurement value editor.

_**Note:**_ _This option can be used only if you activate the option -copy last record- in the drop-down-menu in the options of the data set. To get there you have to use the method_ _**"Measurement data"**_ _for the data set and select the button_ _Options. This should be located on the right by default. Open the drop-down-menu with the "Data set defaults" and select **copy last record**._

· column fixed

This option defines, that the columns inside the measurement editor are fixed from the left up to the column of the parameter. If the row is longer than the range which can be displayed in the measurement editor the fixed columns will stand still while the right section scrolls sideways.

· triggering data type (event field)

This option can be used for parameters meant to accept the triggering data type of an **Event** as data content during a regression analysis.

· triggering parameter (event field)

This option can be used for parameters meant to accept the triggering parameter of an **Event** as data content during a regression analysis.

**Default value**

This value will be entered in the relevant parameter automatically when creating a new data set.

**Dictionary** (only for text parameters)

An existing dictionary can be set for the parameter. If you want to set a new dictionary for the parameter, you can do this by the help of the button .

**Dictionary input**

_One key, display of the key_

The input field contains a button for the search in the dictionary.

The input field allows the input of a single key.

This key will be written into the database.

**Example:** Display: c1- Database content: c1

_Multiple keys, display of the key_

The input field contains a button for the search in the dictionary.

The input field allows the input of a single or multiple key.

The separators between the keys (e.g. comma) will be set in the dictionary.

The string will be written into the database.

**Example:** Display: c1,c2- Database content: c1,c1

_One key, display of the long text_

The input field contains a button for the search in the dictionary.

One single long text can be taken over from the dictionary or entered directly.

The key belonging to the long text is going to be written into the database.

**Example:** Display: musty - Database content: mo

_Multiple keys, display of the long texts_

The input field contains a button for the search in the dictionary.

The input is only possible by the help of the button. It is possible to choose more than one term from the dictionary, they will be displayed in the input field afterwards.

The string consisting of the comma separated keys is going to be written into the database.

**Example:** Display: rotten/foul, musty- Database content: fa, mo

_One key/standard text, display of the long text_

The input field contains a button for the search in the dictionary.

A standard text of key can be entered in the dictionary. After leaving the input field the long text will be displayed there.

The associated key is going to be written into the database.

**Example:** Display: musty- Database content: mo

_List, keys in database_

An entry can be chosen in the flip up box.

The associated key is going to be written into the database.

**Example:** Display: blue- Database content: bl

_List, long text in database_

An entry can be chosen in the flip up box.

This entry is going to be written into the database.

**Example:** Display: black- Database conten: black

_Proposal list, long text in database_

An entry can be chosen in the flip up box. Any other can be entered as well.

This entry is going to be written into the database.

**Example:** Display: Suggestion list did not contain the desired term- Database content: Suggestion list did not contain the desired term

**Supplementary information**

If the acquisition of additional parameter information has been set for the data type default values can be arranged for these extended information, which are useable in the laboratory report.

The entries are entered following the scheme

\[name]=\[content].

The following default values can be defined:

DEFAULTMETHOD method

DEFAULTMETHODDIN method (DIN)

DEFAULTMETHODEU method (EU)

DEFAULTMETHODISO method (ISO)

DEFAULTMETHODCOMMENT method comment

DEFAULTQUANTIFLIMIT limit of quantification

DEFAULTCOMMENT comment

DEFAULTLABORATY laboratory

DEFAULTSAMPLENR sample number

DEFAULTDETECTIONLIMIT limit of detection

DEFAULTCONFIDENCE confidence interval

DEFAULTMATRIX matrix

DFEAULTLABDATE laboratory date

DFEAULTLABTIME laboratory time

DEFAULTEXTRACTION extraction

DEFAULTPLAUSIBILITY plausibility

DEFAULTSAMPLEPREPARATION sample preparation

DEFAULTRESULTREFERENCE result reference

DEFAULTINTERPRETATION interpretation

**Comments**

Any arbitrary comment can be entered here for the parameter. This comment is only visible on the system page and will not be save in the database.

**Set-up of the information for UBA-export**

The definition of this format is based on "Austausch von Grundwasserdaten (Annex II.x 12.04 zur Verwaltungsvereinbarung über den Datenaustausch im Umweltbereich zwischen Bund und Ländern) / Tischvorlage für die Sitzung des LAWA AK 'Optimierung des Grundwasserdienstes' am 04.02.1999 in Chemnitz".

To perform the export into UBA-format you have to deposit formatting information at the concerning parameters. After selecting a parameter to be exported the dialogue for editing the parameter setting will be opened.

A new dialogue offering the possibility to set additional properties to a parameter can be opened with the button "Supplements".

The input possibility for "additional properties" is interesting here. By an entry, as shown in the figure, the parameter will be qualified for the export. The structure of the entry looks like this:

name of

the property measurement size no. scale unit separation code limit of determination

UBA= 1244 07 1 0.1

By the identifier "UBA=" the property will be recognised to be necessary for the UBA-export. Measurement size no and separation code are information to be taken from the document mentioned above (table coding of the measured values and scale units for groundwater data). The target scale unit for the export is defined by the code number for the scale unit (see the document above). If necessary, a conversion may be executed during the export. The limit of determination is a standard information. If a limit of determination has been registered for the concerning parameter, it will be used for the export. Specific information, following the name of the property, are separated by comma. The decimal character for the limit of determination is the point.

### Data types

Data types are in GeoDin the basis for the management of measured values related to measuring points (object, filter, sample).

When creating a database, initially no data types are installed. Only by adding them in the data type manager are they set up in a database. The data types can be configured in their properties, structures and contents. The data types created and/or edited in this way then form the basis of the measured value acquisition in the specific application.

### Import data types

Use this method to import data types.

First choose a ZIP archive, which contains the data types.

All data types contained in the archive will be listed and selected automatically.

With a click on the button **Import** all selected data types will be installed, inclusive of all necessary dictionaries. In the case that dictionaries already exist, only more recent ones will be replaced.

### Export data types

Use this method to export data types.

Select the appropriate data type from the list "Available data types". If you start this method on a single data type, this data type will be already selected.

Subsequently, please choose where you want to save the data type(s) as a ZIP archive.

Dictionaries necessary for the export are also included.

### Generate subnotes (Layer)

With this transforamation you can process layer data that are not stored in GeoDin table structure. For example, some object types in the stratified data tables contain not only the strata but also sub-strata and strata from other stratified dictionary versions for the same object. The simple, table-based transformation (generate sub-nodes) cannot always be used to output strata.

**Example**:

GeoDin stores SEP3 borehole logs with multiple logs versions. All the layer information is stored in the table S3SCHDAT. This table also stores the borehole log version in the field INTV, along with sub-layer information and sub-layer type (SART). To output the individual log versions use the transformation "generate sub-nodes (layers)"

Borehole

Interval

Transformation

Attribute

depthTop

depthBase

stratigraphy

### Complex data types

Using complex data types hierarchal relationships between measurement data records can be defined. The following figure shows a typical structure for a complex data type:

The data type HD1 is a complex data type with the parameters "HD1 Param1" und "Sum SD1 Param 1". The data types SD1, SD2 and SD3 are each subordinate to this data type with their own structure. A further data type SD4 is also subordinate to data type SD1. Any number of hierarchies can be configured.

**Configuration**

To configure subordinated data types there is the option **Data type groups** at the node of a datatype. To create a subordinate data type, first add a data type group to this branch and give the group a name. Groups logically combine the subordinate data types. Within a data type group you can create subordinate data types (identical to a "normal" datatype). These have their own parameter list and their own formulas, etc. Subordinate data types also have a data type group branch in which further data type groups and data types can be created.

**Data collection**

In the data entry grid for measurement values, data types containing subordinated data types are shown with a plus sign. Open the underlying hierachy by clicking the plus sign. Data records belonging to a data type are automatically assigned to the parent data records. Hence by deleting a parent data record, all child data records will also be deleted - a warning will appear requiring confirmation to proceed.

**Data import**

Importing records for subordinate data types is only possible in the **"Record and Maintain Measurements"** method. To do this, navigate to the required subordinate data type (by expanding the branches on the superordinate dataset) and click in the subgrid of that datatype. Then select Import readings from the right toolbar and perform the import. The imported datasets are now assigned to the parent dataset.

**Using Formulae**

Using formulae in a subordinate data type is straightforward. A special case is where formulae in superordinate data types reference child data types (e.g. statistics in thesuperordinate data type based on values in a subordinate data type).

For the target field "Sum SD1 Param 1" in the above example the following formula is defined:

$SUM>SD1:SD1P1$

This formula calculates the sum of all the values of the parameters "SD1 Param 1" from all subordinated data records.

For the target field "Mean SD4" in the data type SD4 " in the above example the following formula is defined:

$MEAN>SD4:SD4P1$

This formula calculates the mean value oft he parameters "SD4 Param 1" from all subordinated data records.

The syntax of the parameter relationship to a subordinated data type is as follows:

$STAT>DAT:PARAM$

STAT = statistic function; DAT:PARAM = parameter of the subordinated data type

The following statistic functions are available:

MIN - Minimum

MAX - Maximum

SUM - Sum

COUNT - Number

MEAN - Average

STDDEV - Standard deviation

VARIANCE - Variance

VARIANCECOEFF - Variance coefficient

**Conditions for data records of subordinate data types**

When calculating statistical values all subordinate data records are included by default. If only part of these data records are to be used, a condition with the operator %COND\[condition] can be defined, which appears before the statistical function:

**Example:**

$\*\*%COND\[#SD1QL#=3]\*\*SUM>SD1:SD1P1$

The condition (logical expression) is defined inside the brackets \[] and can only reference data fields of subordinate data types. Please note the following:

1. Referencing a parameter in a condition is done without naming the data type (in the example the parameter SD1QL)
2. Referencing a parameter in a condition is done between # symbols (instead of the $ signs)

In the example above the sum of the parameter SD1P1 is calculated using only data records from the data field SD1QL with the value 3.

Active formulae are calculated automatically in the measurement value editor. If values are changed in a subordinated data type, values will be recalculated in the superior data type using formulae. This process is repeated until the topmost data type values have been recalculated.

**Referencing parameters of superior data types**

When performing calculations in subordinate data types, data fields in superior data types can be referenced Example:

**1**

In the data type "Complex Child" a formula takes a value from the column "Value for child record" of the data type "Complex Master" and transcribes it to the column "Value from parent record". In this example a value is simply copied, but mathematical calculations are also possible.

**2**

In the data type "Complex Child" another formula takes a value from the column "Value from parent record" and multiplies it with a value from the column "Child Parameter 2" and writes it to the column "Parent value \* Child Parameter 2".

**3**

The parent data type "Complex Master" can contain formulae that reference columns in subordinted data types that are first calculated. This is shown in the example the sum of the values of the column "Parent value \* Child Parameter 2" for the target column "Statistic for child records" in the data type "Complex Master". This value is also be automatically recalculated.

The process is as follows:

A change to a value in a data record in "Complex Master" causes formulae of the data type "Complex Child" to carry out calculations for all subordinate data records leading to new values in the columns "Value from parent record" **(1)** and "Parent value \* Child Parameter 2" **(2)**.

In a further step, formulae of the data type "Complex Master" perform calculations for the changed data record, referencing the values just calculated in the subordinate data type **(3)**.

Following this calculations in superior data types higher up the hierarchy are carried out. This is not shown in the example.

Formula calculations in subordinate data types cascade down to the lowest level data type. Please note that in Step **3** this is only performed for the (manually) changed data. A looped calculation is only possible for the first subordinate level of a changed data record and always ends with Step 3. The value from the column "Statistic for child records" in the data type "Complex Master" cannot be used for formulae calculations in the data type "Complex Child".

**Use in reports and diagrams**

The parameters of the subordinate data types can be referenced as usual in reports and diagrams. References to parameters of subordinate data types result in summary data records, including the contents of the superordinate data records. The following report shows an example:

The number of data records in the report for sample P1 is defined by the number of data records in the subordinate (child) data type SD4. For the sample P2 the number of data records in the subordinate (child) data type SD1 are relevant, because no values are present in the data type SD4.

### Object type formulas

Object types can contain formulas for master data fields. These formulas are then executed during editing with the data entry and maintenance method.

The following formulas bundle a number of functions with which geodata can be spatially processed.

The syntax/grammar of these formulas can be briefly summarised as follows.

1. the formula begins with $%EGIS
2. in simple brackets, the various parameters of the formula can be configured. The parameters are permitted as key-value pairs with spaces.
3. the formula ends with $
4. a fixed parameter is the "Method" parameter. The value of this parameter decides which method of formula execution is to be used.

**Structure example of a formula:**

_$%EGIS(METHOD=XYZ Param1=Value1 Param2=Value2 ... )$_

**Conversion of coordinatesExample:**

$%EGIS(METHOD=TRANSFORMCOORD Result=X X=XCOORD Y=YCOORD EPSG=EPSG DESTEPSG=3068)$

**Method**

TRANSFORMCOORD

**Result**

Which calculation result is to be transferred to the target of the formula (in the example shown, the converted X-value).

**X**

Specifies which data field is to be used as input value for X (_**example:**_ XCOORD).

**Y**

Specifies which data field is to be used as input value for Y (_**example:**_ YCOORD).

**EPSG**

Indicates which data field contains the underlying coordinate system (_**example:**_ EPSG).

**DESTEPSG**

Specifies the target coordinate system to be transformed into (_**example:**_ 3068 Soldner Berlin).

**Derive values from a GIS fileExample:**

$EGIS(METHOD=GETPOINTVALUE X=XCOORD Y=YCOORD SOURCE=GROUNDWATER EPSG=EPSG)$

**Method**

GETPOINTVALUE

This method can be used to read data from a GIS file (e.g. Shape, GeoJSON) using a pair of coordinates.

For this purpose, the first object is read at the transferred coordinates and the desired value is returned from the configured attribute spate of the GIS data set.

In this way, e.g. names of districts, planning areas, TK numbers etc. can be automatically transferred to the GeoDin general data.

**X**

Indicates which data field contains the X-value (_**example:**_ XCOORD).

**Y**

Indicates which data field contains the Y-value (_**example:**_ YCOORD).

**EPSG**

Indicates which data field contains the underlying coordinate system (_**example:**_ EPSG).

**SOURCE**

A reference to an additional section from the GeoDin database connection settings configuration can be linked here.

In the database settings, then define the following key with the values from SOURCE.

GROUNDWATER= Path to a Shape or GeoJSON

GROUNDWATERFIELD= Name of the attribute column in the shape or GeoJSON

**Example:**

GROUNDWATER=C:\GISData\GW-Model\gw2020.shp

GROUNDWATERFIELD=MAXGW

_**Note:**_ _If no additional reference is specified under SOURCE, GeoDin automatically tries to find a GeoJSON file (\*.geojson) with the name of the target field of the formula in the Syslib directory of the GeoDin installation. The attribute field from which the data is returned to the database must have the same name in the GeoJSON as the target field of the formula._

### User management

The visibility/usability of various methods and functions can be restricted via the user administration.

By default, the option \*-\*All- is activated - i.e. no restriction.

Via the option -User groups-, the functionality can be explicitly released for certain _groups or individual users_.

This is used, for example, for methods, system databases or queries.

The creation of users and groups is described in the chapter on **User settings**.

### document types

**Document type**

Here you can determine whether documents may be added to the system database.

If only certain document types are to be allowed, the checkbox _\[Allow only registered document types]_ can be selected. Then the document types must be defined.

To register a document type, the corresponding file extension is specified, e.g. PDF or JPG. In the next field, settings for the compression of the file can be made. The following options are available:

1. User defined
2. Always save compressed
3. Always save uncompressed

In addition, it can also be specified for the document type whether saving in the database, file links are allowed and editing is permitted. Furthermore, the maximum document size and certain document descriptions can be specified.

### Object frame query

Object frame queries are created like a [System query](../data-analysis/queries/sql-and-advanced-options.md), but are part of a GeoDin layout. This way, they extend the possibilities for data collection in a layout for presenting this data in a report or graphic. As these query can access any database contents, it is possible to use data fields for the queries which are not part of the GeoDin database structure.

At an object frame, any number of queries can be created. Each query has to be given a unique name. In the graphic objects, the queries are adressed with these names to collect the required data for the graphic element.

All queries for an object frame are managed in an open list. After making changes to a query, it is possible to re-execute the query with the \<Refresh all queries> button to refresh the view in the layout. All queries are executed and the displayed graphic is recalculated.
