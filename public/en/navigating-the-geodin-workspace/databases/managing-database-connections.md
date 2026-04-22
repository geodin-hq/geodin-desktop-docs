---
description: Managing Database Connections
---

# Managing Database Connections

### Databases

GeoDin data is stored in databases, which may contain any number of GeoDin projects - the only limit is your disk space.\
Databases are accessed using a specialized database driver (OLE-DB-Provider). This driver is included in your operating system or is provided with your database. Database connections are created, configured or deleted from the GeoDin user interface.

Depending on how the data is stored and managed, GeoDin differentiates between the following database types:

**Desktop databases**\
\
GeoDin data is stored in a user-defined physical database format such as Microsoft-Access (MDB). In order to use a desktop database you need a database connection. This can be done directly in GeoDin. Any program that supports the database format can be used for viewing or editing the data. The database operations are performed on the client PC.

\
**Client/Server databases**\
\
Data is stored in a database on a database server e.g. Oracle, SQL-Server etc. In addition to a database driver and database connection, client software for the relevant database is needed. A database administrator must set up user identification on the database server, which appears when the database is opened (login). The database functions are implemented on the database server reducing computing load on the client PC(s).Client/server databases can be used from _**GeoDinProfessional**_ onwards.\
The GeoDin-System contains functions to copy or transfer data between database types. Hence it is possible to change the database format of a project after it has been created.

**Hierarchy and general rules**

GeoDin databases can be defined on two distinct levels.

[System databases](connecting-to-a-database.md)

are defined in one central object, the GeoDin.INI file. This can be a write protected file in a network and managed by the system administrator (see **Configuration**). Any database settings in this file override all other database definitions with the same name. These databases are available to all users who start GeoDin from this object.

**User databases**

are created or defined locally using the method **"Create database connection"**. The settings are stored on the user's PC and are available to the user that created them.

**Database connection name**

Different user databases cannot have identical names. A database connection defined as a system database is used in preference to a user-defined database

### User databases vs. system databases in centralized deployments

Understanding the distinction between user and system databases is especially important when GeoDin is installed centrally and accessed via Remote Desktop (RDS/Citrix) or a shared network installation.

**User databases** (blue cylinder icon) are stored in the **Windows registry of the individual user's local PC**. In a centralized deployment, this means they are stored in the registry profile of that user on the terminal server. Only that user sees these connections — other users opening GeoDin from the same installation will not see them.

**System databases** (yellow cylinder icon) are defined in the `GeoDin.INI` file, which is shared across the installation. Every user who opens GeoDin from that installation sees the same system databases.

{% hint style="info" %}
In organizations with a central GeoDin installation (e.g. accessed via Remote Desktop), shared project databases should be registered as **system databases** in `GeoDin.INI` by the IT administrator. This ensures all users see the same database connections without each person needing to configure their own connection.
{% endhint %}

{% hint style="warning" %}
If a user creates a user database connection and then another user needs to access the same database, that second user must also create their own connection — or the IT administrator must add the database to `GeoDin.INI` as a system database.
{% endhint %}

### Migrating an Access database to PostgreSQL using Copy All Projects

The **Copy All Projects** method (available at the database level) is the recommended way to migrate an entire Access (`.accdb`) database into a PostgreSQL database. It creates a 1:1 copy of all projects while preserving project IDs and all data.

**Steps:**

1. Connect both the source Access database and the target PostgreSQL database in GeoDin.
2. Select the source database in the Object Manager.
3. Choose the method **Copy All Projects**.
4. Select the target PostgreSQL database as the destination and confirm.

After the copy completes, both databases are closed automatically. Open only one of them going forward — having the same project IDs in two databases simultaneously can cause confusion. Remove or rename the old Access database connection once migration is verified.

### Create database connection

The method **"Create database connection"** is available under the  **Databases** tab in the GeoDin object manager (GOM):

Upon starting the method you may then choose, whether to use an Access database or create a connection to a database server (with _GeoDin Client/Server_ module).

Since GeoDin 9, database connections are no longer created with OLE-DB, but exclusively with FireDAC.

FireDAC has three main advantages over OLE-DB:

1. The connection allows faster access (especially noticable with client/server databases).
2. A complicated configuration process is not necessary (which is the case with ODBC connections).
3. The correlation of DLL\_ names of field type descriptors for Client/Server datbases in the GeoDin.inin is not necessary.

Detailed descriptions on FireDAC connections can be found here:

http://docwiki.embarcadero.com/RADStudio/XE5/en/Database\_Connectivity\_(FireDAC)

The creation of database connections to Access databases is described in chapter: [MS Access](supported-database-types.md)

The creation of database connections to Client/Server databases is described in chapter: [Client/Server](connecting-to-a-database.md)

### Edit database connection

When the database icon of an database connection is selected in the GeoDin object manager (GOM), the method  **"Edit database connection"** is available (_**Note:**_ _The database has to be closed_).

Editing a database connection is the same as creating a new connection, with the exception that the current connection is replaced. Both the name of the connection and the Access file or Client/Server database may be changed.

The settings for Access databases are described in the chapter:

[MS Access](supported-database-types.md)

The settings for Client/Server databases are described in the chapter:

[Client/Server](connecting-to-a-database.md)

### Delete database connection

An existing database connection can be deleted in the GeoDin-Object manager using the method  **"Delete database connection"** (_**Note:**_ _The database must be closed and it must be a user-defined database; system databases can only be deleted on the_ [_System databases_](connecting-to-a-database.md)).

Confirming with **OK** deletes the database connection in the GeoDin object manager. This deletes the connection but not the data, except in the following exceptions outlined below.

For a MS Access database the option of deleting the \*.accdb file of the Access data bank also exists.

_**Warning:**_ _If this option is chosen then the \*.accdb file will be deleted WITHOUT ANY possibility of restoring it. Hence use this option CAREFULLY and ONLY when you are certain that you do not need the database._

### Client/Server

In the appropriate environment and especially for working with a high amount of data the use of a database server is sensible. GeoDin supports database connections via **OLE-DB** and **FireDAC**. Whilst OLE-DB has been supported since GeoDin 3.0 , FireDAC is a new high performance data access library for use starting with GeoDin 8 available for customers with a "Software Update Service Contract". The performance of data acces using FireDAC is much faster than OLE-DB, particularly when using Oracle-Server, MySQL Server and PostgreSQL databases.

Furthermore some database features are only supported by FireDAC and not by OLE-DB fehlen (e.g. the Oracle data fields CLOB and BLOB). FireDAC also supportsavailable for the quick entering, editing and deletion of data records.

_**Note:**_ _Client/Server databases can only be connected using the_ \*\*_GeoDin_ _Client/Server module!_

When making a database connection you are essentially creating a database connection string

**Database name**

First enter a database connection name. This does not need to be the actual database (file) name - it is simply what you will see in the GeoDin user interface.

**Driver**

Chose the type of connection or driver.

There are two ways to create a connection string

Either enter it in the field provided

or

by using the icon **Create connection string** whichis done in several steps.

**Create connection stringFireDAC1. Step: Provider**

In the first step the database provider is selected. The dialogue shows all providers, which are available in the system. If a database specific OLE DB provider is available (for example for SQL Server or oracle), it should be preferred to other opportunities.

**2. Step:**

Now enter the database address (_Database_), the user name (_User\_Name_) and the password (_Password_).

On further tabs of the dialogue database settings can be made ("Options"), information on the database connection added ("Info") or a SQLScript run ("SQL Sript").

After making these entries the database connection string is available in GeoDin and can be tested using **Test database connection**.

Alternatively a .UDL file can be used for storing information on a database connection. To do this create an empty text file with this extension. Upon double-clicking the file in Windows Explorer the settings dialogue window will automatically open. After making the necessary entries and savings the new UDL file it can be used for database connections and be tested in GeoDin using the same proceedure.

**System database**

Information on system databases is described in the chapter [System databases](connecting-to-a-database.md).

### MS Access

The simplest way to work with databases is the use of a MS Access database by creating a connection directly in GeoDin. Here an existing database (\*.accdb) can be used or a new one can be created.

**Driver**

For use in GeoDin 8.x - 9.0 MS-Access drivers in 32bit are required. From GeoDin 9.5 onwards in 64bit.

If you have Microsoft Office installed, the appropriate drivers are already included, depending on whether you have installed the 32bit or 64bit version of MS-Office. If drivers are missing, GeoDin will inform you and refer you to the appropriate Microsoft downloads.

https://www.microsoft.com/en-US/download/details.aspx?id=54920

**Use an existing Access database**

Using drag and drop, an existing MS Access database can be dragged from a Windows Explorer window into the GeoDin object manager. To do this, select the database with a single mouse click and drag the symbol to the database branch in GeoDin while holding down the mouse button. Release the mouse button there.

The file name is used as the name of the database connection.

Using the **"Create database connection"** method, you can also set up the database connection:

Give the new database connection a name and select the corresponding \*.accdb file via the button with the folder symbol.

Older database files in \*.mdb format can be converted to \*.accdb with MS-Access.

**Create new Access database**

The second option is to create a new database. To do this, activate the option -Create new database-. By pressing the button below with the symbol **New database file** you determine the name and storage location of the database file.

**Open database in read-only mode**

To establish a read-only Access database connection, the connection string can be extended by the parameter "ReadOnly=True".

GeoDin recognises this setting and automatically hides all methods for changing the data in this database. For example, new projects cannot be created, data cannot be edited and new queries cannot be created.

**Configuration file**

Since GeoDin 9.0, database information from GeoDin.ini is no longer supported. This is now all conveniently available in the interface on the system page under [System databases](connecting-to-a-database.md).

**Connection symbol order**

For the access on an MS Access database GeoDin uses internally the connection symbol order:

_DriverID=MSAcc;Database= \[File name]_ for FireDAC connection where \[File name] has to contain the complete path and name of the \*.accdb file.

**Example:** DriverID=MSAcc;Database=C:\GeoDinDATEN\GeoDinDemoDB.accdb

### Configuration

Display of database connections in theGeoDinobject manager

The default setting for the GeoDin object manager shows:

1. database connections that have been set up as system databases on the system side
2. user-specific database connections; these are stored user-specifically in the Windows registry and are also only visible to the user who has set up this connection

\
**Preventing user specific connections**

Setting the User ADODataBases=false in the \[Databases] section of the GeoDin.ini file hides both these database connections and the method for creating them. The methods for creating such connections are then also hidden.

\[Database]

UserADODataBases=false

**\[Section \[DBCreateList] (optional part)]{.underline}**\
\
This section limits the list of databases, in which new GeoDin projects can be created

**Example:**

\[DBCreateList]

DB1=GIS-Projects

Users can create new projects only in database GIS-Projects.

**Definition of database groups**

Databases in the section \[SystemDataBases] can be optionally grouped in the object manager. To do so first create a new section in the configuration file where the groups can be defined:

\
\[SystemDataBasesGroups]

GOMGroup1=Geotechnics

GOMGroup2=Hydrogeology

\
In the relevant configuration section of a system database (see below) enter the group name using the parameter GOMGroup.

\[GeoDin\_ARCHIVE]

....

....

GOMGroup=Geotechnics

The groups are shown in the GeoDin object manager as folders and are listed alphabetically directly beneath the _**...**\\**databases**_ node.

### Display options

The standard setting in the GeoDin object manager (GOM) shows all projects in the open database. Additional information for a project (ID, author, date of creation) is shown by moving the mouse pointer over the project icon in the GOM:

Sample project GeoDin

Project 120/01

Project 120/02

ID:DEMOPR

FUGRO CONSULT GMBH

20.01.2011

You can configure the type of display and the labelling of the projects in the database by right-clicking on the database entry and selecting _**display properties**_ from the pop-up menu. These settings are configuration specific for each user on a local PC. They have no affect on how the same projects are displayed on other workstations.

[Queries](../../data-analysis/queries/creating-queries.md)

GeoDin offers in each project a series of standard queries. These are for example the query "All objects", the queries for the object types or measurement point types. If you want to use only user-defined queries in your projects, you can hide the queries of object types and measurement point types. To achieve this deactivate the options -Object types- and -Measurement point types-.

The queries of the -System configuration- are the global queries, which are GeoDin system queries. The queries of the -Database administrator- concern the queries of the user "SYSQUERYOWNER", which are stored in the database. Further information about these queries is given in the chapter about creating [Queries](../../data-analysis/queries/creating-queries.md) and [Group objects](../objects/data-management.md).

Here also the queries, which are prepared by the GeoDin system manager, can be shown or hidden.

**Extended object view**

\
With the option -Extended object view- you select, whether detailed information about the single object should be displayed in the GeoDin object manager. This affects on the one hand the existence of measurement values at the particular place and on the other hand the existence of linked documents. The objects are displayed in this case with different symbols:

Samples

B 02 : S1 (0-1)

Borehole 02

Borehole 03

Here a small blue sphere symbolizes the existence of measurement values, a small document symbol the existence of linked documents.

\
In case of existing documents this selection leads to a widening of the object display by the single documents:

Borehole 02

Documents

Graphics

Borehole

Well design

Data sequence

Further information to navigation and display of the documents you find in the chapter [Documents](../documents/managing-documents.md).

\
The display of detailed information to each object in the GeoDin object manager takes more time to open the branches than without display. For slow database connections it can be sensible not to use this option, at least temporarily.

Limiting the projects shown in theGeoDinobject manager

If your project folder contains a high number of projects it may be helpful to limit the number of projects displayed by a condition in the WHERE field in SQL syntax. Every GeoDin project manager contains the following data fields:

***

FIELD\_NAME FIELD\_TYPE FIELD\_LEN FIELD\_DEC Description

PRJ\_ID C 6 0 Project ID

PRJ\_NAME C 40 0 Project name

PRJ\_ALIAS C 40 0 Alias (or project) name PRJ\_TYPE C 1 0 Project type PRJ\_OPT N 10 0 Optional parameter PRJ\_USER C 30 0 Name of author PRJ\_DATE D 10 0 Date created PRJ\_PATH C 78 0 Path or database alias

***

**SQL-Query examples:**

1. Display all projects by the author "Hutton":

WHERE: PRJ\_USER = 'Hutton'

1. Display all projects created after 01.01.2004:

WHERE: PRJ\_DATE >= '01.01.2004'

1. Display all projects created in 2004:

WHERE: PRJ\_DATE >= '01.01.2004' and PRJ\_DATE <= '31.12.2004'

_**Note:**_ _The date format depends on the database program used. In an Access-Database, the date must be defined as follows:_

\#mm/dd/yyyy# (#Month/Day/Year#)

In Access, the **example** queries given above are:

WHERE: PRJ\_DATE >= #01/01/2003#

WHERE: PRJ\_DATE >= #01/01/2002# and PRJ\_DATE <= #31/12/2002#

**Sorting the displayed project list**

The sorting criteria and information displayed can be set for the GeoDin object manager by choosing the relevant entries from the drop-down lists. If several items are required, then enter these in the entry field provided. Items can be separated by any keyboard characters.

For example the entry **'Name (Project ID)'** shows the project name and (in brackets) its ID.

The following key words can be used:

**'ID, Name, Alias, Date, Author'**.

### Select a source

**\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_**

Standard projects and dBase projects can be selected for conversion into the MS Access (or Client / Server) database format.

**File-based projects**

By selecting this method, all available drives will be searched for the directory containing the GeoDin projects, normally the directory "GeoDinDB". This directory is specified in the GeoDin.ini by the entry LocalMgrPath=\GeoDinDB\\

The selection list shows all drives where this directory was found (here: C:\GeoDin und E:\GeoDinDB).

If a drive is selected, the project registry is accessed (the table LOCPRMGR in the GeoDin directory) and the number of available projects is displayed.This number includes those projects which are located in other directories, but are registered in "GeoDinDB".

**unregistered projects**

GeoDin standard projects - created by users with older GeoDin versions - can not be registered in GeoDin 6, and are therefore not listed in the LOCPRMGR.DBF. Therefore, they are not found when using the method described above.

When selecting this option, a directory containing the standard projects may be specified. All projects in the file are identified by the GeoDinPR.DBF in the SYS directory and are presented in a list.

**dBase projects**

The dBase projects are not located in a directory with a fixed name. In a dialogue box, the folder containing the database can be selected. The project registry is accessed and the number of available projects is displayed.

### Select projects

**\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_**

The number of available projects is displayed for the source selected.

If a file-based project is selected, single projects or project groups can be selected. This can be done repeatedly for different target objects to split up the local database.

If a dBase database is selected as source, all projects will be converted. Selection of the converted projects is not possible.

### Select a destination

**\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_**

It is necessary to convert file-based and dBase projects into regular GeoDin databases to provide the full spectrum of GeoDin functions available.

Several target options can be used:

**Into an available GeoDin database**

All available databases are displayed in a list. The database system can be anything from MS Access to Oracle.

After selection of the target database and clicking OK, the selected projects are copied into the new database.

**Into a new MS Access database**

Alternatively, a new database can be created. For this, a database container for Access is used. In a dialog box, target directory and file name can be selected. At the selected object, an Access database is created and used as target for the copied projects. The file name selected is used as the name of the database connection in the GeoDin object manager. The name of the database connection can be changed later.

**Zip and delete source data**

I this option is selected, conversion of the projects is considered complete. The original data are packed (zipped) into an archive and deleted. They are then no longer available for further use.

If file based projects were converted, the contents of those projects are zip-packed before the project is deleted from the GeoDinDB directory and the project registry.

If a dBase database was converted, the entire directory will be zip-compressed. It will be saved in the directory where the database was located.

### Preview

**\_\_\_\_\_\_\_\_\_\_**

The selected projects are opened. If the project can not be opened, a list of all error messages will be displayed.

All projects opened are checked whether they contain measurement data. As a variety of measurement data structures can be used in projects, the structures used are analysed. A uniform target structure is created. If the target database already contains a measurement data structure, the transferred structure is added.

If all selected projects can be opened without errors, the next step can follow directly. If errors occurred, a system message must be confirmed to proceed to the next step. After conversion, the selected projects can be compressed (zip-packed) and deleted. After this, projects which could not be opened or contained errors are not available for the next steps.

### possible problems

**\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_**

During the conversion of standard and dBase projects, a series of different steps is performed. Due to special access patterns when reading dBAse tables and due to incorrect entries in the data, diefferent problems can occur during file conversion.

**Not all drives are displayed**

Although a drive contains standard projects, it is not listed. This occurs when using the option "drive-based standard projects" when selecting the data source. The directory containing the GeoDin projects is not identical to the one listed in the GeoDin.INI

If the GeoDin.INI contains the following entry:

LocalMgrPath=\GeoDinDB\\

each drive will be searched for this file, for example, C:\GeoDinDB or X:\GeoDinDB. If the projects are stored in a directory "DATA" (e.g. D:\DATA\GeoDinDB), the drive will not be displayed.

The solution is either to move the data into the standard directory or to edit the entry in the GeoDin.INI accordingly:

LocalMgrPath=\DATA\GeoDinDB\\

**Project can not be opened**

The selected project cannot be opened. The error message says hat the LOCPRMGR.DBF can not be found in the project file. The first step is to verify that the file is contained in the folder. If this is the case, the path to the file can be an error source. File access by ADO is sensitive to long path names and those containing spaces or special characters.

If this may be the case, a possible solution is to copy the project file to place with a short file path (e.g. C:\Temp\\) and to convert it using the method "unregistered projects".

**Project can not be created**

The error message appears: "Error on checking the project code number in the local project manager: LOCPRMGR

The project code number AAAAAA already exists."

This error message means that a project with an identical ID already exists in the target database, for example from an earlier conversion.

**The object type could not be loaded**

During conversion, all objects of the source project are loaded and written into the target database. For processing it is necessary that all object types used in the source projects are installed in GeoDin.

If GeoDin encounters a object where the necessary object type is not installed, the conversion of the current project is cancelled. Install the necessary object type (from the GeoDin DVD) before converting the project again.

The partially converted project should be deleted, because otherwise the project already exists in the target object.

**Error of the the external database driver (9986)**

While converting the files, error 9986 can occur. This is the case if the table PRJDEFS in the SYS directory of the project has been created with dBAse level 7. The table contains queries and groups of object types and measurement points created in the project

There are several ways to solve this problem:

1\. Use an older GeoDin version

If available, you can use an older version of GeoDin (starting with Version 3.X). Use the method "Copy project" and select as source the drive-based standard project and as target a database. Using the installed BDE, GeoDin can copy the project without problem.

2\. Ignore queries and groups

If you do not necessarily need the queries and groups in the project, the PRJDEFS files in the SYS folder can be deleted.

3\. GeoDin-Support

If both options are not possible or not desired, you can send the data to the GeoDin support team. There, file conversion can be performed.

**The query is to complex**

During the conversion of measurement data an error message is displayed that a query is to complex or that to many fields are defined.

In both cases the reason is that ADO is limited to a table width of 254 columns, while no similar limitation exists when accessing dBase files with the BDE. Therefore, tables with several hundred columns are possible. These tables can not be processed during conversion.

The maximum number of parameters in a data type is 249, as GeoDin needs an additional 5 fields for parameter definition.

In every case, the project data have to be modified before converting the data into a database.

This is only possible using older GeoDin versions (up to version 5.X) and the BDE. If this option is not available, please ask the GeoDin support for help.

Data preparation:

1\. Structure optimization

Optimize the database structure. This way, empty columns in the tables are removed. In most cases, this will suffice. In the status line of the add/remove parameter dialogue (in the datatype manager), the current number of parameters in the datatype is displayed.

2\. Change data model

Data types with measurement values can be stored with two different data models, in rows (one sample/one row / SDM) or in columns (one sample = one column / LDM). Convert the data model to LDM before converting the database. Probably, the data model of the target database has to be changed to LDM to manage the broad spectrum of parameters in GeoDin.

### MySQL

**FireDAC**

GeoDin automatically recognises the database type

_GeoDin Data Type DDL Name_

String VARCHAR(n)

SmallInt SMALLINT

Integer INTEGER

Float DOUBLE

Date DATE

TimeStamp DATETIME

Memo LONGTEXT

Blob LONGBLOB

With FireDAC it is possible to natively access the database without ODBC .TimeStamp values and Array-DML (natively) are supported.

FireDAC using Array-DML is a factor of 8 to 17 times faster than OLE-DB.

**Connection string:**

FireDACConnection=DriverID=MySQL;Server=192.168.49.249;Database=Test;User\_Name=\*;Password=\*

Detailed descriptions on FireDAC connections can be found here:

http://docwiki.embarcadero.com/RADStudio/XE5/en/Database\_Connectivity\_(FireDAC)

### PostGreSQL

**FireDAC**

GeoDin automatically recognises the database type

_GeoDin Data Type DDL Name_

String VARCHAR(n)

SmallInt SMALLINT

Integer INTEGER

Float FLOAT

Date DATE

TimeStamp TIMESTAMP

Memo TEXT

Blob BYTEA

With FireDAC it is possible to natively access the database without ODBC .TimeStamp values and Array-DML (natively) are supported.

FireDAC using Array-DML is a factor of 4 to 10 times faster than OLE-DB.

**Connection string:**

FireDACConnection=DriverID=PG;Server=192.168.49.249;Database=DemoDB;User\_Name=\*;Password=\*

Detailed descriptions on FireDAC connections can be found here:

https://docwiki.embarcadero.com/RADStudio/XE5/en/Database\_Connectivity\_(FireDAC)

### Create report

&#x20;**Create report**

With the method **"Create Report"** at a database it is possible to fill a prefabricated text with data from a database by using special macro commands. The file format is odt (open documenttext). As the macro commands can be corrupted by other internal Office commands when saving the file, we recommend to use only one text processing program (Ms Word, Libre Office) when creating the report.

At first you choose an odt source file. When reading the data the program gets the constants definitions and displays them in a dialogue. You must choose a target file to start this procress.

All constants will be replaced when clicking the **Ok** button, then the layouts will be loaded and the appropriate elements will be replaced as well. Depending on the size of layout and data this process can take a long time.

A protocol shows the changes and errors when finished. Until this very point all replacements were performed in internal steps. Once you apply the protocol with the **continue** button the target file is going to be written.

You will find a demonstration, including prepared layouts, on our CD in the directory _**GeoDin**\\**DEMO**\GeoDin Beispiel Demodatenbank\\**AutoBerichtserstellung**_ for the sample database.

The macro commands are differed in three variations:

**getimage:**

Refers to a prefabricated GeoDin graphic or layout and delivers back the image from the graphic.

**Explaining the syntax in an example:**

\#GeoDin:getimage?layout= hydraulicheadquicksetting.GGF\&QLConfig1=TimeLineAxisRange+Param1=01.01.2002+Param2=31.12.2002#

GeoDin:getimage order that it is a graphic macro of GeoDin

? marks the beginning of the macro

& separates instruction blocks inside the macro

layout=HydraulicHeadQuickSetting.GGF name of the layout file

QLConfig1=TimeLineAxisRange defines parameters for quick settings of layouts. Possible modifications are TimeLineAxisRange, TimeLineLeftAxisParam, TimeLineRightAxisParam and Coordinates.

+Param1=01.01.2002+Param2=31.12.2002 is as the type of the quick setting of the layout and defines the parameters. For a time domain these are 2 parameters with particular dates.

_**Note:**_ _There must be a place holder in the document already to set both scale and size of the image. Afterwards this place holder image will be replaced by the GeoDin image. Due to this the macro command getimage must be located above the place holder._

**gettext:**

Refers to a GeoDin image or layout as getimage does. The difference is the access on text elements within the graphic and their output. At this point a report element can be used as well. In this case the result will be the output of the first cell of the report.

**Example of a frame query, this can be used for getimage too:**

_#GeoDin:gettext?layout=hydraulicheadtexts.GGF\&Query1=year+Param1=01.01.2002+Param2=31.12.2002\&elementname=MaxValue#_

GeoDin:gettext specifies a GeoDin text macro

? marks the beginning of a macro

& separates command blocks inside the macro

layout=hydraulicheadtexts name of the layout file

elementname=MaxValue defines the element in the layout meant for analysis

Query1=year defines the name of the framework query

+Param1=01.01.2002+Param2=31.12.2002 is as the name of the framework query and defines the parameters. For a time domain these are 2 parameters with particular dates.

It is recommended to define as many text elements via a layout as possible, otherwise you have to load a new layout for each text element.

**getmacro:**

This variant relates to calculations without a specific reference to the data. No database relations are necessary. Possible macros may look like this:

_#GeoDin:getmakro$%SYSDATE@YYYY$#_

You can use the date in the format DD,MM,YYYY. The macro mentioned above would give back the current year.

_#GeoDin:getmakro$%SYSTIME$#_

Gives back the system time.

**Definiton of constants:**

Furthermore it is possible to set often occurring values during the creation of the report. This is done by defining constants. For example: if you have a report over a year with embedded graphics, in which the time axis is parameterised:

_#GeoDin:getimage?layout=WasserstandSchnelleinstellung.GGF\&QLConfig1=TimeLineAxisRange+Param1=01.01.2002+Param2=31.12.2002#_

For frequently use of the axis setting all setting parameters would have to be readjusted each year. But here it is possible to define constants, which are going to be specified while the document is loading. The macro looks like the following:

_#GeoDin:getimage?layout=WasserstandSchnelleinstellung.GGF\&QLConfig1=TimeLineAxisRange+Param1=DateParam?StartDatum|+Param2=DateParam?EndDatum|#_

or summarised if the year changes

_#GeoDin:getimage?layout=WasserstandSchnelleinstellung.GGF\&QLConfig1=TimeLineAxisRange+Param1=01.01.DateParam?Berichtsjahr|+Param2=31.12.DateParam?Berichtsjahr|#_

_DateParam_ definition of a constant from the date type

Furthermore _NumParam_ and _TextParam_ are possible.

? marks the beginning of a constant

year of report name of the constant

\| defines the end of a constant

Replacements from get-commands can be highlighted, if successful in green, otherwise red. For this reason you have to validate these reports manually after an automated setting. The commands for gettext and getmacro can be deleted from the target text by using the button **delete successfully replaced command from the text**.

Replacements of constants cannot be highlighted in a special way because they can also be part of macro commands (see example).

### Microsoft SQL-Server

**FireDAC**

GeoDin automatically recognizes the database type.

_GeoDin data type DDL Name_

String VARCHAR(n)

SmallInt SMALLINT

Integer INTEGER

Float FLOAT

Date DATETIME

TimeStamp DATETIME

Memo TEXT

Blob IMAGE

FireDAC is a factor of 1,2 to 1,6 faster than OLE-DB.

**Connection string:**

FireDACConnection=DriverID=MSSQL;Server=192.168.49.250;Database=GeoDin;User\_Name=\*;Password=\*

**Connection string with Windows authentication:**

FireDACConnection=DriverID=MSSQL;Server=192.168.49.250;Database=GeoDin;OSAuthent=Yes

### Oracle Server

**FireDAC**

Automatic recognition of the database type by GeoDin

_GeoDin data type DDL-Name_

String VARCHAR(n)

SmallInt SMALLINT

Integer INTEGER

Float FLOAT

Date DATE

TimeStamp DATE

Memo CLOB

Blob BLOB

The field types CLOB and BLOB are supported.

Array-DML is supported natively.

FireDAC is between 5 and 32 times faster than OLE-DB when using Array-DML

1. A complete installation of the Oracle cient is not necessary on the client PC. Simply by copying 5 DLL libraries to the BIN folder of your installation is sufficient. To do this download either the _Oracle instant x86_ or _x64 client_ archive, unpack and copy these files to the BIN folder:
2. oci.dll
3. oraocci12.dll
4. oraociei12.dll
5. oraons.dll
6. orasql12.dll

If you work with TNS Names, please also save the file tnsnames.ora in this folder or edit the properties of the TFDPhysOracleDriverLink.TNSAdmin to the file tnsnames.ora or use the TNSAdmin driver configuration parameter.

Set TFDPhysOracleDriverLink.NLSLang to the required value or use the NLSLang driver configuration parameter.

**Connection string:**

FireDACConnection=DriverID=Ora;Database=192.168.49.20/firedac;User\_Name=\*;Password=\*

**Connection string Windows Auth:**

FireDACConnection=DriverID=Ora;Database=192.168.49.20/firedac;OSAuthent=Yeserd

Detailed descriptions on FireDAC connections can be found here:

http://docwiki.embarcadero.com/RADStudio/XE5/en/Database\_Connectivity\_(FireDAC)

### Update object types

If newer object type definitions are available in the system than in the database, the database structure can be updated here.

In this step, formulas can be executed again. For this, all object types in the database must be updated.

Data is only manipulated in the following cases:

1. Execute formulas activated, all formulas are recalculated.

Existing data is never deleted, even if fields no longer exist in the target structure.

### Data model

Any number of projects can be created in GeoDin. The type of storage of the project data depends on the type of database in which the project was created. This database can be a desktop or a client/server database. In GeoDin, different physical database types can be addressed in a mixed way. For example, part of the projects can be in an MS Access database and another part in a client/server database on an ORACLE server.

Project databases contain the Local Project Manager in the physical database format of the respective database in the form of a table named LOCPRMGR.

The structure of the tables in the project manager are as follows:

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_DECExplanationComment**

PRJ\_ID C 0 Project ID must be unique in GeoDin

PRJ\_NAME C 0 Project name mandatory

PRJ\_ALIAS C 0 Alias name (2nd name for project) optional

PRJ\_TYPE C 0 Project type Reserved for system

PRJ\_OPT N 0 Optional parameter always 0

PRJ\_USER C 0 Author name

PRJ\_DATE D 0 Creation date

PRJ\_PATH C 0 Path or database alias contains for a GeoDin drive database the path to the drive database (normally LW:\GeoDinDB\\, where LW stands for the drive letter, the trailing backslash is required!), for all other databases the field contains the database alias name (e.g. GeoDin\_DBASE).

GeoDinGUID C 0 GeoDin GUID unique project ID

***

The registration of a project is done with a record in the Local Project Manager of the database.

The database can be divided into 3 main areas (system tables (SYS), object types (LOC) and master data specifications (DEF)) and 3 optional areas (document, measurement data and layer queries).

### Objects

**Registration tables**

The registration tables contain the basic measuring point descriptions of the GeoDin objects.

**Object registration LOCREG**

Each object (regardless of object type) is registered with a data record in this table.

***

PRJ\_ID Project ID

LOCID is a max. 4-digit sequential number of the object in project 1-9998

LOCTYPE Contains the descriptor of the object type

INVID is a string of exactly 16 characters. It is formed from:

```
          zzzzzz Project ID

          xxxx 4-digit LOCID (with leading zeros)

          yyy Examination type identifier

          000 Number of the measuring point, for object itself this number is always 0



          zzzzzzxxxxyyy000
```

OPT\_PARAM empty

XCOORD easting

YCOORD northing

ZCOORDB Borehole starting point absolute

ZCOORDE Final depth in metres below ground level (for depth-oriented objects)

SHORTNAME short name for the object

LONGNAME long name for the object

PHYSFILE Name of the object file (only in GeoDin standard projects)

LOCKINFO empty

***

\
**Measuring point registration of expanded measuring points FILREG**\
In dieser Tabelle werden sämtliche ausgebauten Messpunkte (z. B. Grundwassermessstellen) des Projektes verwaltet. Je Objekt können mehrere Messpunkte vorkommen.

***

LOCID Identification number of the object

RECID Counter of the removed measuring points per object

INVID Measuring point identification number

```
        zzzzzzxxxxyyynnn



        zzzzzz Project ID

        xxxx 4-digit LOCID filled with zeros

        yyy Examination type identifier

        nnn 3-digit sequential no. filled with zeros per object
```

INVZBEG Start of the measuring point in metres below ground level

INVZEND End of the measuring point in metres below ground level

INVNAME Name of the measuring point

***

\
**Measuring point registration of non-expanded measuring points PRBREG**

In this table, all measurement points of the project that have not been developed (e.g. sediment sampling) are managed. Several measuring points can occur per object. The structure of this table is identical to the FILREG table.

The following data tables exist for object types.

_**Note:**_ _All the following tabular representations serve as examples._

**General data table**

The genral data table is a mandatory table for object types, i.e. at least one master data table must be defined in each object type definition. It contains unique information for the object. Each object contains one data record in this table. An object type can also contain several master data tables, e.g. if the master data is very extensive or if a logical subdivision is appropriate.

The LOCID field is the unique number of the object in a project. This results in a limitation of a project to 9998 objects (object number = 9999 is not allowed).

The number of projects is not limited.

The data fields XCOORD to ZCOORDE describe the position of the object in space. The data fields SHORTNAME and LONGNAME are used for a verbal designation of the object..

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 3 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

XCOORD N 20 4 3 0 easting

YCOORD N 20 4 4 0 northing

ZCOORDB N 20 4 5 0 elevation NN

ZCOORDE N 20 4 6 0 end depth

SHORTNAME C 14 0 7 0 Short description

LONGNAME C 40 0 8 0 Long description

TABDESK

...

***

**Layer data table (optional)**

This table is optional, it contains depth-oriented descriptions for layers. Several independent layer data tables can be defined for one object type. In the standard case, representations of borehole profiles or borehole tables with corresponding interpretation of codes are derived from these tables. However, they can also be pure text representations of depth-oriented features.

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 1 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

DEPTH N 20 4 3 0 depth

...

***

**Sample table (optional)**

This table contains a data record for each sample. "General data" for a single sample can be entered here.

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 1 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

INVID C 16 0 3 0 GeoDin Messpunkttyp Ident

INVZBEG N 8 2 4 32 depth from

INVZEND N 8 2 5 32 depth to

INVZNAME C 20 0 6 0 sample name (short)

...

***

**Well design general data (optional)**

This table can be used for developed boreholes to additionally enter general data for wells, groundwater monitoring wells, etc., such as owners, operators, etc. Editing is offered in the extension editor.

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 3 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

...

***

**Well design backfilling (optional)**

This table contains information on backfilling. The data is entered in tabular form in the extension editor.

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 1 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

VFCODE C 8 0 3 40 type

VFBEG N 8 2 4 8 from \[m]

VFEND N 4 2 5 8 to \[m]

...

***

**Well design tubes and installation (optional)**

The table contains information on the individual pipe tours.

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 1 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

INVID C 16 0 3 0 GeoDin Messpunkttyp Ident

TOURID N 2 0 4 8 pipe tour number

ELCODE C 8 0 5 40 element

ELBEG N 8 2 6 8 depth from

ELEND N 8 2 7 8 depth to

ELWIDE N 4 0 8 8 diameter

ELTHICKN N 4 1 9 0 wall thickness

...

***

The INVID field contains a measuring point ID for filter sections and is formed automatically.

**Well design special installations (optional)**

This table contains expansion elements that are not related to an individual pipe tour (e.g. concrete ring, hydrant cover).

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 1 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

ELCODE C 8 0 5 40 element

ELBEG N 8 2 6 8 depth from

ELEND N 8 2 7 8 depth to

ELWIDE N 4 0 8 8 diameter

ELTHICKN N 4 1 9 0 wall thickness

...

***

**Well design filter details (optional)**

This table contains a data record for each filter pipe. "General data" for an individual filter can be entered here.

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 1 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

INVID C 16 0 3 0 GeoDin Messpunkttyp Ident

INVZBEG N 8 2 4 8 depth from

INVZEND N 8 2 5 8 depth to

INVZNAME C 20 0 6 0 filter name (shor)

...

***

**Probing registry (optional)**

This table contains a data record for each probing measurement series of an object. For each object, the probing series are numbered in SNDID and stored in binary form in the field SNDDATA.

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 1 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

SNDID N 3 0 3 0 GeoDin Sondierungs-Ident

SNDNAME C 50 0 4 0 Sondierungsname

SNDDATA B 0 0 5 0 Sondierungsdaten

***

**Probing data (optional)**

This table contains the probing data for all objects of the project. The assignment is made via LOCID and SNDID. The structure of this table cannot be changed or extended.

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 1 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

SNDID N 3 0 3 0 GeoDin Sondierungs-Ident

DEPTH N 20 4 4 0 depth to

SNDVALUE C 20 0 5 0 probing value

***

**1:n tables**

These tables contain additional information on the object, e.g. groundwater level information, archive number.

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 1 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

GW N 8 2 3 0 groundwater level

GWDATUM D 10 0 4 0 date

...

***

**Linking tables (outdated)**

These tables define and describe relationships between measurement points. INVID contains a measuring point of the object. This measurement point is related to the measurement point number (unique in GeoDin) contained in LNKINVID. INVIDT and LNKINVIDT contain verbal description of the measuring point. The type of relationship can be described in more detail by further data fields (from "...").

***

**FIELD\_NAMEFIELD\_TYPEFIELD\_LENFIELD\_DECFIELD\_CNTFIELD\_OPTFIELD\_LONG**

LOCID N 4 0 1 1 GeoDin Location Ident

RECID N 4 0 2 0 GeoDin Record Ident

INVID C 16 0 3 1 measuring point ident

LNKINVID C 16 0 4 1 measuring point ident assigned

INVIDT C 60 0 5 0 Description of measuring point

LNKINVIDT C 60 0 6 0 Description of measuring point assigned

...

\---------------- ---------------- --------------- --------------- --------------- --------------- -----------------------------------------

### Measurement values

**Registration of an investigation type (INVTYPES)**

Each investigation type is registered in the table INVTYPES with one data set:

As an investigation type the point or interval from which it was measured is considered. Usually these are groundwater-monitoring points (filter), sample intervals (samples) or even objects themselves. Further measurement point types can be defined on the system level. When working in a project only the measurement points known to the system are available for selection.

Data fields

***

INV\_TYPE Abbreviation (three letters) for a unique identification of the measurement point type

INV\_NAME Long name to describe the measurement point type

INV\_OPT System options

***

The definition of the data types occurs in the table DAT\_TYPES. Here each data type occurs only once. Only data types registered in this table can be linked to a measurement point type.

**Registration of a data type (DATTYPES)**

Data fields

***

DAT\_TYPE Abbreviation (three letters) for a unique identification of data type

DAT\_NAME Long name to describe the data type

DAT\_OPT System options

***

**Linking data types to investigation types (INVTABS)**

For data types measurement and investigation parameters are grouped together according to similarities in the measurement method and the describing contents. Common examples of such data types are water characteristics, hydrological factors and petrographic information. A data type can be constructed from several investigation types. The link giving which data type for which investigation type is available, is defined in the table INVTABS.

Data fields

***

INV\_TYPE Abbreviation (three letters) for a unique identification of the measurement point type

DAT\_TYPE Abbreviation (three letters) for a unique identification of data type

***

**Registration of a chemical group (STFGRP)**

There are a variable number of measurement parameters for each data type. These are grouped together using similarity criteria. An example of such a group is a chemical group, which may contain a maximum of 20 parameters. Chemical groups are defined in the table STFGRP.

Data fields

***

DAT\_TYPE Abbreviation (three letters) for a unique identification of the data type

FIELD\_GRP Abbreviation (three letters) for a unique identification of the chemical group

GRP\_NAME Long name to describe the chemical group

GRP\_CNT Counter

GRP\_OPT System options

TAB\_DESC Table descriptor, in which the chemical group is physically contained

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

PRJ\_ID Project ID

LOCID Up to 4 digit number (running counter) for each object in the project values: 1-9998

LOCTYPE Contains descriptor of the object type

INVID is an exact 16 character long string with the measurement point number:

```
          zzzzzzxxxxyyy000



          zzzzzz is the Project ID

          xxxx is the 4 digit LOCID filled up with zeros (e.g. 0025)

          yyy is the ID of the investigation type

          Project ID
```

OPT\_PARAM empty

XCOORD X coordinate

YCOORD Y coordinate

ZCOORDB Object absolute height

ZCOORDE End depth in meters below ground surface (for depth related objects)

SHORTNAME is the Short name for the object

LONGNAME is the Long name for the object

PHYSFILE Name of the object file (only in GeoDin standard projects)

LOCKINFO empty

***

\
Measurement point registration for developed measurement points FILREG

In this table all developed measurement points of a project are organized (e.g. monitoring wells). A object may contain several measurement points.

***

LOCID ID number of the object

RECID Counter of developed measurement points per object

INVID Measurement point ID number

```
        zzzzzzxxxxyyynnnn



        zzzzzz is the Project ID

        xxxx is the 4 digit LOCID filled up with zeros (e.g. 0025)

        yyy is the ID of the investigation type

        nnnn is xxxx is the 4 digit counter filled up with zeros for developed measurement points per object
```

INVZBEG Top of the measurement point in meters below ground surface

INVZEND Bottom of the measurement point in meters below ground surface

INVNAME Name of the measurement point

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

FIELD\_NAMEFIELD\_TYPEFIELD\_LEN FIELD\_DEC FIELD\_LONG

INVID C 16 Measurement point ID

SMPID N 9 GeoDin Sample ID

PARAM\_DESC C 8 Parameter ID

MESCHAR C 1 Additional character

MESVALUE N 20 8 Measurement value

MESUNIT C 15 Measurement unit

MESSENSIB N 20 Detection limit

METHODID N 9 Investigation method

MESOPT N 9 Measurement - option

MESSIGNIF C 10 Measurement - significance

***

Table of text values: \<DATATYPE>TXT01

***

FIELD\_NAME FIELD\_TYPE FIELD\_LEN FIELD\_DEC FIELD\_LONG

INVID C 16 GeoDin measurement point ID

SMPID N 9 GeoDin Sample ID

PARAM\_DESC C 8 Parameter ID

MESTEXT C 254 Text entry

MESOPT N 9 Measurement - option

***

Table of text values: \<DATATYPE>DAT01

***

FIELD\_NAME FIELD\_TYPE FIELD\_LEN FIELD\_DEC FIELD\_LONG

INVID C 16 GeoDin measurement point ID

SMPID N 9 GeoDin Sample ID

PARAM\_DESC C 8 Parameter ID

MESDATE D 8 Date entry

MESOPT N 9 Measurement - option

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

1. object
2. undeveloped measurement point
3. developed measurement point

**Object**

A relationship between measurement values and objects is necessary (or makes good sense) when the measurement object has no vertical depth property, where the depth information for the measurement values is unknown, or where the depth related information has been averaged or combined (for example a mixture of water from different depths in a water-works well). This kind of measurement point can only exist once per GeoDin object and is defined by its coordinates.

**Undeveloped measurement point**

An undeveloped measurement point is usually defined by an upper and lower boundary. The most common example is a sample collected during drilling, where no permanent construction exists and where the investigations are carried out only once or at most episodically. Additional information on the composition of the sample may also be noted. GeoDin allows up to 99 undeveloped measurement points per object.

**Developed measurement point**

When measurements are to be collected at a defined depth range at regular intervals some sort of permanent construction normally exists to guarantee access (for example a filter in a piezometer for groundwater sampling). Additionally details on the measurement point construction may be recorded. A single object may contain up to 9 developed measurement points.

The individual investigation types, based on the three types of measurement point can have entirely different definitions and configurations. During the design of the data model the main decision is on which type of measurement point is the investigation type to be based.

Both undeveloped and developed measurement points are related via their depth information to a object. In the following example three types of measurement points are shown in the graph of a borehole and water well.

Thereby

1\. The measuring point type "object"

The reference in this case is a borehole. All measured values that refer to the borehole itself and have no depth information are assigned here. These could be, for example, mixed water from the pipes or measured values from the location where the borehole was drilled (vegetation, etc.).

2\. the measuring point type "developed measurement point"

Measurements are taken with respect to a filter pipe, which in turn represents a specific aquifer. The filter also includes information on its design. Generally, a sample is taken at regular intervals.

3\. the measuring point type "undeveloped measurement point"

Samples are taken during the drilling process and test results are obtained from them. The samples are taken only once, but then examined several times. The sample is sufficiently described by the depth from which it was taken. Additional information is given about the sample material.

**Relationship between examination types and data types**

Data types are compilations of measurable parameters. This compilation is ultimately free, but is usually oriented towards the object or type of investigation. These data types can be assigned to the study types in any combination. For example, the data types groundwater chemistry and groundwater dynamics are assigned to the GWBR filter investigation type. However, both can also be used in other combinations in other investigation types.

### Documents

The definition of the document description table can be taken from the SYS\_LOCSTRS table from the **System**. The documents are registered like an object type in SYS tables.

A more detailed description of the definition can be found in chapter [Database tables of the document management](../documents/document-organization.md).

### System

The system tables of a project contain the object type definition, measurement point type definitions and structure descriptions of physical data tables.

The system tables describe the physical data tables and the relationships between the data tables of a GeoDin project.

The system tables consist of the following tables:

**Object type definition**

***

LOCTYPES GeoDin\_SYS\_LOCTYPES Definition of object types

LOCTABTY GeoDin\_SYS\_LOCTABTY Definition of data tables

LOCTABS GeoDin\_SYS\_LOCTABS Assignment of data tables to object types

LOCSTRS GeoDin\_SYS\_LOCSTRS Definition of the structures of the data tables

***

**Measuring point type definition**

***

INVTYPES GeoDin\_SYS\_INVTYPES Definition of measuring point

INVTABS GeoDin\_SYS\_INVTABS Assignment of the data types to the measuring point types

DATTYPES GeoDin\_SYS\_DATTYPES Definition of data types

STFGRP GeoDin\_SYS\_STFGRP Definition of the substance groups

MESSTRS GeoDin\_SYS\_MESSTRS Definition of all measuring point type parameters

***

Notes on the data fields described:

**Descriptors**

contain references; the field name ends with \_DESC; except for the descriptors for dictionaries, a descriptor must be exactly 8 characters long and consist of capital letters and numbers.

**Long name**

Each descriptor is assigned a long name with 40 times; the field name ends with \_NAME; this name is displayed in GeoDin selection lists and should therefore uniquely describe the object.

**Options**

Options for an object are stored bit by bit in binary form in a longint parameter; the field name ends with \_OPT; bit 0 is 1; bit 1 is 2; bit 3 is 4 and so on. Each bit has a yes/no function for a characteristic of the object. Several bits can be set at the same time.

**Registration of an object type**

Each object type is registered with a data record in the LOC-TYPES table. The following data fields are used for this:

+----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+ | GEN\_DESC | Descriptor of the digestion type (exactly 8 characters long, consisting of capital letters) | | +----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+ | | | | +----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+ | GEN\_NAME | Long name of the object type | | +----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+ | | | | +----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+ | GEN\_OPT | System options | | +----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+ | | | | +----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+ | | **Bit (Value)** | **Meaning** | +----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+ | | | | +----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+ | | 0 (1) | GeoDin system object (cannot be changed) | | | | | | | 1 (2) | SEP-compatible object, may be imported | | | | | | | 2 (4) | Object type is displayed during 'Create' | | | | | | | 3 (8) | Object type requires link to others | | | | | | | 4 (16) | Object type allows creation of standard measurement programs | | | | | | | 5 (32) | Attribution of graphic elements | | | | | | | 6 (64) | Dynamic units | | | | | | | 7 (128) | Document description | +----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+ | | | | +----------+---------------------------------------------------------------------------------------------+--------------------------------------------------------------+

**Registration of the tables used for the object type (LOCTABTY)**

Each data table type is registered with a data record in the LOCTABTY table.

+-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | TABE\_TYPE | Table type | describes the basic usage of a data table. There are mandatory fields prescribed by the system for each type of data table. | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | | | | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | | value=1 | General data table | | | | | | | value=2 | Layer data tables | | | | | | | value=3 | Expansion general data | | | | | | | value=4 | Borehole development | | | | | | | value=5 | Backfilling | | | | | | | value=6 | Pipe removal and installation | | | | | | | value=7 | Removal of special installations | | | | | | | value=8 | Removal measuring point specification | | | | | | | value=9 | Sample table | | | | | | | value=10 | Sounding registry | | | | | | | value=11 | Sounding data | | | | | | | value=12 | Link from LOC | | | | | | | value=13 | Link from FIL | | | | | | | value=14 | Link from PRB | | | | | | | value=15 | Expansion flushing | | | | | | | value=16 | Undifferentiated data table 1:n to location | | | | | | | value=17 | Measured value table - real table in GEOTAB | | | | | | | value=18 | Title data SVZ | | | | | | | value=19 | Layer data table versions | | | | | | | value=20 | SED measured values as probing-temporal for graphic structure like Sonddata | | | | | | | value=21 | Sample measured values as probing-temporal for graphic structure like Sonddata | | | | | | | value=22 | Data table 1:n for location with SUBID | | | | | | | value=23 | Data table 1:n for location with SUBID for LTO\_HNMTab | | | | | | | value=24 | Temporary mem table - not on LOCOBJ | | | | | | | value=25 | Graphic attributes | | | | | | | value=26 | Expansion of title data versions | | | | | | | value=27 | Expansion borehole versions | | | | | | | value=28 | Expansion backfill versions | | | | | | | value=29 | Removal of pipes and installation Versions | | | | | | | value=30 | Removal of special installations Versions | | | | | | | value=31 | Removal of filter data Versions | | | | | | | value=32 | Removal Flushing Versions | | | | | | | value=33 | Document description general data | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | | | | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | TAB\_OPT | System options | | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | | | | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | | **Bit (Value)** | **Meaning** | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | | | | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | | 0 (1) | Main table (general tables and layer tables); in the case of probing register table, probes are saved as BLOB in the reg table (the SNDDATA field with type B must be defined in the reg table), probing data table remains empty | | | | | | | 1 (2) | SEP layer data table | | | | | | | 2 (4) | Depth information starts with 0 | | | | | | | 3 (8) | Shifts can be printed out in DIN form | | | | | | | 4 (16) | Write lock | | | | | | | 5 (32) | not visible | | | | | | | 6 (64) | Delete lock | | | | | | | 7 (128) | Insertion lock | | | | | | | 8 (256) | Numbered layer data table with sub-layers | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | | | | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | TAB\_TRC | Standard translation code. Reserved by the system until 16. | | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | | | | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | INV\_TYPE | Measuring point type | | | | | | | | If the data table defines the measuring point type (e.g. general data table, filter table, sample table), INV\_TYPE determines the measuring point type and thus the type of measurement results that can be linked. | | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+ | | | | +-----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**Assignment of data tables to object types (LOCTABS)**

For each object type, the descriptors (GEN\_DESC) of the data tables to be used for the object type are stored in the LOC-TABS table. This defines, for example, whether the object type contains tables for layer descriptions etc. or not. At the same time, the table descriptor (TAB\_DESC) is used to refer to a structure of a data table, which is defined in the LOCSTRS table.

**Structure of the data tables (LOCSTRS)**

The structures of all data tables are stored in the LOCSTRS table. Each data table can contain a maximum of 255 data fields.

+-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | **Data fields** | **Description** | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | TAB\_DESC | Descriptor of a data table | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_NAME | Physical field name | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_TYPE | Physical field type; C (character), N (numeric), D (date), S (date/time) and M (memo) are permitted | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_LEN | Physical field length (for D:=10) | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_DEC | Number of decimal places for numeric fields | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_CNT | Running counter of the field in a data table | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_OPT | System options (extract) | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | **Bit (Value)** | **Meaning** | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 0 (1) | Indexed field | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 1 (2) | Unique index (unique) only if bit 0 is set | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 2 (4) | Field is used for signature / for measured values: Offset field | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 3 (8) | Field is used for signature (secondary) | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 4 (16) | Field is used for signature (tertiary) | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 5 (32) | Mandatory field | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 6 (64) | Long codes are used (WB) | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 7 (128) | either only an abbreviation (not bit 6) or long entry editable (with bit 6) | | | | | | | | (bit 6 off): | | | | | | | | on : only one key is allowed | | | | | | | | off : several keys are permitted | | | | | | | | (bit 6 on) : | | | | | | | | on : Long texts can be edited | | | | | | | | off : Long texts cannot be edited | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 8 (256) | Field visible (for measured values) | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 9 (512) | Field editable (for measured values) (vacant: always set) | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 10 (1024) | Quantity parameters | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 11 (2048) | Calculated parameter | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 12 (4096) | Negative values allowed | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 13 (8192) | Anorganic | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 14 (16384) | Write lockout | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 15 (32768) | External field | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 16 (65536) | Conditional write lockout | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 17 (131072) | controls WB fields, | | | | | | | | Dic: Bit 6 on - write combo key (instead of long name) in DB | | | | | | | | 131136 for Dic - show plain text, key in DB: 17+6 | | | | | | | | 131168 same as mandatory field, 17+6+5 Dic: Bit 6 off - ? as plain text (key in DB) | | | | | | | | 131200 not mandatory only one key 17+7 | | | | | | | | 131232 as mandatory field only one key 17+7+5 Dic: Bit 6 off - ? as plain text (several keys in DB) | | | | | | | | 131072 not mandatory multiple keys 17 131104 mandatory multiple keys 17+5 | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 18 (262144) | TVQK\_SingleNorm Recoding of the standard text during input | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 19 (524288) | Field has dynamic units | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 20 (1048576) | Last FixedCol field | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | 21 (2097152) | Field is automatically transferred to new DS | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_LONG | Long name for data field | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_DIC | Descriptor of a dictionary for the data field | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_GRP | Descriptor of a dictionary for the data field | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_UNIT | Measurement unit | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_FMT | Output format | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | FIELD\_DEF | Default value | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+ | | | | +-----------------+-----------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
