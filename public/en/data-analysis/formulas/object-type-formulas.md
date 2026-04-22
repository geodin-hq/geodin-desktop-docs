---
description: Object Type Formulas
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Object Type Formulas

### Object types

The default setting installs only a limited number of object types. The international English version installs the \"General Borehole Log\". You will find this under the **System** tab.

There are many more object types for all the different language versions of GeoDin, which each user may install directly from the GeoDin DVD. These include separate object type for all the geological survey organizations in Germany as well as several international types in English and Dutch. Additionally there is a range of object types covering other fields of data collection that are not related to boreholes (for example climate measuring station, surface water measurement point).\
\
***Note:*** *There are also special FUGRO object types available only for internal company use.*

The installed object types are shown in the directory **Configuration**.

To install further types double-click the [Install](../../installation/express-installation.md) method and choose the appropriate folder from the chosen directory on the GeoDin DVD.


**Downward compatibility as of GeoDin 9**

Please note that databases created with GeoDin 9 can only be opened with GeoDin 9 and 8.4. Databases created with GeoDin version 8.3 or older must be updated once to the new database structure. When opening an older database in GeoDin 8.4 or higher, a window appears in which you are shown the changes to be made and can agree to the process. The database can now only be used with GeoDin 8.4 or higher.

New layouts created in GeoDin 9 cannot be used with older versions. However, older layouts can be used with GeoDin 9. <!-- src: help/10/1753 -->

### Fill patterns

All the fill patterns and symbols available in the GeoDin system are displayed in the object manager of the system objects (via the **System** tab).

This is based on the files stored in the SOURCE folder of the GeoDin installation. The folder contains files with the extension:

.SGA - Signature Table

.SYA - Symbol Table

These files contain the definitions of the fill patterns and symbols in text format and can be modified using the ![Edit](.gitbook/assets/icons/edit.png) **\"Edit\"** method.


The formats of the fill pattern and symbol definitions are described in the chapter [Fill patterns](../../configuration/fill-patterns-and-symbols.md)

The drawing definitions can be edited in the \<Instructions\> text window.

Using the **Preview** button or the **F4** key, the fill patterns and symbols can be greatly enlarged in the preview bar on the right. If you select a fill pattern or symbol in this bar, it will remain visible as the top entry the next time you activate the preview. Double-clicking on a fill pattern or symbol in the preview list takes you to the first line of the associated definition statement.

To finally apply the changes to the drawing definitions, the **Create** button must be used. The current definition file is then compiled and the result is stored in the SYSLIB folder. The compiled signature tables get the file extension .SGN, while compiled symbol tables get the extension .SYM.

To create a new fill pattern or symbol table, simply copy an existing file or create a new text file with the appropriate extension (.SGA or .SYA) in the SOURCE folder. The new file is now displayed in the object manager of the system objects under *[Fill patterns](../../configuration/fill-patterns-and-symbols.md)* or ***Symbols***. If GeoDin has not been closed in the meantime, you can update the display by right-clicking and selecting the ***Refresh*** menu item for the corresponding entries.

***Attention:*** *The fill pattern \[Empty#0\]\[TYPNULL\]\[\$00FFFFFF\] must be defined as the first available fill pattern in every fill pattern table.*\
*Depending on the local language version, GeoDin may come with a wide variety of fill pattern tables.*

*The fill pattern table INTENG.SGN (Source INTENG.SGA) contains the English version of the BS5930 fill patterns and symbols and is therefore identical with the fill pattern table GEODDEF.SGN (Source GEODDEF.SGA). The graphical representation of boreholes uses the INTENG fill pattern table for English language objects. Hence changes to the GEODDEF fill pattern table do not affect the display of boreholes. When filling polygons and other areas in the layout editor, the signature table depends on the selection in the corresponding fill dialogue.*\
*For special object types (for example \"Geotechnical borehole\" or \"Botswana Dep. of Geol. Survey\") there are custom made fill pattern files (GEOTECH1 and BOTSWANA).* <!-- src: help/10/2172 -->

### Edit

Locking the edit function prevents the **Configuration** from being changed by mistake.

**Locking the System Objects**\
\
To change the lock options make the following new entry under \[System\] in the configuration file GeoDin.ini :\
\
*\[System\]*\
*SysPath=C:\\Programme\\GeoDin\\SYSLIB\\*\
*SysObjChange=false*

Restart GeoDin and click the **System** tab. Under system configuration the method ![Remove edit security](.gitbook/assets/icons/remove-edit-security.png) **\"Remove edit security\"** is now shown.


Double-clicking the method opens the dialogue for setting the password the first time. The entered password is used to unlock the editing of the system objects later.

Enter a password, confirm it and press **OK**. The encrypted password is stored in the GeoDin.ini. If you forget your password you must delete both the SysObjChange and SysPassword entries from the configuration file and then define a new password.

Of course this protection is only good in so far as write permission is granted (or forbidden) for the configuration file in your network.

In a password protected GeoDin environment, only viewing methods are available in the system object manager, so that unwanted changes are not possible (i.e. they cannot be edited).

The administrator can remove the protection by double-clicking the **\"Remove edit security\"** method and entering the correct password.\
\
After entering the password all editing functions are available. This restores full edit options to the system configuration. <!-- src: help/10/2178 -->

### Refresh

With the method **\"Update object type\"** changes to dictionaries and masks can be incorporated in an existing object type. This can be carried out either from the current GeoDin-CD or from a client who provides you with a new set of files.

You can do this from a current GeoDin DVD or our website or you can get a new set of object type files from a third party (e.g. client). In this case, select the directory or zip archive that contains the current files and perform the update.\
When updating, the files with the most recent date are always saved/received. So if you have made changes to your masks or added entries to your dictionaries, they will be preserved as long as the files you want to update with are not even more current than your changes.

**Example**:

You have added an entry to your dictionary on 15.3.2016. The dictionary file to be updated with is from 04.01.1997. Your dictionary file from 15.03.2016 with your entries will be preserved and not \"updated\" with the older file. Conversely, you last edited a dictionary on 02.02.2005, but the file to be updated with is from 06.07.2010. In this case your dictionary file will be overwritten with the one from 06.07.2010.

Please restart GeoDin after the update, e.g. because the mask files are only reloaded when GeoDin is started.

The updated object type only affects dictionaries, masks or internal object type functions, but not the table structure (data fields) of the object type in existing databases.

There are various options for adapting existing databases in your table structure to extensions of the object type:

**1. New database**

1.1 Create a new database.\
1.2 After updating the object type on the system side (see above), create the new table structure in the database by creating a (dummy) object of the updated object type in the new database. This object can then be deleted directly.\
1.3 Now copy the desired objects of the old database into the new database using one of the methods [Copy all projects](../../navigating-the-geodin-workspace/projects/copying-and-transferring-projects.md), [Copy project](../../navigating-the-geodin-workspace/projects/copying-and-transferring-projects.md) or **Add objects**

**2. Run a publication to customize standard object types** *(only Access databases tested so far)*

2.1 Download the required **Publications** (\<standard object types\> or \<MP surface water\>) and save the \*.GPC file in the CONFIG folder of your GeoDin installation.\
2.2 Open and select the relevant database in GeoDin.\
2.3 Now start the method **\"Publish and Export\"**, select the corresponding publication and execute it.

The object types that can be updated using the publication \"Update standard object types_in_Access-DB\_\" are the following:

\<Abwasser\>

\<Altwasseraufschluss\>

\<Altwasseraufschluss benutzerdefiniert\>

\<Aufschluss Hydrogeologie\>

\<Benutzeraufschluss SEP-kompatibel\>

\<Bodenkundlicher Aufschluss nach KA5\>

\<Bohrung/Sondierung AREAbas-kompatibel\>

\<Brunnen\>

\<Brunnengalerie\>

\<Container\>

\<General borehole log\>

\<Geotechnische Erkundung EN ISO 22475\>

\<Klimamessstation\>

\<Komplettaufschluss DIN 4022 / DIN 4023\>

\<Lagerbereich\>

\<Messpunkt allgemein\>

\<Messpunkt Limnologie\>

\<ÖNORM B4400-1 und -2\>

\<Produktionsanlage\>

\<Sanierungsanlage\>

\<Standardaufschluss gemäß ÖNORM\>

\<Standardaufschluss SEP-kompatibel\>

\<Wasserwerk\>

Publication \"MP_Oberflächenwasser_in_Access-DB_aktualisieren\":

\<Messpunkt Oberflächenwasser\>

The object type

\<Komplettaufschluss SEP-kompatibel\> cannot be updated (not even with the methods mentioned under 1. or 3.).

**3. Update a C/S database using SQL script (recommended only for database administrators)**\
3.1 To update C/S databases, we have provided various SQL scripts for you to download directly from the database for selected object types at http://download.GeoDin.com/SQL_DB-Update_SEP1/ for updating C/S databases. <!-- src: help/10/2194 -->

### Properties

The **\"Properties\"** method displays information about the configuration of the selected object type. This includes the lists of the associated dictionaries, entry masks and signature standards as well as the properties and structures of the associated GeoDin tables. All properties shown are unchangeable for the user in the window. The information serves the purpose of further understanding the object-type-specific data storage and requires further knowledge of the structure and structure of GeoDin object types.

*\[Object type can be created\]*

If this box is ticked, the creation of new objects is permitted in the object type called up. If the tick is removed, existing objects can be viewed and edited, but no new objects can be created, e.g. by mistake.

*\[Allow simultaneous creation of data type structures\]*

The activated option \<**Allow simultaneous creation of data type structures**\> activates the simultaneous creation of data types on the dialogue for the creation of a GeoDin object ([Create object](../../navigating-the-geodin-workspace/objects/creating-objects.md)). This way data types can be created optionally, when an object of an object type is created for the first time, if a standard measurement program has been defined for this type (GeoDinHelpLink:\<**Measurement program\>**CLASS_HLP_Conf_DatType_Messprograms#). <!-- src: help/10/2199 -->

### Uninstall

To delete an object type that is no longer required, select this type from the object types list and double-click the method **\"Uninstall object type\"**.

If you have not made any changes to the dictionaries or masks, you can remove them in the same step so that unnecessary files are deleted from the GeoDin system directory (default setting). <!-- src: help/10/2203 -->

### Install

You have 3 options to install new object types:


Select a folder containing the object type(s), for example the GeoDin DVD. All object types from this directory are displayed in a list. Here the entire subfolder structure of the folder is searched, therefore you can use this method also to detect object types.


Select a ZIP folder containing the object type(s), which are displayed in a list. If the ZIP file is password secured, you will have to type the password in during installation.


Here all object types availble on the GeoDin website are listed, sorted after languages. GeoDin will try to establish a connection to the Internet. If you use a Internetproxy, please configure it in the [Proxy configuration](../../installation/infrastructure-and-environment-setup-guide.md).

After you have selected the required object types with either of these methods click [Install](../../installation/express-installation.md). You can install several object types in succession. Select another directory and repeat the installation. <!-- src: help/10/2980 -->

### Export object type

This method can be used to create a Zip File from one or more object type definitions. After the export you can send the ZIP-file containing the object type to another GeoDin user. The recipient can install the object type(s) directly from the Zip file (See also [Install](../../installation/express-installation.md)).

All necessary data of the object type (structure definitions, dictionaries, masks, data types and comparison lists) are included in the Zip file. Therefore select the desired object type(s). It is also possible to include a layout folder for this object type.

Start the export by clicking the **Export** button. <!-- src: help/10/7142 -->

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

A special set of abbreviations that interchanges the main and secondary rocks if they are incorrectly used in the main or secondary rock area. Prerequisite for the execution of this translation is the activation of the setting \"Correct main rock\".

KLAR

Exchange of plaintexts by keys corresponding to the content. <!-- src: help/10/7178 -->

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

### Data types

Data types are in GeoDin the basis for the management of measured values related to measuring points (object, filter, sample).

When creating a database, initially no data types are installed. Only by adding them in the data type manager are they set up in a database. The data types can be configured in their properties, structures and contents. The data types created and/or edited in this way then form the basis of the measured value acquisition in the specific application. <!-- src: help/10/8084 -->

### De-install data type


With this function a data type is removed from the system settings of the GeoDin system. The data type is not available as template in a database.

Already existing databases are not affected. Data types, which were created using this template can be used. <!-- src: help/10/8086 -->

### Generate subnotes (Layer)

With this transforamation you can process layer data that are not stored in GeoDin table structure. For example, some object types in the stratified data tables contain not only the strata but also sub-strata and strata from other stratified dictionary versions for the same object. The simple, table-based transformation (generate sub-nodes) cannot always be used to output strata.

**Example**:

GeoDin stores SEP3 borehole logs with multiple logs versions. All the layer information is stored in the table S3SCHDAT. This table also stores the borehole log version in the field INTV, along with sub-layer information and sub-layer type (SART). To output the individual log versions use the transformation \"generate sub-nodes (layers)\"

 Borehole

 Interval

 Transformation

 Attribute

 depthTop

 depthBase

 stratigraphy <!-- src: help/10/8498 -->

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

### Export ground descriptions

The publication element "Export layer descriptions" extracts layer information for the object type \"location\" in a new table GeoDin_EXP_G1GROUND in the current database.

You can select the recording standard of the layer description to be taken into account for the export. <!-- src: help/10/10615 -->

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

### Version option

The version information for an object type version is defined here. The first version information in the list is always the most recent.

The changes to an object type can/should be traced in the list.

When an object type is changed, this version information must be maintained by the object type designer.

**Version number:**

The version number as displayed on the object type. The format is set to number.number.number.

**Modifications:**

Information text that is displayed to the user during an object type update.

**Action:**

Only affects very special object types and should remain set to \"none\".

The option -Open database- can be used to prevent a database with an older version of this object type from being opened.

This is used during the unit conversion of G1 to explicitly convert very old databases with the converter.

**Error type:**

This defines whether this object type version must be updated when opening an older database or is an optional update.

**Up to version:**

Is only used for the case of the action \"Open database\". Here you can separately control whether the error case should only occur up to a lower version number.

**Message:**

Only used in the case of the action \"Open database\". Information text that is displayed in the event of an error when opening the database. <!-- src: help/10/10949 -->

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

### System query

**Type of query definition**

First, select the purpose of the new query.

If the query shall be added automatically as a new branch in the GeoDin object manager, select **Executable query**. It is also possible to select whether several subqueries lead to a common set of results or whether they are used for further reduction of the results. In the second case, a dialogue appears, in which the user can chose subqueries to further narrow down the result set.

An example: The user uses a query with two sub-queries, the first limits the results to objects from one map page, the second one to all boreholes with a certain depth. If the option for the sequence of condition is selected, the first subquery provides the objectsa from the map page. The user can then optionally further reduce the number of results by selecting the second subquery. With the possibilty to further reduce the number of results in the moment the query is used, it is possible to reduce the number of necessary queries altogether.

The option -Template for user queries- is used if the query template shall be made available to users to create own queries using the query assistant (with own conditions and display fields).

**Query result**

Queries in the GeoDin object manager generally distinguish between queries between a result of the type \"object\" (red marble) and a result of the type \"measurement point\" (blue marble). Normally, the measurement points (wells, samples) are linked to objects (e.g. boreholes) by a 1:n relationship. At the different result objects, different methods are available. An object (red marble) is by definition also a measurement point and can therefore also be displayed as a measurement point in the object manager. For queries with the result type \"object\", GeoDin expects the data fields PRJ_ID and LOCID, while fore queries with the result type \"measurement point\", the data field INVID is needed. When configuring the result fields, this has to be taken into account.

With the option -Allow objects from other projects- it is possible to define whether system queries shown in the GeoDin object manager may have results with a project ID different from the current project.

Example: If in one project \"team\" all team members are managed, while in another project \"boreholes\", all boreholes are stored. For each borehole, the information which team member edited is stored. It is possible to create a relationship between boreholes and team members. By using a system query it is possible to create a branch attached to each team member entry where the boreholes are displayed. As the boreholes are stored in another project, the above option must be checked to allow these objects to be displayed below the \"team\" branch.

**Name of query in the object manager**

Here, the name for the system query in the GeoDin object manager can be entered. It is possible to use a name different from the file name of the query.

With system queries it is possible to replace a GeoDin standard query. These are queries automatically added to the object manager. If this option is selected, the name of the standard query is entered here. An example for this type of query is the \"All objects\" branch. This branch displays all objects of the GeoDin_LOC_LOCREG for a specific project. It is possible to replace this query by a system query, for example to exclude certain objects from the results. The name of the standard query used would be \"All objects\" in this case. The system query would replace the standard query only in an english language system, as the name of the query is different in other languages. It is also possible to enter the unique GeoDin text ID for the entry \"All objects\", which is the number 2316. This number can also be entered in the \"Name of query in the object manager\" field to make sure that the query is replaced correctly for all language settings and the replacement for the \"All objects\" query has the correct (language specific) name. <!-- src: help/10/11458 -->

### Object frame query

Object frame queries are created like a [System query](../queries/sql-and-advanced-options.md), but are part of a GeoDin layout. This way, they extend the possibilities for data collection in a layout for presenting this data in a report or graphic. As these query can access any database contents, it is possible to use data fields for the queries which are not part of the GeoDin database structure.

At an object frame, any number of queries can be created. Each query has to be given a unique name. In the graphic objects, the queries are adressed with these names to collect the required data for the graphic element.

All queries for an object frame are managed in an open list. After making changes to a query, it is possible to re-execute the query with the \<Refresh all queries\> button to refresh the view in the layout. All queries are executed and the displayed graphic is recalculated. <!-- src: help/10/11500 -->
