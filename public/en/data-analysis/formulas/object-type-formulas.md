# Object Type Formulas

Object types can carry their own formulas - on master-data fields and as spatial (`$%EGIS`) operations - alongside the data-type formula system they share with measurement values. This page is the reference for those object-type-level mechanics: how a general formula is defined (name, target, condition and options) with its full syntax, how data types are managed and transformed on the object type, the formula list-management controls, the object-type and EGIS spatial formulas, and the system and object-frame queries configured on an object type. Object-type installation, editing, and management are covered in [Object Types Management](../../configuration/object-types-management.md).

***

## Reference: General formulas

Formulas are for the calculations of data fields based on already existing values in the data set. The formulas defined at a data type will be calculated automatically as long as they are marked with "Active". The calculation is done when you add, change or delete details in the dataset or when you add or refresh datasets, e.g. by using the -Import- method of the GeoDin-database.

Usually formulas are defined via the system-configuration of the data type and will be calculated automatically. Additionally the function [Calculation](../calculation-engine/data-checks-and-validations.md) is available during the registration of the measurements to enter a formula manually or to execute it.

Execution of the active formulas is done in order of their data type definitions. You should keep that in mind when using interdependent formulas.

Each formula is defined by a unique name and properties, which define the calculation mode.

**Name**

The name entitles the formula, it should be significant for a later choice.

**Target**

In any case the target is a field of the current data type. Only parameters, which are defined in the data type, can be used as a target in the formula.

**Triggering parameter**

If a triggering parameter is set, the formula is only executed if the change in the data set is made to that parameter. The definition of a triggering parameter thus enables the mutual calculation of different data fields.

**Example:**

Calculation Scenario:

(1) Field 3 is calculated from field 1 and field 2, i.e. the target field of the formula is field 3.

(2) If the content of field 3 is changed, the value of field 2 shall be adjusted.

The goal of (2) cannot be realized, since the formula in (1) would immediately overwrite field 3. If field 3 is defined in another formula as the triggering parameter and field 2 as the target parameter, (2) is realized.

The evaluation of a formula with triggering parameters takes place during data entry (input grid or entry screen), that is, only entries made there trigger the formula. A formula with a triggering parameter is therefore only effective in the editor.

**Condition**

The condition is a logic term giving either back TRUE or FALSE. A formula having a condition is only executed if the calculation of the condition gives back a TRUE.

A condition is created with the same syntax as it is done with the formula. It can be built by using parameters of the same datatype as well as by using master data fields.

**Formula**

In normal cases the formula is a term leading to a calculation result. It can access parameters of the current datatype as well as contents of master data fields and use links from other datatypes. There is a selection menu providing all options for building a formula.

**Options**

1. active formula

The calculation is executed when changing the dataset. Without this option the formula won't be executed.

1. overwrite a target

Even if there is an entry in the target field this will be overwritten with the result of the calculation. If this option is inactive only empty fields will be filled.

1. result 0, if all values are below the limit of determination

1. Macro

For complex handling of text formulas with OR constructs or %COND.

1. text exchange (no calculation)

The text, resulting by processing the formula, is entered in the target field, this means that the used variables are going to be replaced by the values of the current dataset without performing another calculation. This allows the creation of a formatted text from the datasets or the master data. The condition for the successful use of such a formula is a alphanumeric formatting of the target field (type: C).

**Operation**

An operation can be arranged in case of using the formula. This operation is to copy the current dataset into another data type. The operation can be selected, after that target data type is adjusted. The data type must be of the same examination type. In combination with the conditional execution of formulas some procedures can be set up matching a recording.

**Execute**

· if all parameters are defined

If this option is active and the formula, e.g. sum parameter, contains several field names the calculation result is only written if there are entries for all used fields. Otherwise the partly existing or partly filled fields are used for the calculation.

· if last valid formula in a block of the same row

Several formulas can be defined for one and the same target parameter. This option causes the last mentioned valid formula is going to be executed. Formulas listed before won't be executed and cannot affect each other.

· if the statement of the condition check has changed

A condition can be set for the execution of the formula. With this option you can determine the formula to be executed if the evaluation of the condition changes its value.

**Example:**

If the condition is $NA$>2 and the value in NA equals 1 the value can be changed as often as desired. The formula won't be executed as long as the value lies below 2.

### Definition of formulas

A formula is defined as a string of characters (similar to a text macro definition) and contains mathematical operators for calculating a result.

For example: $DAT.PAR1$ \* 100

The characters inside the $-signs relate to a GeoDin data field. The following operators can be used:

(x) stands for the table column of GeoDin (e.g. $DAT:PAR1$)

Empty spaces can be contained in the formulas. Fixed number values (100 in the example above), can be entered directly in the formula.

### Use of conditions

_**Note:**_

_The formula can be entered directly in the measurement editor after clicking the button_ _or on the system tab under Data types-> Data type settings->Formulas_ ([General formulas](formula-basics.md)).

**Example for simple conditionExample:**

_Destination:_ WAS:NA\_CALC

_Condition:_ $WAS:MG$>3

_Formula:_ $WAS:NA$/2

The target parameter NA\_CALC is calculated if the parameter MG has a value of 3 or higher.

**Example for multiple conditionExample:**

_Destination:_ WAS:NA\_CALC

_Condition:_ $WAS:MG$>3 AND $WAS:CA$<10

_Formula:_ $WAS:NA$/2

The target parameter is calculated, if both the parameter MG has a value greater than three and the parameter CA has a value of less than 10.

**Conditions for changing values**

By using the formatting @O the original value of a data record BEFORE the last change can be recreated in the measurement editor. Hence checking for differences is possible.

**Example:**

_Condition:_ $WAS:PAR1$ - $WAS:PAR1@O$ >10

The condition is true, when the value of PAR1 in the cell is more than ten times the previously entered value.

**Further condition examples**

In a condition, the NULL operator can be used. It defines whether a parameter has a value.

**Example:**

_Destination:_ WAS:NA\_CALC

_Condition:_ $WAS:MG$>3 AND $WAS:CA$=NULL

_Formula:_ $WAS:NA$/2

The target parameter NA\_CALC is calculated by taking half the value of the parameter NA, if the value of the parameter MG exceeds 3 and the parameter CA is empty.

If strings are used in a condition, the text has to be included in inverted (or high) commas. Missing inverted commas and mis-spelling are interpreted as non-equal. The spelling of the condition is case sensitive.

**Example:**

_Destination:_ WAS:NA\_CALC

_Condition:_ $BEARBEIT$='Müller'

_Formula:_ $WAS:NA$/2

The target parameter NA\_CALC is calculated as half of the parameter NA, if the author of the data record has the name Müller.

### Using special rules

Additionally to the mathematical operators special syntax constructions can be used for the usage of values from the GeoDin tables to take into consideration numerous special cases.

**Special cases in formula syntaxDetection Limits**

**Example:** $WAS:BENZEN@B(0,5)$+$WAS:TOLUEN@B(0,5)$+$WAS:XYLEN@B(0,5)$

In the case above, where values for individual parameters of -5 or -1 are found, the sum calculation uses half of these values.

**Default values**

For certain calculations it may be necessary to work with predefined settings or defaults. When a parameter is either not present or has not been analyzed in a data set, a standard value can be assumed and used for calculation. This is realized by using the construct @D(x) inside the $ signs, whereby x is the predefined default value used when no value is present in the field.

**Example:** VALUE=$ORGANIC@D(10)$/$CLAY@D(25)

The calculated value has the quotients from the organic substances and clay in a soil sample. If no values are present in these fields the default values are used.

**Mean Value**

A mean value is calculated by using the symbols "@M" inside the dollar symbols of a formula. The individual values are separated by ";" and only filled fields can be used.

**Example:** UWDRYMIN=$UWDRYMIN1;UWDRYMIN2;UWDRYMIN3@M$

The result is an average of UWDRYMIN1 to UWDRYMIN3.

**Using a number from a dictionary**

If a dictionary is used, which produces a number when entering a code, this can be used for a calculation. By using the "@R" sign a recode is carried out.

**Example**: CU=($CONE@R$)/SQRT($PEN1;PEN2;PEN3;PEN4;PEN5@M$)

First of all the entry for CONE is replaced by the value from the dictionary. For the values P1 to P5 an average is taken from which the square root is calculated. The value for CONE is then divided by this value.

**Using values from another data type**

Values from one data type can be used in calculating values in other data types. To do this, the code of a data type is followed by a colon. The relationship to a data record in another data type is defined by time. To compare values the date is used in a number of different ways:

| Operator | Meaning |
| --- | --- |
| \[=SMPDATE] or no definition | The date must be the same |
| \[<=SMPDATE] | The date can be the same or less than |
| \[\<SMPDATE] | The date must be less than |
| \[>=SMPDATE] | The date can be the same or more than |
| \[\<SMPDATE] | The date must be more than |

**Example**: WASSPNN=$ROK:ROKNN\[<=SMPDATE]$-$WASSPROK$

The water level expressed in meters above sea level is calculated by using a value from the data type ROK (top of piezometer). The value used can be from the same day or the next most recent value. From this value the current level is subtracted.

**Using values from measurement point general data**

It is possible to incorporate general data fields in formula for measurement points. The relationship is defined as follows: $Tablel.Datafield$.

**Example:** $ASBFILTR.INVMBEG$-$WST:WASSPROK$

The water level in the destination WASSPNN calculated using the measurement point elevation ($ASBFILTR.INVMBEG$) and the measured water level from the top of the pipe $WST:WASSPROK$ in the data type.

**Ionic Balance**

By using the symbol %IONB the ionic balance can be calculated and used as result.

**Example**: IONICBALA=$%IONB$

_**Attention:**_ _For a correct calculation the fields with the names, which are expected by the calculation, must exist and be in use (see_ [_Ion balance_](../calculation-engine/geotechnical-analyses.md)_)._

**Automatic numbering**

To automatically assign consecutive numbers to a parameter, the expression $%FIRSTID:PARAMETER$ can be used. The numbering for the corresponding parameter always starts at 1.

**Example:** $%FIRSTID:TESTNO$

The test number is automatically assigned a consecutive number in the TESTNO field for each record. The first record is given the number 1.

**Further Symbols**

$%PI$ produces the number Pi

$%USERNAME$ can use a (text-)formula, to create the name of the current database user

$%NOW$ results the current date and time

**Object reference**

$%OBJECTID$ Access to the LOCID for general data tables if available

$%PRJID$ Access to the PRJ\_ID for general data tables if available

**Text exchange - Formulas to create formatted text**

By activating the control box _\[Text exchange (no calculation)]_ a calculation is prevented when carrying out the formula. This option is only useful, where a string parameter as result is required. The result is that the parameters are replaced by a string of actual values, whereby no calculation is carried out.

**Example:** $LOCREG.SHORTNAME$ / $SMPDATE$

In the selected target field a combination of the object short description, an oblique and the date is created, for example "Brg 12 / 12.10.2004".

**Text exchange with Macro**

In addition to the text exchange, format specifications can be resolved.

Example: $LOCREG.SHORTNAME$ from $SMPDATE@dd.mmmm.yyyy$

_**Attention:**_ _Only parameters of the same table (data type) or object type parameters can be evaluated. The parameter of the current table must be specified here without the table abbreviation. See example._

***

## Reference: Object type configuration

### Data types

Data types are in GeoDin the basis for the management of measured values related to measuring points (object, filter, sample).

When creating a database, initially no data types are installed. Only by adding them in the data type manager are they set up in a database. The data types can be configured in their properties, structures and contents. The data types created and/or edited in this way then form the basis of the measured value acquisition in the specific application.

### De-install data type

With this function a data type is removed from the system settings of the GeoDin system. The data type is not available as template in a database.

Already existing databases are not affected. Data types, which were created using this template can be used.

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

### Formulas

**New**

Using this icon, entries can be added to the list.

**Duplicate**

Use this icon to create a copy of the selected entry. The new entry is added at the end of the list and selected automatically.

**Delete**

Using this icon, marked entries can be removed from the list.

**Move selected entry up**

Using this icon, entries can be moved up in the list. Moving entries is also possible using drag & drop.

**Move selected entry down**

Using this icon, entries can be moved down in the list. Moving entries is also possible using drag & drop.

**Edit without refresh**

Editing the entries of a list can occasionally cause long processing. So for example moving a series or column definition in the list can take relatively long, depending on the basic data material, because sometimes many pages are affected.

Using this icon the list can be edited without actualization. Editing the list can be abandoned with the cross or with the tick mark.

**Double-click an entry of the list**

Closes the list and changes in the tree view of the object properties to the particular entry, so that its properties can be edited.

### Export ground descriptions

The publication element "Export layer descriptions" extracts layer information for the object type "location" in a new table GeoDin\_EXP\_G1GROUND in the current database.

You can select the recording standard of the layer description to be taken into account for the export.

### Formula

This chapter describes some formulas that can be used/created in GOTE for a general data table of the object type.

**Coordinate transformation**

This formula makes it possible to transform a coordinate specification and write it into a target field.

Parameters of the formula:

Method = TRANSFORMCOORD (fixed identifier of the EGIS method)

Result = part of the coordinates

X = X value of the input coordinate

Y = Y value of the input coordinate

EPSG = EPSGCode of the input coordinate

DESTEPSG = 3068

**Example:**

This formula transforms the X value of the GeoDin object into the coordinate system 3068 (Soldner Berlin) and writes the transformed X value into the target field of the formula.

_$EGIS(METHOD=TRANSFORMCOORD Result=X X=XCOORD Y=YCOORD EPSG=KSYS DESTEPSG=3068)$_

### Version option

The version information for an object type version is defined here. The first version information in the list is always the most recent.

The changes to an object type can/should be traced in the list.

When an object type is changed, this version information must be maintained by the object type designer.

**Version number:**

The version number as displayed on the object type. The format is set to number.number.number.

**Modifications:**

Information text that is displayed to the user during an object type update.

**Action:**

Only affects very special object types and should remain set to "none".

The option -Open database- can be used to prevent a database with an older version of this object type from being opened.

This is used during the unit conversion of G1 to explicitly convert very old databases with the converter.

**Error type:**

This defines whether this object type version must be updated when opening an older database or is an optional update.

**Up to version:**

Is only used for the case of the action "Open database". Here you can separately control whether the error case should only occur up to a lower version number.

**Message:**

Only used in the case of the action "Open database". Information text that is displayed in the event of an error when opening the database.

## Reference: Object type formulas

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

## Reference: System and object frame queries

### System query

**Type of query definition**

First, select the purpose of the new query.

If the query shall be added automatically as a new branch in the GeoDin object manager, select **Executable query**. It is also possible to select whether several subqueries lead to a common set of results or whether they are used for further reduction of the results. In the second case, a dialogue appears, in which the user can chose subqueries to further narrow down the result set.

An example: The user uses a query with two sub-queries, the first limits the results to objects from one map page, the second one to all boreholes with a certain depth. If the option for the sequence of condition is selected, the first subquery provides the objectsa from the map page. The user can then optionally further reduce the number of results by selecting the second subquery. With the possibilty to further reduce the number of results in the moment the query is used, it is possible to reduce the number of necessary queries altogether.

The option -Template for user queries- is used if the query template shall be made available to users to create own queries using the query assistant (with own conditions and display fields).

**Query result**

Queries in the GeoDin object manager generally distinguish between queries between a result of the type "object" (red marble) and a result of the type "measurement point" (blue marble). Normally, the measurement points (wells, samples) are linked to objects (e.g. boreholes) by a 1:n relationship. At the different result objects, different methods are available. An object (red marble) is by definition also a measurement point and can therefore also be displayed as a measurement point in the object manager. For queries with the result type "object", GeoDin expects the data fields PRJ\_ID and LOCID, while fore queries with the result type "measurement point", the data field INVID is needed. When configuring the result fields, this has to be taken into account.

With the option -Allow objects from other projects- it is possible to define whether system queries shown in the GeoDin object manager may have results with a project ID different from the current project.

Example: If in one project "team" all team members are managed, while in another project "boreholes", all boreholes are stored. For each borehole, the information which team member edited is stored. It is possible to create a relationship between boreholes and team members. By using a system query it is possible to create a branch attached to each team member entry where the boreholes are displayed. As the boreholes are stored in another project, the above option must be checked to allow these objects to be displayed below the "team" branch.

**Name of query in the object manager**

Here, the name for the system query in the GeoDin object manager can be entered. It is possible to use a name different from the file name of the query.

With system queries it is possible to replace a GeoDin standard query. These are queries automatically added to the object manager. If this option is selected, the name of the standard query is entered here. An example for this type of query is the "All objects" branch. This branch displays all objects of the GeoDin\_LOC\_LOCREG for a specific project. It is possible to replace this query by a system query, for example to exclude certain objects from the results. The name of the standard query used would be "All objects" in this case. The system query would replace the standard query only in an english language system, as the name of the query is different in other languages. It is also possible to enter the unique GeoDin text ID for the entry "All objects", which is the number 2316. This number can also be entered in the "Name of query in the object manager" field to make sure that the query is replaced correctly for all language settings and the replacement for the "All objects" query has the correct (language specific) name.

### Object frame query

Object frame queries are created like a [System query](../queries/sql-and-advanced-options.md), but are part of a GeoDin layout. This way, they extend the possibilities for data collection in a layout for presenting this data in a report or graphic. As these query can access any database contents, it is possible to use data fields for the queries which are not part of the GeoDin database structure.

At an object frame, any number of queries can be created. Each query has to be given a unique name. In the graphic objects, the queries are adressed with these names to collect the required data for the graphic element.

All queries for an object frame are managed in an open list. After making changes to a query, it is possible to re-execute the query with the \<Refresh all queries> button to refresh the view in the layout. All queries are executed and the displayed graphic is recalculated.
