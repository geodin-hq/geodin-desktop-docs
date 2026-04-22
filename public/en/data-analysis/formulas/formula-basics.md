---
description: Formula Basics
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Formula Basics

### General formulas

Formulas are for the calculations of data fields based on already existing values in the data set. The formulas defined at a data type will be calculated automatically as long as they are marked with \"Active\". The calculation is done when you add, change or delete details in the dataset or when you add or refresh datasets, e.g. by using the -Import- method of the GeoDin-database.

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

\(1\) Field 3 is calculated from field 1 and field 2, i.e. the target field of the formula is field 3.

\(2\) If the content of field 3 is changed, the value of field 2 shall be adjusted.

The goal of (2) cannot be realized, since the formula in (1) would immediately overwrite field 3. If field 3 is defined in another formula as the triggering parameter and field 2 as the target parameter, (2) is realized.

The evaluation of a formula with triggering parameters takes place during data entry (input grid or entry screen), that is, only entries made there trigger the formula. A formula with a triggering parameter is therefore only effective in the editor.

**Condition**

The condition is a logic term giving either back TRUE or FALSE. A formula having a condition is only executed if the calculation of the condition gives back a TRUE.

A condition is created with the same syntax as it is done with the formula. It can be built by using parameters of the same datatype as well as by using master data fields.

**Formula**

In normal cases the formula is a term leading to a calculation result. It can access parameters of the current datatype as well as contents of master data fields and use links from other datatypes. There is a selection menu providing all options for building a formula.

**Options**

1.  active formula

The calculation is executed when changing the dataset. Without this option the formula won't be executed.

1.  overwrite a target

Even if there is an entry in the target field this will be overwritten with the result of the calculation. If this option is inactive only empty fields will be filled.

1.  result 0, if all values are below the limit of determination

In certain cases a measured value will lie below the limit of determination for a particular measuring device. This means that although the value is not accurate, it is nevertheless present and could be used in a summation of several parameters. Normally a value between 0 and the limit of determination is used for such calculations, but in some situations the calculated value by summation, can be greater than the limit of determination of individual parameter values, which would be false. This option enables you to set the sum to the minimum or maximum detection limit, or to 0 if all parameter values are beneath the limit of determination and no special settings with "@B" exist.

1.  Macro

For complex handling of text formulas with OR constructs or %COND.

1.  text exchange (no calculation)

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

If the condition is \$NA\$\>2 and the value in NA equals 1 the value can be changed as often as desired. The formula won't be executed as long as the value lies below 2.

**Definition of formulas**

A formula is defined as a string of characters (similar to a text macro definition) and contains mathematical operators for calculating a result.

For example: \$DAT.PAR1\$ \* 100

The characters inside the \$-signs relate to a GeoDin data field. The following operators can be used:

  ------------ ------------------------------------
  \+           Addition
  \-           Subtraction
  \*           Multiplication
  /            Division
  SQR (x)      Square of x
  SQRT (x)     Square root of x
  LN (x)       Natural logarithm of x
  EXP (x)      Potency of x (e to the power of x)
  SIN (x)      Sinus of x
  COS (x)      Cosinus of x
  TAN (x)      Tangent of X
  ARCTAN (x)   Arctangent of X
  COTAN (x)    Cotangent of X
  ABS (x)      Absolute value of X

  ------------ ------------------------------------

\(x\) stands for the table column of GeoDin (e.g. \$DAT:PAR1\$)

Empty spaces can be contained in the formulas. Fixed number values (100 in the example above), can be entered directly in the formula.

## Adding a formula to an existing data type

Formulas can be added to a data type at any time — even after measurement data already exists in the database. The following steps cover the end-to-end process:

**1. Add a new parameter to the data type (system configuration)**

In the GeoDin system configuration (System > Data Types), open the relevant data type group and add the new parameter that will serve as the formula target. Save the system configuration.

**2. Add the parameter to the database**

Open the **Data Type Manager** at the database level. Select the data type, click **Edit**, and add the new parameter. Click **Create** to write the updated table structure to the database.

{% hint style="info" %}
Both the system configuration and the database must be updated. Adding the parameter to the system only does not make it available in the database tables.
{% endhint %}

**3. Define the formula**

Still in the system configuration, open the data type and add a formula:
- Set the **Target** to the new parameter.
- Build the formula expression by dragging macro names (field references such as `$DAT.PAR1$`) from the selection list into the formula field.
- Mark the formula as **Active**.
- Save.

**4. Apply the formula to existing records**

Active formulas run automatically on new and updated records, but **do not run retroactively on existing data**. To apply the formula to all existing records:

1. Open the measurement editor for any object with existing records of this data type.
2. Click the **Calculate** button (German: *Berechnen*, the calculator icon in the right toolbar).
3. In the calculation dialog, select the active formula from the list.
4. Confirm. GeoDin processes all records in the current dataset and writes the calculated values.

{% hint style="warning" %}
Formulas defined as active are calculated automatically on new and updated records, but do **not** run retroactively on existing records. Always use the **Calculate** button after adding a new formula to populate historical data.
{% endhint %}

<!-- src: transcript/2026-04-15-in-person-workshop -->

**5. Single-use inline formulas in the measurement editor**

The measurement editor also accepts a one-off formula entered directly in the formula bar — without saving it to the system configuration. This is useful for ad-hoc calculations during a session.

Note: an inline formula **cannot target a field that is already assigned as the target of an active system formula**. If a conflict exists, the active system formula takes precedence and the inline formula will not be executed on that field.

<!-- src: transcript/2026-04-15-in-person-workshop -->

**Use of conditions**

In addition to the mathematical operators, special syntax constructions can be used to take a large number of special cases into consideration. For a formula, a condition can be defined in which the formula is executed. A condition is an expression which has two possible results: TRUE or FALSE. Several expressions can be combined using the logical operators AND and OR. The definition of the data type abbreviation is always necessary (e.g.: \$WAS:NA\$).

***Note:***

*The formula can be entered directly in the measurement editor after clicking the button*  *or on the system tab under Data types-\> Data type settings-\>Formulas* ([General formulas](formula-basics.md)).

**Example for simple conditionExample:**

*Destination:* WAS:NA_CALC

*Condition:* \$WAS:MG\$\>3

*Formula:* \$WAS:NA\$/2

The target parameter NA_CALC is calculated if the parameter MG has a value of 3 or higher.

**Example for multiple conditionExample:**

*Destination:* WAS:NA_CALC

*Condition:* \$WAS:MG\$\>3 AND \$WAS:CA\$\<10

*Formula:* \$WAS:NA\$/2

The target parameter is calculated, if both the parameter MG has a value greater than three and the parameter CA has a value of less than 10.

**Conditions for changing values**

By using the formatting \@O the original value of a data record BEFORE the last change can be recreated in the measurement editor. Hence checking for differences is possible.

**Example:**

*Condition:* \$WAS:PAR1\$ - \$WAS:PAR1@O\$ \>10

The condition is true, when the value of PAR1 in the cell is more than ten times the previously entered value.

**Further condition examples**

In a condition, the NULL operator can be used. It defines whether a parameter has a value.

**Example:**

*Destination:* WAS:NA_CALC

*Condition:* \$WAS:MG\$\>3 AND \$WAS:CA\$=NULL

*Formula:* \$WAS:NA\$/2

The target parameter NA_CALC is calculated by taking half the value of the parameter NA, if the value of the parameter MG exceeds 3 and the parameter CA is empty.

If strings are used in a condition, the text has to be included in inverted (or high) commas. Missing inverted commas and mis-spelling are interpreted as non-equal. The spelling of the condition is case sensitive.

**Example:**

*Destination:* WAS:NA_CALC

*Condition:* \$BEARBEIT\$=\'Müller\'

*Formula:* \$WAS:NA\$/2

The target parameter NA_CALC is calculated as half of the parameter NA, if the author of the data record has the name Müller.

**Using special rules**

Additionally to the mathematical operators special syntax constructions can be used for the usage of values from the GeoDin tables to take into consideration numerous special cases.

**Special cases in formula syntaxDetection Limits**

Detection limits present a special case. These are by definition negative values (e.g. -1 for \<1). If these values are used without care, false results may be produced, for example when building sums from individual parameters. To do this, a construction in the form of \@B(x) within the \$-signs must be used, where x is a factor with which the detection limit enters the calculation. For example a detection limit of 5 mg (entered as -5) using the factor 0.5 produces the result 2.5.

**Example:** \$WAS:BENZEN@B(0,5)\$+\$WAS:TOLUEN@B(0,5)\$+\$WAS:XYLEN@B(0,5)\$

In the case above, where values for individual parameters of -5 or -1 are found, the sum calculation uses half of these values.

**Default values**

For certain calculations it may be necessary to work with predefined settings or defaults. When a parameter is either not present or has not been analyzed in a data set, a standard value can be assumed and used for calculation. This is realized by using the construct \@D(x) inside the \$ signs, whereby x is the predefined default value used when no value is present in the field.

**Example:** VALUE=\$ORGANIC@D(10)\$/\$CLAY@D(25)

The calculated value has the quotients from the organic substances and clay in a soil sample. If no values are present in these fields the default values are used.

**Mean Value**

A mean value is calculated by using the symbols "@M" inside the dollar symbols of a formula. The individual values are separated by ";" and only filled fields can be used.

**Example:** UWDRYMIN=\$UWDRYMIN1;UWDRYMIN2;UWDRYMIN3@M\$

The result is an average of UWDRYMIN1 to UWDRYMIN3.

**Using a number from a dictionary**

If a dictionary is used, which produces a number when entering a code, this can be used for a calculation. By using the "@R" sign a recode is carried out.

**Example**: CU=(\$CONE@R\$)/SQRT(\$PEN1;PEN2;PEN3;PEN4;PEN5@M\$)

First of all the entry for CONE is replaced by the value from the dictionary. For the values P1 to P5 an average is taken from which the square root is calculated. The value for CONE is then divided by this value.

**Using values from another data type**

Values from one data type can be used in calculating values in other data types. To do this, the code of a data type is followed by a colon. The relationship to a data record in another data type is defined by time. To compare values the date is used in a number of different ways:

  ------------------------------- ---------------------------------------
  \[=SMPDATE\] or no definition   The date must be the same
  \[\<=SMPDATE\]                  The date can be the same or less than
  \[\<SMPDATE\]                   The date must be less than
  \[\>=SMPDATE\]                  The date can be the same or more than
  \[\<SMPDATE\]                   The date must be more than

  ------------------------------- ---------------------------------------

**Example**: WASSPNN=\$ROK:ROKNN\[\<=SMPDATE\]\$-\$WASSPROK\$

The water level expressed in meters above sea level is calculated by using a value from the data type ROK (top of piezometer). The value used can be from the same day or the next most recent value. From this value the current level is subtracted.

**Using values from measurement point general data**

It is possible to incorporate general data fields in formula for measurement points. The relationship is defined as follows: \$Tablel.Datafield\$.

**Example:** \$ASBFILTR.INVMBEG\$-\$WST:WASSPROK\$

The water level in the destination WASSPNN calculated using the measurement point elevation (\$ASBFILTR.INVMBEG\$) and the measured water level from the top of the pipe \$WST:WASSPROK\$ in the data type.

**Ionic Balance**

By using the symbol %IONB the ionic balance can be calculated and used as result.

**Example**: IONICBALA=\$%IONB\$

***Attention:*** *For a correct calculation the fields with the names, which are expected by the calculation, must exist and be in use (see [Ion balance](../calculation-engine/geotechnical-analyses.md)).*

**Automatic numbering**

To automatically assign consecutive numbers to a parameter, the expression \$%FIRSTID:PARAMETER\$ can be used. The numbering for the corresponding parameter always starts at 1.

**Example:** \$%FIRSTID:TESTNO\$

The test number is automatically assigned a consecutive number in the TESTNO field for each record. The first record is given the number 1.

**Further Symbols**

\$%PI\$ produces the number Pi

\$%USERNAME\$ can use a (text-)formula, to create the name of the current database user

\$%NOW\$ results the current date and time

**Object reference**

\$%OBJECTID\$ Access to the LOCID for general data tables if available

\$%PRJID\$ Access to the PRJ_ID for general data tables if available

**Text exchange - Formulas to create formatted text**

By activating the control box *\[Text exchange (no calculation)\]* a calculation is prevented when carrying out the formula. This option is only useful, where a string parameter as result is required. The result is that the parameters are replaced by a string of actual values, whereby no calculation is carried out.

**Example:** \$LOCREG.SHORTNAME\$ / \$SMPDATE\$

In the selected target field a combination of the object short description, an oblique and the date is created, for example \"Brg 12 / 12.10.2004\".

**Text exchange with Macro**

In addition to the text exchange, format specifications can be resolved.

Example: \$LOCREG.SHORTNAME\$ from \$SMPDATE@dd.mmmm.yyyy\$

***Attention:*** *Only parameters of the same table (data type) or object type parameters can be evaluated. The parameter of the current table must be specified here without the table abbreviation. See example.* <!-- src: help/10/8072 -->

### Formulas

Where it is possible to define and edit any number of elements, they are displayed with their names in a list. This can be for example series of a data sequences, columns of a report element, lists of layout file names etc. Simultaneously these entries appear in the tree view of the object properties in the selected order. To add, remove and rearrange entries of the list on the right side the following icons are available:

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

Closes the list and changes in the tree view of the object properties to the particular entry, so that its properties can be edited. <!-- src: help/10/8991 -->

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

*\$EGIS(METHOD=TRANSFORMCOORD Result=X X=XCOORD Y=YCOORD EPSG=KSYS DESTEPSG=3068)\$* <!-- src: help/10/10863 -->

### Object type formulas

Object types can contain formulas for master data fields. These formulas are then executed during editing with the data entry and maintenance method.

The following formulas bundle a number of functions with which geodata can be spatially processed.

The syntax/grammar of these formulas can be briefly summarised as follows.

1.  the formula begins with \$%EGIS

2.  in simple brackets, the various parameters of the formula can be configured. The parameters are permitted as key-value pairs with spaces.

3.  the formula ends with \$

4.  a fixed parameter is the \"Method\" parameter. The value of this parameter decides which method of formula execution is to be used.

**Structure example of a formula:**

*\$%EGIS(METHOD=XYZ Param1=Value1 Param2=Value2 \... )\$*

**Conversion of coordinatesExample:**

\$%EGIS(METHOD=TRANSFORMCOORD Result=X X=XCOORD Y=YCOORD EPSG=EPSG DESTEPSG=3068)\$

**Method**

TRANSFORMCOORD

**Result**

Which calculation result is to be transferred to the target of the formula (in the example shown, the converted X-value).

**X**

Specifies which data field is to be used as input value for X (***example:*** XCOORD).

**Y**

Specifies which data field is to be used as input value for Y (***example:*** YCOORD).

**EPSG**

Indicates which data field contains the underlying coordinate system (***example:*** EPSG).

**DESTEPSG**

Specifies the target coordinate system to be transformed into (***example:*** 3068 Soldner Berlin).

**Derive values from a GIS fileExample:**

\$EGIS(METHOD=GETPOINTVALUE X=XCOORD Y=YCOORD SOURCE=GROUNDWATER EPSG=EPSG)\$

**Method**

GETPOINTVALUE

This method can be used to read data from a GIS file (e.g. Shape, GeoJSON) using a pair of coordinates.

For this purpose, the first object is read at the transferred coordinates and the desired value is returned from the configured attribute spate of the GIS data set.

In this way, e.g. names of districts, planning areas, TK numbers etc. can be automatically transferred to the GeoDin general data.

**X**

Indicates which data field contains the X-value (***example:*** XCOORD).

**Y**

Indicates which data field contains the Y-value (***example:*** YCOORD).

**EPSG**

Indicates which data field contains the underlying coordinate system (***example:*** EPSG).

**SOURCE**

A reference to an additional section from the GeoDin database connection settings configuration can be linked here.

In the database settings, then define the following key with the values from SOURCE.

GROUNDWATER= Path to a Shape or GeoJSON

GROUNDWATERFIELD= Name of the attribute column in the shape or GeoJSON

**Example:**

GROUNDWATER=C:\\GISData\\GW-Model\\gw2020.shp

GROUNDWATERFIELD=MAXGW

***Note:*** *If no additional reference is specified under SOURCE, GeoDin automatically tries to find a GeoJSON file (\*.geojson) with the name of the target field of the formula in the Syslib directory of the GeoDin installation. The attribute field from which the data is returned to the database must have the same name in the GeoJSON as the target field of the formula.* <!-- src: help/10/11301 -->

### Alternative SQL-Command

With this method of defining a system query for the GeoDin object manager or object frame query within a layout, you can formulate any SQL statement for obtaining data directly. If you are familiar with SQL, this method is significantly faster than formulating the SQL statement step by step via the individual menus.

**Example:**

SELECT \* FROM GeoDin_LOC_LOCREG

The SQL statement can contain Macro variables which are replaced automatically by GeoDin while the query is executed. The purpose of the query is the determining factor for this.

**Object frame query in a layout**

\$PRJID\$ is replaced with the current project ID of the project connected to the layout

\$LOCID\$ is replaced with the current object ID of the object connected to the layout

\$INVID\$ is replaced with the current measurement point ID of the object connected to the layout

In a layout with a single-object frame, extracting a dataset from the table GeoDin_LOC_LOCREG could use the following SQL statement:

SELECT \* FROM GeoDin_LOC_LOCREG WHERE (PRJ_ID=\'\$PRJID\$\') AND (LOCID=\$LOCID\$)

When a new object is linked to the layout (for example by changing the object while the layout overview is open), the dataset for this object is selected from the database table. In a variable text element with the data source \"Onject frame query\" all data fields for this object can be accessed. Please note that the above example is for illustrating the possibilities. It would not be useful in practical application, as the macro similar to \$LONGNAME\$ provides access to the data fields of this table even without an object frame query. Normally, object frame queries are used for extracting far more complex result data sets.

As in an SQL statement the names of tables and database views can be used, these names should be included in the list of **Tables**. This is necessary to ensure the necessary database schema extension of the names.

In this type of definition of a system query for the GeoDin object manager or object framework query within a layout, you can formulate any SQL instruction to obtain data. Example:

SELECT \* FROM GeoDin_LOC_LOCREG

The SQL statement can contain Macro variables which are replaced automatically by GeoDin before the query is executed. The purpose of the query is therefore paramount.

System query for theGeoDinobject manager

The macro variables are replaced with the information of the parent branch to achieve an appropriate restriction of the queried objects.

\$PRJID\$ is replaced with the current project ID

\$LOCID\$ is replaced with the current object ID

\$INVID\$ is replaced with the current measurement point ID

The creation of a system query depends on its use and the placement of the query in the GeoDin object manager. Primarily it depends on the definition of the resulting objects (Objekt  oder Messpunkt ) as to which data fields are set at the top in the field list of the SELECT command.

Object  : PRJ_ID,LOCID; within a project only LOCID

Measurementpoint  : INVID

The field list of the SELECT command can and should contain further datafields, which generate the display names in the object manager.

The WHERE condition must contain restrictions on the parent object in queries below projects, objects and measurement points, otherwise objects could appear in the results that do not conform to the object manager structure (e.g. all objects of a database underneath a project node).

Example queries: Show also possible combinations of display fields for the object manager.

**Queries at the level \"Database\" and \"Database queries\"**

Objects:

select PRJ_ID,LOCID,LONGNAME & \" (\", ZCOORDE, \"m)\" AS F1 from GeoDin_LOC_LOCREG order by LONGNAME

Measurement points:

select INVID,LONGNAME & \" (\", ZCOORDE, \"m)\" AS F1 from GeoDin_LOC_LOCREG order by LONGNAME

**Queries at the level \"Project\" und \"Project queries\" with necessary restrictions on the PRJ_ID**

Objects:

select LOCID,LONGNAME & \" (\", ZCOORDE, \"m)\" AS F1 from GeoDin_LOC_LOCREG WHERE PRJ_ID=\'\$PRJID\$\' order by LONGNAME

Measurement points:

select INVID,LONGNAME & \" (\", ZCOORDE, \"m)\" AS F1 from GeoDin_LOC_LOCREG WHERE PRJ_ID=\'\$PRJID\$\' order by LONGNAME

**Queries at the level \"Object\" or \"Measurement point\" with necessary restrictions on the PRJ_ID and LOCID and where necessary on the INVID**

select INVID,INVNAME from GeoDin_LOC_PRBREG WHERE (PRJ_ID=\'\$PRJID\$\' ) and (LOCID=\$LOCID\$) order by INVNAME

**Tables**

Because names of tables/views are used in the SQL definition, the names should also be included in the list **Tables**. Only this way is a name protected for additional schema-editing work. <!-- src: help/10/11505 -->
