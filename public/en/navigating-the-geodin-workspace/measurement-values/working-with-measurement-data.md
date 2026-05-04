---
description: Working with Measurement Data
---

# Working with Measurement Data

### Measurement values

**Requirements**

GeoDin organizes objects spatially. These are point objects with or without a depth value. At these objects measurements can be made. In order to use GeoDin to collect such data, measurement points need to be defined in the general data. Usually filters and sample intervals are used as measurement points. Also the object itself can be defined as a measurement point. In the GeoDin object manager measurement points are shown by three blue spheres.

GeoDin Demo Project

Object

All objects

General borehole log

Measurement point

filters

upper piezometer: (4.3-6.3m)

lower piezometer (7.8-8.7m)

samples

BH01: (1-7m)

BH01: (4-5m)

**Terminology**

The following hierarchy is used in the measurement point organization to relate a single measured value to a measurement object of the measurement point. There are the following different types:

**Measurement point type**

The measurement point type defines, what type of object it is. These can be either with or without a vertical component. An example of a measurement point with a vertical component is a borehole. A borehole can be the measurement point itself (e.g. where the whole length is sampled) or other measurement point types can be associated with it (discrete samples at various intervals over the length of the borehole). Examples of point samples (i.e. without a vertical component) are surface water or climate measuring stations.

**Data type**

Chemical investigations can be done for several objects for each type of measurement point. For these combinations data types are defined. For example at a groundwater well the water quality can be investigated or flow rates measured. For each case there is a data type. Each data type can be assigned to several measurement point types. So the data type "groundwater composition" can be entered for a groundwater measurement point as well as for a well. The results are combined in a data type table, although the data for each measurement point are distinct from one another.

**Chemical group**

Because the number of individual parameters within a data type can reach large amounts, the parameters are subdivided into chemical groups to allow a better overview. Each group is distinguished by a similarity in the chemical parameters or descriptive characteristics and may have up to 20 parameters.

**Parameter**

A parameter is an individual measurement described by a name, a field identification and a unit

**Query**

Queries are used within projects or databases to interrogate data. They define the amount and type of data from which the results are derived.

**Special values**

GeoDin organizes measurement values as numerical entries. Hence values below a detection limit cannot be saved as the character „<". In such cases a negative detection limit is entered (e.g. "-1"). These values are ignored by statistical analyses. If the detection limit is unknown (e.g. old data) the value"-88" is used. If the value is not detectable then"-99" should be entered:

***

Entry Description

-XX beneath detection limit (XX = detection limit) -88 beneath detection limit (detection limit value unknown)

-99 not detectable

\------- ---------------------------------------------------------

### Measurement data

If an object is selected in the GeoDin Object Manager, for which measurement values can be entered, the method  ![Measurement value management](../../.gitbook/assets/icons/measurement-value-management.png) **"Measurement value management"** is available.

The main elements of the measurement value editor are:

A complex **Data sheet**, the **Top tool bar**, the **Right tool bar** and the status bar.

### Data sheet

The database grid shows the available measurement values. Depending on the object type definition and database configuration, one or more data types may be used for an individual measurement point. Each data type has its own database sheet - you can move between them using Ctrl+Tab, or just click the appropriate sheet.

Each data type has **"Measurement program"** and **"View"** settings. At the bottom of the grid there are small tabs with **"Parameter groups"** (containing the individual parameters), **"Diagrams and analysis"** and **"Additional measurement information"**.

The basic use of the data input grid as well as the management of views is described in the chapter [Using the data entry grid](working-with-measurement-data.md).

The parameter of a data type are arranged in so-called parameter groups. This option an be shown as a tab under the data entry grid, where the parameter columns are also displayed in groups. With the option turned off, this ordering is ignored and all data type parameters are shown. The number of displayed parameters can be further restricted by the choice of **"Measurement program"** which are a definable selection of named parameters that can be created for data types in the [Measurement program](working-with-measurement-data.md). In addition to the current measurement program there are the collections **"All parameters"** (no parameter restrictions) and **"Used parameters"** (display of parameters with values in the database). A further way to customize the display in the number and order of parameters is the use of the top left button to select the columns and moving the columns with the mouse.

### Additional measurement information

_**ATTENTION:**_ _Additional data for a measured value can only be attributed to an existing measured value. If additional information is entered although no measured value is available, it will not be included in the current data set. If an attributed measured value is deleted, its additional information is also removed._

**Additional information - Measurement value**

By selecting this option additional information to the actual measurement value is available. For each measurement value information about the method of investigation, the used unit and the appropriate detection limits can be stored.

**•** Additional character

Alternative to recording the negative value instead of a measurement value below the detection limit also the additional symbol "<" can be entered. At all places in GeoDin where the values below the detection limit are treated different, both methods of displaying values below the detection limit are considered equally.

In the measurement value editor a record can be visualized by a colored mark of the particular value (**Display options**).

**•** Method

From a list of available examination methods the one the actual parameter was detected with can be chosen ([Investigation method](../object-types/geotechnical-investigation-en-iso-22475.md)).

**•** Detection limit

The detection limit of the investigation method during the examination of the parameter can be entered.

**Laboratory information**

If the option Additional measurement specifications was activated during the creation of the current data type, any parameter can be added information about the laboratory analysis (**Properties**).

Using this information is sensible mainly for management of the chemical parameters, which require detailed information about the method of analysis. This information should be used for hydrochemical not for hydrodynamic (waterlevels) data.

On this side the laboratory information is stored:

1. Laboratory

Information about the analyzing laboratory ([Investigation method](../object-types/geotechnical-investigation-en-iso-22475.md))

1. Sample number

Number of the sample in the laboratory

1. Detection limit

Detection limit of the used analyzing method

1. Confidence interval

Confidence interval of the investigated measurement value (+/- most reasonable fluctuation range)

1. Matrix

Matrix used for the sample investigation ([Investigation method](../object-types/geotechnical-investigation-en-iso-22475.md)).

1. Extraction

Method of extraction

1. Date und time

Time of the measurement in the laboratory

1. Plausibility

Information about the plausibility of the measurement value

Auf der Seite der Ergänzungen werden verwaltet:

1. Sample preparation

Information about the preparation of the sample for the laboratory analysis

1. Reference to the result

Reference to the result

1. Interpretation

Interpretation of the measured value

### Formula

As an alternative to presenting the measurement values in grid form you may view the current data set in a mask. At the top of the mask the general sample data (Name, Date, Time) and the group are displayed. Below the individual parameters for the current data set are listed in rows. For each parameter the name, measurement value, unit, detection limit and investigation method are shown. Name and unit are not editable.\
\
The contents of a data set can be saved as a simple text file (which can be subsequently loaded). By pressing the **OK** button the mask contents are saved to the data set - by pressing **Cancel** the contents are discarded. Optionally the short field name can be used for the parameter column.

### Location point link

Each data set is internally linked to a measurement point. This classification relationship can be changed in the measurement editor. If opened by clicking the icon, a list of all objects in the current group or query is shown.

After choosing a measurement point and the method (**Move** updates the classification, so that in the original object the measurement values do no longer exist; **Copy** duplicates the measurement values) reclassification is the carried out by clicking **OK**. Reload the object to see this displayed.

If several measurement points are selected when the reclassification is carried out, all these measurement points are reclassified.

### Combine data sets

With many data sets you may encounter identical sample names, dates and times, although the contents (measured values) are different. This can occur when different laboratories have performed different analyses on the same samples and the values were imported into your database separately. In case such data sets belong together they may be combined. Upon starting this function the data sets are analyzed in the measurement value editor and a list is generated for those data sets, which can be combined. There is an option to include the sample name too.

If a data set is to be excluded, then it can be removed from the list by clicking on the icon.

By choosing **OK** the data sets will be combined.

_**Attention:**_ _If parameters are present in several data sets with different values, then the data sets will not be combined. If the values are identical however then the data sets will be combined._

### Measurement value editor options

On several tabs there are options to control the way you use the measurement value editor.

### Data model

**Registration of an investigation type (INVTYPES)**

Each investigation type is registered in the table INVTYPES with one data set:

As an investigation type the point or interval from which it was measured is considered. Usually these are groundwater-monitoring points (filter), sample intervals (samples) or even objects themselves. Further measurement point types can be defined on the system level. When working in a project only the measurement points known to the system are available for selection.

Data fields

***

INV\_TYPE Abbreviation (three letters) for a unique identification of the measurement point type INV\_NAME Long name to describe the measurement point type INV\_OPT System options

***

The definition of the data types occurs in the table DAT\_TYPES. Here each data type occurs only once. Only data types registered in this table can be linked to a measurement point type.

**Registration of a data type (DATTYPES)**

Data fields

***

DAT\_TYPE Abbreviation (three letters) for a unique identification of data type DAT\_NAME Long name to describe the data type DAT\_OPT System options

***

**Linking data types to investigation types (INVTABS)**

For data types measurement and investigation parameters are grouped together according to similarities in the measurement method and the describing contents. Common examples of such data types are water characteristics, hydrological factors and petrographic information. A data type can be constructed from several investigation types. The link giving which data type for which investigation type is available, is defined in the table INVTABS.

Data fields

***

INV\_TYPE Abbreviation (three letters) for a unique identification of the measurement point type DAT\_TYPE Abbreviation (three letters) for a unique identification of data type

***

**Registration of a chemical group (STFGRP)**

There are a variable number of measurement parameters for each data type. These are grouped together using similarity criteria. An example of such a group is a chemical group, which may contain a maximum of 20 parameters. Chemical groups are defined in the table STFGRP.

Data fields

***

DAT\_TYPE Abbreviation (three letters) for a unique identification of the data type FIELD\_GRP Abbreviation (three letters) for a unique identification of the chemical group GRP\_NAME Long name to describe the chemical group GRP\_CNT Counter GRP\_OPT System options TAB\_DESC Table descriptor, in which the chemical group is physically contained

***

The contents of the field TAB\_DESC must agree with the structure definitions in the table MESSTRS, associated with the chemical group. The contents cannot be longer than 8 characters and must conform to the DOS file naming conventions. Up to 12 Chemical groups can be combined in a database table.

**Structure of the data tables (MESSTRS)**

The structures of the measurement data tables are contained in the table MESSTRS. The structure of this table conforms to the table structure of LOCSTRS (see above).

The contents of the field TAB\_DESC must agree with the structure definitions in the table STFGRP. The contents cannot contain more than 8 characters and must conform to the DOS file naming conventions. The field FIELD\_GRP must show a valid entry from the table STFGRP.

**Pool Object Data**

The pool object data contains the physical data tables of the object descriptions of a project. GeoDin generates the data tables, if the particular object types are used. The description of the data tables is provided by the object type structure information in the system pool of the project. In addition to the data tables registration tables are also organized in the pool object data.

Object registration LOCREG

In this table every object is registered with one data set (independently of the object type).

***

PRJ\_ID Project ID LOCID Up to 4 digit number (running counter) for each object in the project values: 1-9998 LOCTYPE Contains descriptor of the object type INVID is an exact 16 character long string with the measurement point number:

```
          zzzzzzxxxxyyy000

          zzzzzz is the Project ID
          xxxx is the 4 digit LOCID filled up with zeros (e.g. 0025)
          yyy is the ID of the investigation type
          Project ID
```

OPT\_PARAM empty XCOORD X coordinate YCOORD Y coordinate ZCOORDB Object absolute height ZCOORDE End depth in meters below ground surface (for depth related objects) SHORTNAME is the Short name for the object LONGNAME is the Long name for the object PHYSFILE Name of the object file (only in GeoDin standard projects) LOCKINFO empty

***

\
Measurement point registration for developed measurement points FILREG

In this table all developed measurement points of a project are organized (e.g. monitoring wells). A object may contain several measurement points.

***

LOCID ID number of the object RECID Counter of developed measurement points per object INVID Measurement point ID number

```
        zzzzzzxxxxyyynnnn

        zzzzzz is the Project ID
        xxxx is the 4 digit LOCID filled up with zeros (e.g. 0025)
        yyy is the ID of the investigation type
        nnnn is xxxx is the 4 digit counter filled up with zeros for developed measurement points per object
```

INVZBEG Top of the measurement point in meters below ground surface INVZEND Bottom of the measurement point in meters below ground surface INVNAME Name of the measurement point

***

Measurement point registration for undeveloped measurement points PRBREG

In this table all developed measurement points of a project are organized (for example sediment sampling). A object may contain several measurement points. The structure is identical to the table with the table FILREG.

**Measurement values in SDM (Small Data Model) or LDM (Large Data Model)**

In the GeoDin system version 3 or better a further data model is available for measurement values. In the current Small Data Model (SDM) a sample or measurement in a measurement value table takes up one data set. The table columns correspond to the individual parameters. This form of data organization has the advantage of a great degree of transparency in data distribution. A disadvantage occurs with heterogeneous data distributions and/or with many different parameters. In the first case a table results with lots of empty spaces needing a large amount of space. In the second case of an extensive number of parameters, the table becomes ever broader and consequently slower. A further disadvantage is that a change to the parameters necessitates the creation of a new table. This in turn means that a user must be able to create tables on a database server, which for desktop databases is a time-consuming and complicated process.\
\
To combat the disadvantages mentioned above a second data model was developed in GeoDin, the Large Data Model (LDM). This model organizes the data parameter wise, i.e. in the measurement value table each value is contained in a row. Through this form of effective data organization there are no empty spaces and remains small even with large numbers of parameters. Additional parameters can be added to the table by a simple redefinition as opposed to a restructuring in the SDM. The conversion from one data model to the other is carried out in the data type model and is reversible.\
The actual values are kept in three tables in the Large Data Model, optimized for the particular type of parameter. There individual tables for values, text and dates. The LDM table structure is shown below:

Table of numerical values: \<DATATYPE>VAL01

***

FIELD\_NAMEFIELD\_TYPEFIELD\_LEN FIELD\_DEC FIELD\_LONG INVID C 16 Measurement point ID SMPID N 9 GeoDin Sample ID PARAM\_DESC C 8 Parameter ID MESCHAR C 1 Additional character MESVALUE N 20 8 Measurement value MESUNIT C 15 Measurement unit MESSENSIB N 20 Detection limit METHODID N 9 Investigation method MESOPT N 9 Measurement - option MESSIGNIF C 10 Measurement - significance

***

Table of text values: \<DATATYPE>TXT01

***

FIELD\_NAME FIELD\_TYPE FIELD\_LEN FIELD\_DEC FIELD\_LONG

INVID C 16 GeoDin measurement point ID SMPID N 9 GeoDin Sample ID PARAM\_DESC C 8 Parameter ID MESTEXT C 254 Text entry MESOPT N 9 Measurement - option

***

Table of text values: \<DATATYPE>DAT01

***

FIELD\_NAME FIELD\_TYPE FIELD\_LEN FIELD\_DEC FIELD\_LONG

INVID C 16 GeoDin measurement point ID SMPID N 9 GeoDin Sample ID PARAM\_DESC C 8 Parameter ID MESDATE D 8 Date entry MESOPT N 9 Measurement - option

***

**Object type - Measurement point - Investigation type - Data type - Chemical group - Parameter**

In the definition of a object any investigation type may be defined for every measurement point type. An investigation type is basically a combination of data types. Data types are the sum of the investigation parameters that are individually related by the time/date of the measurement and or the investigation type (chemical laboratory measurement, in-situ measurement, geotechnical measurement). Chemical groups are logical arrangements in a data type (for example anions in the data type groundwater chemistry). Parameters of individual chemical groups are shown in GeoDin in various masks as "views".

Fig.1: Relation between general data and the measurement values

Fig 2: Relationship between object type - measurement point type and investigation type - data type general data\
\
\
**Measurement points and investigation types**

GeoDin recognizes different types of measurement points and investigation types. These may be defined for individual object types and can contain varying parameters. Basically anything can be a measurement point as long as measurement values are measurable.

The GeoDin object points are geographically definable. For example a object can be a weather station, a borehole, a monitoring well or a surface water collection point. Each object has its own distinct properties and each object can be a measurement point. Optionally a measurement point may include depth related information. In the following list these would be boreholes and wells.

In GeoDin there are three types of measurement points:

**Object**

A relationship between measurement values and objects is necessary (or makes good sense) when the measurement object has no vertical depth property, where the depth information for the measurement values is unknown, or where the depth related information has been averaged or combined (for example a mixture of water from different depths in a water-works well). This kind of measurement point can only exist once per GeoDin object and is defined by its coordinates.

**Undeveloped measurement point**

An undeveloped measurement point is usually defined by an upper and lower boundary. The most common example is a sample collected during drilling, where no permanent construction exists and where the investigations are carried out only once or at most episodically. Additional information on the composition of the sample may also be noted. GeoDin allows up to 99 undeveloped measurement points per object.

**Developed measurement point**

When measurements are to be collected at a defined depth range at regular intervals some sort of permanent construction normally exists to guarantee access (for example a filter in a piezometer for groundwater sampling). Additionally details on the measurement point construction may be recorded. A single object may contain up to 9 developed measurement points.

The individual investigation types, based on the three types of measurement point can have entirely different definitions and configurations. During the design of the data model the main decision is on which type of measurement point is the investigation type to be based.

Both undeveloped and developed measurement points are related via their depth information to a object. In the following example three types of measurement points are shown in the graph of a borehole and water well.

There are

1\. the measurement point type "Object"

The relation in this case is a borehole. All measurement values, which are related to the borehole and have no depth values, are related here. This can be mixed water from the pipes or measurement values of the place, where the borehole is brought down (plants etc.).

2\. the measurement point type "Undeveloped measurement point"

It is measured related to a filter pipe, which is again representing a certain aquifer. Also related to the filter is the information about its construction. Normally in time intervals samples are taken.

3\. the measurement point type "Developed measurement point"

During the boring samples are taken and investigation results were achieved. The samples are only taken once but examined several times. The sample is sufficiently described by the depth, from which it is taken. Additional information is given about the sample material.

\
**Relationship between investigation types and data types**

Data types are groups of measurable parameters. The composition of each group may be freely defined, but usually reflects the type of measurement point and/or investigation. Data types are assigned to one or more investigation types.

**Example:**

The data types groundwater chemistry and groundwater dynamics are assigned to the investigation type GWBR-Filter, although both may also be assigned in another combination to another investigation type (e.g.: groundwater chemistry, groundwater dynamics and groundwater dynamics to the investigation type Water Supply Well).

### Adding data set records

**\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_**

The method  ![Add data set records](../../.gitbook/assets/icons/add-data-set-records.png) **Add data set records** is available for measurement points or groups thereof.

This method is used to add data sets using a date or date list.

The method is especially useful for creating empty data sets for a monitoring program, either on a certain day or over a specified time period, after which the data are to be added in one import to the GeoDin database.

**Attention:** Decisive for the processing of the method is the level, at which it is called up. Is it a single measurement point, only this is edited, is it a measurement point group, the data set is added on every measurement point of the group.

· **Data type**

Choice of data type for the measurement objects.

· **Measurement presets**

Useful for defining defaults (e.g. detection limit, investigation method) for each parameter of the data type

· **Date list**

Default value is the current date, but a list of dates may be created, saved and loaded.

· **Time**

It may be useful to specify the same time for a number of measurement points or monitoring stages.

### Add several data sets

This method is used to add data sets, which follow certain time intervals. An example can be pumping tests.

First load a time interval file (text format). In this time intervals in minutes and their names (sample names) are declared.

105;105 min

120;120 min

150;150 min

180;3 hours

240;4 hours

300;5 hours

360;6 hours

By entering the starting time the start of the measurement series is defined. The appropriate time steps of the measurements in the data sets are calculated from the minute values of the time interval file and the start time.

Optional the parameters of the target type values can be defined for a presetting.

### Datatype Manager

The method **"Data Type Manager"** is available at the database level. It is the most important tool for defining and configuring options for measurement data collection. In particular you may define here which data types (thematic groups of measurement parameters) and which measurement parameters are to be used in the current database.

Method symbol of the Data Type Manager

Since data types are related to specific objects and measurement points, they can first be configured once an object has been created in the database.

The Data Type Manager gives an overview of the data types available in the current database. The following functions are available:

[Add data type](../data-types.md)

This function allows you to add a data type to your database. This is described in more detail in Chapter [Add data type](../data-types.md).

**Remove data type**

This function will remove any data records belonging to the data type selected, as well as the database tables and definitions. _**Attention:**_ _Deleting measurement value data records cannot be undone! GeoDin calculates how many data records will be deleted and displays this as a warning message. This is the last point at which you may still cancel._

&#x20;![Determine number of records](../../.gitbook/assets/icons/determine-number-of-records.png) **Determine number of records**

Function calculates the number of data records present for each data type in the database and shows an overview.

**Add data type to the system configuration**

Editing individual parameters of a data type is only possible when the data type is part of the current system configuration. Normally this is the case with GeoDin databases, but sometimes you may receive a database from another user with data types that are not defined in your system configuration. With this function you can then add the definition from the database to your system configuration. Please note that when using dictionaries in data fields of the data type that these will not be present. Please ask the user from whom you have received the database to export the user-defined data type from his system configuration, for you to then import. Hence you should use the method "Add data type to the system configuration" only when no possibility exists to obtain the data type as a configuration file.

**Search data type**

Enter a search string for the data type search in the data type overview. The entries in the overview are reduced to fit the search entry. With a double-click you can then edit the properties of the selected data type.

**Search parameter**

Enter a search string for the parameter search in the data type overview. The parameter will be searched for in all the data types in the database (or in the restricted list as defined by your search parameter). Parameters found will be listed underneath the relevant data type. Double-clicking on the parameter takes you to the edit modus (Adding / Deleting/ Properties) for the chosen parameter.

**Delete parameters**

This function can delete parameters that do not contain any measurement values in the database. All parameters without measurement values are displayed in a dialogue window, where it is possible to edit the parameter list again. All selected parameters will be deleted from the database. If this then causes empty data types, they will be removed from the database too.

### Add data type

This function allows you to add a data type to your database. During this process new tables will be added to your database and as will new information to the system tables of the database. In Client/Server databases you will need the appropriate rights - please contact your database administrator if necessary.

First select your data type from the overview and click on the **Proceed** button or double-click directly on the data type entry to get to the parameter choice.

The available parameters are ordered in groups of elements. Make your parameter selection by checking the appropriate boxes. You can also check whole groups or all parameters of a data type by checking the relevant node. The number of already chosen parameters is shown over the parameter overview.

Existing measurement programs (combinations of parameters) can be accessed via the drop-down list in **"Measurement programs"**. Here you can quickly chose or remove them from the selected measurement program.

A particular parameter can be found by using the search field _"Search"_. Only parameters that meet the search criteria are shown (parameter and data field names).

Independently of the measurement program or search criteria restrictions, chosen parameters are shown in the overview, so that you always have an overview of the already chosen parameters.

_**Note:**_ _parameters can also be added to or removed from the database at a later date by starting the data type manager and editing the required data type._

[Data model](../data-types.md)

The data type tables can be created in two different variations: the "Small Data Model" (SDM) and the "Large Data Model"(LDM). The SDM is suitable for data types with a small or medium numbers of parameters. In this case tables are created with columns headed by parameters and one data record contains the measured values for all the parameters analysed. The LDM is especially suited for data types with a high number of parameters. In this case tables are created in which rows contain only a single measurement value that is related via the parameter-ID to the measurement parameter. This can be useful since the number of table columns may be limited by the database to 254 parameters. For example it is not possible to use all the parameters from the data type groundwater chemistry as a SDM, since it contains more than 254 parameters. Further information can be found in the chapter [Data model](../data-types.md)

The default data model setting for a data type is shown in the system configuration. You have the option of choosing the other model.

By clicking the **Create** button the data type will be added to the database. This completes this function.

### First-time setup: adding a data type to a database

Before measurement values can be entered, the relevant data type must be added to the specific database. This is a one-time setup step per database.

**Step-by-step:**

1. In the GeoDin Object Manager, select the database entry (not a project).
2. Open the **Data Type Manager** method (available at the database level).
3. In the Data Type Manager, click the blue **+** button (right-hand side) to select a data type from the system configuration — for example, _Groundwater Chemistry_.
4. In the parameter selection screen, tick the parameters required (or select a saved **Measurement Program** from the drop-down).
5. Click **Create** (German: _Erstellen_). GeoDin writes the required database tables and registers the data type. The data type is now available for all objects in this database.

{% hint style="info" %}
If the data type does not appear in the system configuration list, use **Add data type to the system configuration** to import its definition from the database first.
{% endhint %}

### Small Data Model vs. Large Data Model

When adding a data type you can choose between two storage models:

**Small Data Model (SDM)** — 2 tables. One row per measurement record; each parameter is a column. Simple and transparent, but limited to a maximum of 254 parameters per data type. Suitable for most standard data types.

**Large Data Model (LDM)** — 3 tables (values, text, dates). Each parameter value occupies one row, linked via a parameter ID. More efficient for data types with many parameters or sparse data distributions. Mandatory if a data type exceeds 254 parameters (e.g. full groundwater chemistry suites).

The default model for each data type is set in the system configuration, but can be overridden at the time of creation or converted later via **Data Type Settings > Convert data model**.

### Measurement Programs (Messprogramme)

A **Measurement Program** is a named, saved selection of parameters within a data type. It allows users to quickly apply the same parameter set when adding a data type to a new database, without manually re-selecting parameters each time.

Measurement Programs are created and managed in the system configuration (System > Data Types > edit the data type group). Once saved, they appear in the **Measurement programs** drop-down in the **Add data type** dialog and in the measurement value editor for filtering the displayed parameters.

### Data type settings

Here you can edit the data type properties of a database.

Data mode**l**

With the help of the function **"Convert data model"** you can change the way that measurement values are stored for a data type in a database. This is achieved by making structural changes to the database tables, which may take some time , depending on the number of measurement values for the data type. This process may be canceled at any time without losing any data (aready available measurements will be completely converted to the other structure). Further information on the data model can be found in the Chapters [Add data type](../data-types.md) and [Data model](../data-types.md)

During the conversion process new tables are created in the database, hence the user needs the database rights to create and delete tables. Please contact your database administrator as required.

**Properties**

Define which columns are to be hidden during the data collection. The defaults settings show the sample name, date and time, which can be entered for every data record. For data types where a separate naming of the measurement data record or the entry of time information meaningless is, these columns can be hidden.

without sample name: the column sample name is hidden.

without date/time: The columns date and time are hidden.

without time: column time is hidden (date column remains visible).

**Association with measurement point types**

The association of a data type to measurement point types controls the availability of the data type for data collection and analysis for actual measurement point types in the database. The system configuration already contains useful data type - measurement point type associations, which can be expanded. Typically the data type "sediment chemistry" is associated with the measurement point type "sample", whilst the data type "groundwater chemistry" is associated with the measurement point type "filter". When a sample is selected in the GeoDin Object Manager (GOM), the [Measurement data](../../data-collection/import/measurement-data.md) a data entry grid for measurement values of sediment chemistry is shown, whereas when a filter is chosen the measurement parameters for groundwater chemistry are offered. Further information to measurement point types can also be found in Chapter [Measurement values](working-with-measurement-data.md)

The correlation between data types to a measurement point type can be set by selecting the relevant row. The name of the associated measurement point type can be edited by double-clicking on the column name, which defines the GOM measurement point type labelling

Object; A measurement point of this type is generated when an object is created in a GeoDin database..

Sample; A measurement point of this type is generated when a data record for an object is created in the sample table.

Filter; A measurement point of this type is generated when a filter is created in the well design table of an object.

### Import

Use the method  ![import measurement values](../../.gitbook/assets/icons/import-measurement-values.png) **"import measurement values"**

to import measurement values from external data sources into your GeoDin database.

Follow the following steps:

**Data source**

Open the external file or database that contains the data to be imported and select the format options.

**Measurement point assignment**

Map the data sets to a GeoDin measurement point. Skip this step if you start the method at a single measurement point in the GeoDin object manager. The program will map the data sets to the selected measurement point automatically.

**Parameter links**

Assign import columns to GeoDin parameters of the selected data type.

[Import](../../data-collection/import.md)

Select further import options, preview the import data and execute the import.

**Save and load a configuration**

All import settings can be saved in a configuration file to quickly select and import data with a similar data structure.

You can also load only parts of the settings stored in the configuration file, for example if your parameter mapping is always the same while the mapping for measurement points varies. To do this, select the desired configuration settings in the dialog 'Assign configuration settings'.

### Data source

Open a file or database that contains the import data. The program supports the following file formats:

·MS Excel

·MS Access

·dBASE

·Text-files

·CSV-files

After selecting a file or database, choose a tab sheet (Excel), table (Access, dBase) or a column separator (CSV, text file). You can preview the import data. For MS Excel or text files you can define whether the first line contains column headers, which is common. In addition, you can define the date format used in the import data. GeoDin uses this setting for later date conversion.

In the preview you can select and delete data sets that should not be imported. They will only be removed from the preview. Your import source will not be modified.

With the button [Format options](data-sequences-and-cpt.md) you can preformat your import data. For more information see chapter [Format options](data-sequences-and-cpt.md).

**Importing MS Excel files (\*.xls, \*.xlsx)**

GeoDin uses a Microsoft OLEDB database connection to access the MS Excel file. This driver (not GeoDin!) interprets the first few lines of a table to identify the field format of the column. If the the format is number, the column content will be formated as numbers and any text content will be ignored. In this case you can define the column format in MS Excel as text BEFORE importing the file with GeoDin so that the data will be visible in the preview. Still GeoDin will generate an error if you try to import cells with text into a numeric field of the GeoDin database since this is not permitted.

MS Excel internally stores time data as real numbers for both date and time. Due to compatibility issues GeoDin holds date (type date) and time (type text with length of 5) separated. Such information must therefore be separated in the import data as well. Separating date and time in two columns in Excel will still render the date 0 (which is 31.12.1899) in the time format. This means the first 5 characters of the time field will be '31.12'. To avoid this, you can either define the time column in MS Excel as text or export the Excel sheet into a CSV file and import this file into GeoDin.

### Measurement point assignment

In this step you can link the data records of your import file to a measurement point in GeoDin. The GeoDin measurement points of the current query or group are listed in the table "Measurement points:". Select from the drop-down list **"Data source:"** the column of your import table that contains the name or id number of the measurement point, to use to create the link with the GeoDin measurement point. The contents available from this column are displayed in the table "Data source:".

To create a link between data records to be imported and the measurement points in GeoDin, select and pair the entries of the lists "Data source:" and "Measurement points:" by drag and drop on one another. The direction that this is carried out does not matter (i.e. Data source dropped onto Measurement points or vice-versa). The links created are displayed in the table "Links:" and the already linked entries of the columns are removed from the lists of origin. In this manner only entries, which are not yet linked, remain in the lists "Measurement points:" and "Data source:".

If the import table contains names that match the names of the measurement points in GeoDin or even the GeoDin ID of the measurement point (INVID) you can use the button **Automatically link** to create a link for the corresponding entries.

The input fields are to reduce the amount of the displayed fields or columns. Only entries, which contain the search string, will be displayed. Please clear the input field to see all entries.

If you have saved a configuration and links for an import in a former GeoDin version as a configuration file (file extension .ini) it is possible to load this using the button **Import**. These configuration files had the following structure:

\[Import measure links]

MEAS\_PT\_ID=

'B 01 : (4 - 5m)'=U9SYT40001FIL001

'B 02 : (6 - 7m)'=U9SYT40002FIL001

...

The first row in the paragraph \[Import measure links] contains the column name of the import table. After that follows one row for each link: First an entry (name) from the column of the import file then the equals sign and next the GeoDin ID of the measurement point.

Invalid links will be highlighted in pink. Those links can occur if you change the data source or choose another data type after the parameters were linked. You can remove these invalid links by using the button .

### Export

You will find this method within the method collection **"Publish and export"**.

This method exports measurement values for a data type in various formats. In addition the measurement point name and object name is also exported.

Choose a data type and select the export format. further settings may be available

**Column headers**

Choice of different header types

**Export ID fields**

In addition to values and general of the measurement point, internal GeoDin fields like LOCID, INVID etc. are exported.

**General data**

In addition to values, general data like coordinates and depth information are exported.

### Time range controller

For data types with measurement values with a time component an optional time range controller can be used to navigate data. This is useful for quickly getting an overview for particular time periods, by only loading the necessary data sets. Additionally, the user has feedback on the amount, distribution, storage requirements and loading time.

**Information on data sets and distribution**

In the top part of the window information is shown on the available data sets. This includes the start and end points of the time range, the total number of data sets and their distribution, shown by different blue coloured areas (white areas have no data, dark blue the most concentrated). Detailed information is also shown by hovering the mouse over these areas. When opening a data type in the measurement editor, the information for the time range is read from the database and the areas where data has not yet been read coloured orange. The final colouring of all areas is carried out once all the values have been loaded.

Querying the information from the database takes a few seconds. The most current data sets are loaded, and you can navigate in the data grid already. When using the time range controller, only a specified maximum number of data records is loaded into the data grid. This number of data records can be set in the configuration of the data type and is preset to 5000 data records. If the number of data records is less than the set maximum value, all data of the data type are loaded into the data grid as before.

The system configuration of a data type for the use of the time domain controller is done at

**Editor options**. User-specific settings for the use of the time domain controller can be made in the [Time range controller](../../data-visualization/time-series-charts.md).

[Time range controller](../../data-visualization/time-series-charts.md)

Which data sets to load can be configured in several ways:

On the left and right there are time icons , to pick direct calendar entries. Clicking a month or a year zooms the pop-up calendars out for more choice. The current date can also be selected.

The left and right arrows and move the defined time range forward or backward in time. Each step represents the selected time range.

It is simplest to choose a time range with the slider controls. The time range set can also be slid horizontally left and right (i.e. forwards and backwards) keeping the range intact. Moving one oft he two sliders leaves the other start or end date intact.

Above the time range controller several useful pieces information are displayed. The time range is shown (date/time from-to) and below this the number of data sets, memory usage and the time to load the data sets. When using the controller these values are estimated, so that the user receives feedback before a selection is made (this may depend upon other factors). After defining a time interval (i.e. after making a selection with the mouse and releasing) the values shown are calculated. Two small vertical lines also show the currently selected time range.

### Import measurement data

This button can be used to import measurement values to a parent dataset.

The button is not available on groups or queries for several measuring points, but only if you have selected a single measuring point in the GeoDin Object Manager.

Detailed information on the settings in the import dialogue can be found in the chapter [Import](../../data-collection/import.md).
