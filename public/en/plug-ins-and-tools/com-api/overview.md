---
description: Overview
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Overview

### COM-Functions and Plugins

GeoDin offers the option to connect GeoDin to external applications. This chapter describes the technical methods and is addressed to software developers, who are about to combine GeoDin with other products or to integrate special functions into GeoDin.

For running GeoDin by an external application several functions are available. A part of this functions is used for controlling the GeoDin program interface (in this case GeoDin is visible for the user), but an erxternal application like for example a GIS chooses self-dependently an object in the GeoDin object manager and starts a GeoDin method. Another part of the functions is used for supplying information from the GeoDin database up to graphic images of objects. Here GeoDin is usually invisible and manages its tasks in the background. The individual functions are described in the chapter #GeoDinHelpLink:**COM functions**5284#. For each function is defined, which GeoDin edition is required.

On the other hand it is possible to intergrate external applications or functions in the program interface of GeoDin. Such functions (so called plug-ins) can for example perform special calculations or data exports and are displayed in GeoDin with a method symbol. A description for embedding and configuring this external functions is given in the chapter #GeoDinHelpLink:**Plug-ins**5285#. <!-- src: help/15/5283 -->

### COM-Functions

# **Tips for the use of GeoDin as COM server**

# Using GeoDin as COM server (by creating an object of the type GeoDin.GeoDinApplication) can be controlled by the following parameters:

# **Working directory of the application GeoDin:**

# As default the folder \"TEMP\" in the folder \"Local settings\" of the current user is used as the working directory of the application GeoDin in the starting mode as COM server. By entering ExecutePath=**Folder** in the section \[System\] of the #GeoDinHelpLink:**Configuration file GeoDin.ini**3297# another folder can be defined.

# **Availability of plug-ins:**

# As default #GeoDinHelpLink:**Plug-ins**5285# are not loaded when GeoDin is started. By entering COMServerPlugins=true in the section \[System\] of the #GeoDinHelpLink:**Configuration file GeoDin.ini**3297# loading the plug-in can be achieved.

# **Application directory of GeoDin:**

# The application directory of GeoDin is as default the folder one level higher than the BIN folder (in which the GeoDin.exe is included). A typical GeoDin installation has the following structure:

# C:\\Programs\\GeoDin (contains GeoDin.ini)

# C:\\Programs\\GeoDin\\BIN (contains GeoDin.exe)

# C:\\Programs\\GeoDin\\SYSLIB

# C:\\Programs\\GeoDin\\SOURCE

# etc.

# The application directory is in this case \<C:\\Programs\\GeoDin\>, where also the configuration file GeoDin.ini is read. With this name also the names of several subfolders are created (e.g. for SOURCE, QUERYDEF, LAYOUTS etc.)

# It is possible to configure the application directory of GeoDin to any other folder, hence one can differentiate, if GeoDin is started directly as application by the user or is instanced as a COM server. For a (\"normal\") start of GeoDin by the user the application directory can be set by a command line parameter. It has to start with the keyword -af and has to contain a full folder name subsequently.

# C:\\Programs\\GeoDin\\BIN\\GeoDin.exe -afC:\\Programs\\GeoDin\\Solutions\\Water

# **Note:** If the folder name contains empty spaces the entire parameter has to be put in quotation marks, e.g.:

# C:\\Programs\\GeoDin\\BIN\\GeoDin.exe \"-afC:\\Programs\\GeoDin Solutions\\Water\"

# By starting GeoDin as COM server a command line parameter is not possible. Because of that a method was prepared to enter this via the registry. Here the name of the chosen application directory has to be placed BEFORE the start of the COM server in the REG_SZ key \"ApplicationFolder\" in the following registry key:

\[HKEY_CURRENT_USER\\Software\\GeoDin-System\\COMServer\]

With both methods GeoDin checks the existence of the folder and ignores the setting, if it does not find it. Further checks do not take place. Make sure that the selected folder contains a configuration file GeoDin.ini and all subfolders required by GeoDin. <!-- src: help/15/5284 -->

### Plugins

**Plug-ins** are external modules (programs / COM server), which are called up from the GeoDin user interface. So a software developer can integrate the start of a certain application, for example a special export function or a new calculating function, in the GeoDin program user interface. For the user the application appears as an \"ordinary\" GeoDin method. All required information for the chosen object(s) is transferred to the plug-in in the GeoDin object manager. So additional analyzing functions for a selected amount of objects can be offered by the plug-in. A plug-in can also be an application that does not work with the GeoDin database. The plug-in configuration can also integrate the \"calculator\" from the operating system in the program user interface of GeoDin.

A plug-in can be called up as application (EXE file) or as COM function of a registered COM server. Here the parameter Execute **or** Server in the plug-in configuration. A COM server, which should be called up as a plug-in, has to fulfill certain requirements, which are described below.

**Definition of a plug-in**

The setting and configuration of the plug-ins to use is done in the configuration file GeoDin.INI.

With GeoDin 9, plugins are defined on the system tab in the system configuration under the section \"Publications\".

**1. List of available plug-ins**

In the section \[Plugin\] every plug-in is defined with a line and gets a name, example:

\[Plugins\]

Plugin1=Calculate

Plugin2=Export

***Note:*** *Possibly the section \[Plugins\] has to be created, if no previous plug-ins have been configured. Add a line containing \[Plugins\] with a text editor at the end of file GeoDin.INI and at least one line like Plugin1=Name of the plug-in. Use consecutive numbers (Plugin1=, Plugin2= usw.) for the definition of more than one plugin.*

**2. Definition of a single plug-in of the list**

For each plug-in entered in the list \[Plugins\] a separate section in the configuration file GeoDin.INI has to be created containing the name of the plug-in defined in step 1, example:

\[Calculate\]

Name=Calculate

Execute=C:\\PROGRAMS\\GeoDin\\BIN\\GPI.EXE

***or***

Server=GeoDinPlugin.GeoDinPluginSample

Module=Module1

Icon=C:\\PROGRAMS\\GeoDin\\BIN\\CALC.ICO

Popup=false

Wait=false

DBNode1=1

DBNode2=2,1

Add with the text editor the particular lines to the file GeoDin.INI.

The parameters in this section control, which objects (in the GeoDin object manager) the plug-in should be applied on, which program file or which COM server function should be executed and if the user has to wait for the execution of the function.

The following parameters are set:

**Name**

Name of the plug-in in the GeoDin object manager (These names are shown under the method symbol or in the popup menu)

**Execute**

Executable program (full file name with path)

**Example:** C:\\WINDOWS\\SYSTEM32\\CALC.EXE)

***or*Server**

Name of the COM server, which should execute the chosen function.

**Example:** GeoDinPlugin.GeoDinPluginSample

**DBNode1..n**

List of nodes in the GeoDin object manager **Databases**, at which the plug-in can be started. Here you select, at which nodes (branches and state of node) the plug-in call up should be possible. This is done by selecting a list of branch definitions of any length, which should be set by an entry DBNodexx. Use the consecutive numbers (DBNode1=, DBNode2= etc.) for the definition of several nodes, example:

**Example 1:**

DBNode1=3,2,1

Meaning: The plug-in is shown on a project node. The project has to be already opened and be contained in a OneTableSet database.

**Example 2:**

DBNode1=3,Boreholedatabase,1

Meaning: The plug-in is shown only on opened projects of the databases \"Boreholedatabase\".

**Example 3:**

DBNode1=3, Boreholedatabase,0,P00001

DBNode2=3, Boreholedatabase,0,P00002

Meaning: The plug-in is shown on the projects with the project ID P00001 or P00002 of the databases \"Boreholedatabase\". It does not matter if the projects are opened or closed.

**Example 4:**

DBNode1=9,2,0,,2,JPG

Meaning: The plug-in is shown in all SQL databases with OneTableSet setting on the documents of the type JPG on the second position of the method list (after the method 'Preview').

**Syntax of the Definition DBNodeX=**

The parameter ID has to be entered mandatory, further parameters can be added separated by commas.

DBNode1..n=ID\[,Param1\]\[,Param2\]\[,\...\]

**ID The plug-in is shown at the object ...**

1 Databases

2 Database

3 Project

4 Query or Group in the branch Objects

5 Query or Group in the branch Measurement points

6 Object

7 Measurement point object

8 Document folder

9 Document

**Param1 The plug-in is shown on the objects defined by the ID in a database in ...**

0 all databases

1 for ID=1 Plugin is displayed only if no database is configured currently

for ID=2 only in SQL databases (No file-based databases)

2 only in SQL databases with OneTableSet setting

Name only in the particular database with the entered name

**Param2 The plug-in is shown on the objects defined by the ID in a database ...**

0 regardless, whether the database or the project is opened

1 only, if the database or the project is opened

2 only, if the database or the project is closed

**Param3 The plug-in is shown on the objects defined by the ID in a database ...**

empty in all projects

PRJID only in projects with the entered ID

**Param4 The plug-in is shown in the method list at a preset position...**

Empty or 0 at the end of the list (after the GeoDin methods)

1..n at the entered position, e.g. 1 - The method symbol is shown at the object on the 1. position

**Param5 The plug-in is shown for ID=9 only on documents of the following type ...**

Empty on all document types

JPG only on documents of this type (here example: JPG images)

**Module** (optional)

Name the program module in the plug-in; this name is transferred as parameter to the executable program or the COM function. If no module name is entered, the transfer parameter remains empty. Through this option it is possible, that a single application or COM server function can perform different tasks, which are controlled by the module ID. Several functions can be combined in an external application by using module names, because it is allowed to connect several plug-ins with the same application file or COM server function. By transferring the module name as a parameter different processes can be activated in the external application or function. In this case different functions can be aligned to different symbols using the parameter \"Icon\".

**Icon** (optional)

Full file name of an ICO file for the display of the method symbol in the method manager. If this parameter is not entered, the Icon of the executable program is used (not possible for COM servers). If the program contains no icon, a standard icon is used.

**Popup** (optional)

Method is shown as popup menu only (click with the right mouse button on the object in the GeoDin object manager). Set the values to =true, if the plug-in should not appear as method symbol, but only in the popup menu, the standard value is =false -\> Symbol in the method manager.

**Wait** (optional)

Controls, whether GeoDin should wait to execute the function in the plug-in. For applications (EXE files) set the value to =true, if the function should be completed, to go on working in GeoDin. The standard value of this parameter is =false.

***Note:*** *When a COM server is used GeoDin always waits until the function has ended.*

**AllowOpenMethods** (optional)

Defines whether the plug-in can be run, if there are open methods (e.g. data collection). The default setting allows the plug-in to run: set the parameter to =false, to prevent this (in which case a warning will be shown).

**Hide** (optional)

Controls, whether the plug-in is visible in the method manager (as symbol or pop up menu). As default it is visible. Set the parameter Hide to =true, to hide the plug-in. Then the plug-in can only be called up using the #GeoDinHelpLink:**COM function**5284# **\"ExecuteMethodParams\"**.

**ExecuteAfterExpanding** (optional)

Controls whether the plugin is executed automatically when opening the branch for the first time. Set the parameter =true to start the plugin automatically. Plugins hidden by the parameter hide=true can be started automatically.This way it is possible to call up a function

not by the GeoDin User but which is executed automatically when this branch is openened (for example after opening the database).

**RefreshDatabaseDictionaries** (optional)

This defines after the plug-in has run whether the database dictionaries are offloaded. If ncessary these will automatically be reloded.

**Using an application (EXE file) as plug-in**

To use an application as plug-in you have to enter the parameter Execute=full path name of the application in the definition of the plug-in. GeoDin starts the application, when the method is called up and transfers all required parameters of the selected branch in the GeoDin object manager. With this data the plug-in can carry out special operations for these objects. The parameters are transferred to the application in the command line. Depending on the selected branch in the GeoDin object manager the number of parameters varies, which is shown in the following table:

Parameter Type Content ID=1 ID=2 ID=3 ID=4-9

1 String Module name or empty X X X X

2 Integer Screen position left X X X

3 Integer Screen position up X X X

4 Integer ID of the branch X X X X

5 String Database name \*1 - X X X

6 String Registry name of database - X X X

7 String Password database \*2 - X X X

8 String Project ID GeoDin - - X X

or String \"DB\"

for a branch below

a database query

9 String Depending on the - - - X

or integer ID selection

The kind of parameters 9 depends on the ID of the branch, from where the plug-in is started:

ID Parameter 9

1,2,3 empty

4 file name of a temporary file with PRJ_ID and LOCID of the objects

5 file name of a temporary file with string of the INVIDs of the objects

6 PRJ_ID and LOCID of the selected object

7 INVID of the selected object as string

8 file name of a temporary file with integers of the ADC_IDs of the documents

9 ADC_ID of the documents

\*1 Database name: In addition to the database name, this string also includes the type of connection (ADO or FireDAC) and the connection string itself.

\*2 The password may be part of the connection string, e.g. for system databases or for connections with a stored password. In this case the string is empty. The password must be extracted directly from the connection string.

**If a file name with the Ids of the objects is transferred to the plug-ins, the plug-in is responsible to delete this file! If the file is not deleted, it remains in the folder TEMP of the current user.**

The file with the IDs contains as many lines as objects are contained in the query or group.

On the branch ID = 4 every line contains the PRJID and LOCID separated by commas (Example: PRJ001,3).

On the branch ID = 5 every line contains the INVID (Example: PRJ0010004FIL001).

On the branch ID = 8 every line contains the ADC_ID (Example: 23).

The parameters 1 and 2 of the \"ideal\" window position allow to position the window of the external application analogous to the GeoDin methods on the right side below the method symbol or the popup menu entry.

**Using a COM server as plug-in**

To use a COM server as plug-in you have to enter the parameter Server=full name of the COM server interface in the definition of the plug-in. The full name consists of the name of the COM server and the name of the interface, which are separated by a point, e.g. GeoDinPlugin.PluginInterface

The interface has to provide a function with the name GeoDinExecutePlugin, which receives a string as transfer parameter and returns an OleVariant parameter:

function GeoDinExecutePlugin(const Params: WideString): OleVariant;

***Note:*** *The syntax of the definition of the function depends on the programming language, in which the plug-in is created.*

The string, which is transferred in params, has the structure of a configuration file with the following sections and parameters:

\[Params\] General parameters

Left= X ideal position of a method, which shows a window

Top= Y ideal position of a method, which shows a window

Module= Module name (from GeoDin.ini)

DBNode= ID of the selected branch

SolutionName= Name of the GeoDin-Solution (if installed)

SolutionVersion= Version of the GeoDin-Solution (if installed)

Database= Database name: ADOConnection

Username= User ID

Password= Database password

Owner= Name of the owner of the database table

PRJID= Project ID or \"DB\"

QueryName= Name of the query in which the selected objects are contained

\[Objects\] List of the object IDs of the selected objects

ID1

ID2

\...

\[Query\] Section with elements of the query (only for system queries)

Select= Select part of an SQL command

From= From part of an SQL command

Where= Where part of an SQL command

Order By= Order part of an SQL command

Explanation:

The position can be used by the plug-in, to place a dialogue corresponding to the positions for GeoDin methods. The parameter DBNode contains the ID of the selected branch (see description of DBNode above). The database connection is specified by the database name (consists of name and connection string separated by a colon), login information (for SQL databases) and eventually the owner name. The parameter PRJID is occupied by the GeoDin project ID, if the selected branches are under a project, otherwise this parameter contains the fix string \"DB\".

Kind of object ID:

Objects: PRJ_ID and LOCID separated by commas

Measurement points: INVID as string

Documents: ADC_ID of the documents

If system queries are used the properties of the SQL commands, which have caused the input of the objects in the object manager are transferred in the section \"Query\".

The return value of the function is reserved for further extensions. The value should be set to ZERO, because at the moment it is not returned.

**Plug-in to create reports**

Beside the execution of plug-ins as method in the GeoDin object manager plug-ins can also be used to create reports. This kind of plug-ins can be used in layouts and graphics to realize a very special type of report in a graphic. To develop such a plug-in is a complex task, because a GeoDin class in the XML format has to be created and returned as parameter to the function. A description of a GeoDin class in the XML format is not included here (information is provided on request) only the setting of report plug-ins is described here:

**1. List of available report plug-ins**

In the section \[ReportPlugins\] each plug-in is defined by a line and given a name.

**Example:**

\[ReportPlugins\]

Plugin1=Special report

**2. Definition of a single report plug-in of the list**

For each plug-in defined in the list \[ReportPlugins\] a separate section in the configurations file GeoDin.INI with the name of the plug-in defined in step 1 has to be created.

**Example:**

\[Special report\]

Name=Special report water

Server=GeoDinReportPlugin.GeoDinReportPluginSample

Module=Module1

ExecuteWithOutData=false

Name: Report name at the graphic element \"Report\"

Server: Interface name of the COM server

Module: optional module name

ExecuteWithOutData: Selection of the execution type of the plug-in

The module name is transferred to the plug-in, so that different reports can be created in a COM function. By setting the option ExecuteWithOutData=false the plug-in is started by GeoDin, if the graphic is a layout without data connection. By setting the option ExecuteWithOutData=true it only starts in a graphic with connected data.

To use a COM server as a report plug-in enter in the definition of the plug-in the parameter Server=full name of the COM server interface. The full name consists of the name of the COM server and the name of the interface, which are separated by commas, e.g. GeoDinPlugin.PluginInterface

The entered interface has to provide a function with the name GeoDinGetGraphicReport, which receives a string as transfer parameter and an OleVariant as return parameter:

function GeoDinGetGraphicReport(const Params: WideString): OleVariant;

***Note:*** *The syntax of the definition of the function depends on the programming language, in which the plug-in is created.*

The string, which is transferred in params, has the structure of a configuration file with the sections and parameters like described above for the server plug-ins. As return an XML

Data stream according to the GeoDin class C_GraphicDrawReport is expected. <!-- src: help/15/5285 -->

### ExceptionValue

# **Functions to identify the error statusfunction ExceptionValue:integer;**

This function shows the error status of the previously called up function. The return value is 0, if the previously called up function has worked correctly. The possible error numbers are described at the end of the document.

**function ExceptionMsg:string;**

(Standard edition required)

Return of the error text of a previously failed function call. If ExceptionValue \<\>0 the full error message can be inquired with this function.

## **Error numbers**

The error numbers are definite for all functions.

1

System error (System resources are effete o.e.)

2

Function not licensed

3

Initialisation error (COM-Server has not or incompletely started)

4

Layout file (Parameter LayoutFileName) or the layout / report of the layout list can not be loaded (wrong name, file missing, is defective o.e.)

5

Error in the layout (e.g. no object frame existing)

6

Database cannot be opened (Wrong database name, wrong login)

7

Object cannot be loaded (wrong or defective Project ID, Object ID, defective files in the GeoDin SYSLIB folder)

8

The file selected in the Parameter OutFileName cannot be saved (wrong filename, rights)

9

The selected output (print) device is not defined in the configuration file GeoDin.INI.

10

The print device defined by the configuration entry cannot be found in the list of the installed printer drivers.

11

Error creating the print file (e.g. incorrect setting of the paper format, the printer driver does not support this format)

12

Error transferring the completed print file as result of the function (define SpoolTimeOut)

13

Creating the object entry or the object group is not possible (wrong object ID, object type)

14

Invalid MethodID - the function is not available

15

A selection is not possible because the marked object cannot be quit. Example: If the current object is edited and due to syntax error in the data cannot be left marking another object is not possible.

16

The expression cannot be started because no graphic window is opened. <!-- src: help/15/8426 -->

### ObjectManagerVisible

# **Function to show or hide the GeoDin windowproperty ObjectManagerVisible:boolean**

By setting this property to \"true\" or \"false\" the visibility of the GeoDin object manager is controlled. <!-- src: help/15/8427 -->

### LicenceInfo

## **Functions to determine the licence informationfunction LicenceInfo:string;**

This function is available for the Essentials-edition upwards.

The response contains information on GeoDin and the available modules.

Licence information:

Buildnumber: G1840809

Donglenumber: unknown

GeoDin - Editions

Professional

Solution information with version number is continue output, if they are available. <!-- src: help/15/8429 -->

### SelectLocation

## **Functions to mark (selection) an object in the object managerfunction SelectLocation(Database, UserName, Password, ProjectID:Widestring; LocationID:integer):integer;**

This function is available from the basis module upwards.

The specified object is marked in the GeoDin object manager and becomes the current object. As object ID also the -1 can be transferred. In this case the GeoDin project is marked in the object manager and becomes the current object.

***Database***

Database connection name for example \"GeoDin COM example\"

***Username***

Database login name (for Access a space character \' \' no empty string !)

***Password***

Database login password (for Access a space character \' \' no empty string !)

***ProjectID***

GeoDin project ID (6 digits)

***ObjectID*

GeoDin object ID

The return value of the function is 0, if the function is executed. The return value is 1, if an error has occurred. See ExceptionValue and ExceptionMsg. <!-- src: help/15/8430 -->

### SelectObject

**function SelectObject(Params:Widestring):integer;**

The specified object (database, project, query, object, measurement point is marked in the GeoDin object manager and becomes the current object.

***Params*

The control of the function is accessed by a string in the format of a configuration block:

\[Params\]

Database=

UserName=

Password=

ObjectType=

ParentNode=

Query=

ObjectID=

Expand=

The parameters have the following meaning:

***Database***

Database connection name, for example \"GeoDin COM example\"

***Username***

Database login name (for Access empty, internally a space character \' \' is used!)

***Password***

Database login password (for Access empty, internally a space character \' \' is used!)

***ObjectType***

0 - The database branch or project branch should be selected.

To select the database branch the parameter ParentNode has to be set to =Database, the parameters Query and ObjectID remain empty (no entry).

To select a project branch the parameter ParentNode has to be set to =Project, the parameter ObjectID has to contain the project ID (e.g. ObjectID=PRJ001), the parameter Query remains empty (no entry).

1 - The branch \"objects\" or a object query should be selected.

2 - The branch \"measurement points\" or a measurement query or a measurement point should be selected.

***ParentNode***

=Database

This defines that the object to be selected has to be directly below the database as a query or inside of a query of that type. The parameter Query= defines the name of the query of that type.

=DatabaseQueries

This defines, that the object to be selected has to be in the branch objects (ObjectType=1) or in the branch measurements (ObjectType=2) of the database. The parameter Query= defines the name of the query of that type.

=Project

This defines that the object to be selected has to be directly below the query or inside of a query of that type. The parameter Query= defines the name of a query of that type.

=ProjectQueries

This defines that the object to be selected has to be either in the branch objects (ObjectType=1) or in the branch measurements (ObjectType=2) of the project. The parameter Query= defines the name of the query.

***Query***

This optional parameter defines the name of the query to be selected or the query, which contains the object to be selected. If this parameter is not entered GeoDin selects automatically the queries \"All objects\" or the corresponding query or the measurement type, which is defined by the measurement ID (three-digit) in the INVID.

***ObjectID***

The parameter ObjectID specifies the chosen object. If ObjectID is empty or contains only a six-digit project ID, only the branches (in this case queries), which are defined by ParentNode and Query, are selected without selecting a certain object or measurement point. A object ID has to follow the Project ID directly and has to consist of a four-digit string, to example PRJ0010022 = Project ID: PRJ001 and object ID 22. The number of the object ID has to be completed with zeros and has to consist of exactly four characters. If a measurement point should be selected a sixteen-digit INVID has to be entered, for example PRJ001022FIL001. An exception is the selection of a GeoDin measurement point query of the type \"Filter\" or \"Sample\". Using an ObjectID of the type = PRJ001????FIL (ObjectType=2, ParentNode=ProjectQueries, Query=empty) for example the query \"Filter\" in the branch measurement points of the project PRJ001 can be selected without choosing a certain measurement point in this branch.

***Expand***

This parameter defines, whether the selected branch should be opened at the same time. Use the entries =true or =false to determine the opening process.

The standard value of Expand is =true.

The returning value of the function is 0, if the function was executed. The returning value is 1, if an error occurred. See ExceptionValue and Exceptions. <!-- src: help/15/8431 -->

### CreateObjectSelection

**function CreateObjectSelection(Database, Username, Password, ObjectIDs: WideString; ObjectType: Integer; RefName: WideString; MethodID: Integer; MethodParams: WideString): Integer;**

One or more objects are added to the GeoDin object manager. Optionally a method with parameters can be started at an object or an object group.

***Database***

Database connection name, e.g. \"GeoDin COM example\"

***Username***

Database login name (for Access a space character \' \' no empty string !)

***Password***

Database login password (for Access a space character \' \' no empty string !)

***ObjectIDs***

String with one or more object IDs. These are interpreted as INVID values in case the ObjectType = 1 or 2. In case the ObjectType= 3 they are interpreted as ADC_ID values. The INVIDs can be taken from the tables LOCREG, FILREG or PRBREG or be built according to the rules. The ADC_IDs have to be contained in the table ADC_DATA. By entering a single ID a single object is added and selected. When entering several IDs these have to be separated by CRLF (\$0D\$0A) (string list object with several lines). If several objects are added a group results, which is selected after being added.

***ObjectType***

Using ObjectType=0 the objects are interpreted as an object. Using ObjectType=1 the objects are added as measurement points. This option is especially relevant for INVIDs from the table LOCREG, because these can either be objects or measurement points. Adding INVIDs from the tables FILREG or PRBREG with the ObjectType=0 leads to an error. Using ObjectType=3 documents are added and the IDs are interpreted as ADC_IDs.

***RefName***

Contains ObjectIDs only one object this parameter is not used. For several objects this parameter should contain a group name to simplify the user navigation (If an empty string is chosen the group is named \"New group\").

***MethodID***

Optional indication of a MethodID. Starts the corresponding method. Is transferred as MethodID -1, if no method is started.

***MethodParams***

Is only used, if MethodID \<\>-1. Is used to control the call upon of the method. See ExecuteMethodParams.

The return value of the function is 0, if the function is executed. The return value is 1, if an error has occurred. See ExceptionValue and ExceptionMsg. <!-- src: help/15/8435 -->

### MethodListAsString

# **Functions to start GeoDin methodsfunction MethodListAsString:string;**

Returns a list of methods, which can be called up on the selected object. The result string can consist of several lines (separated by CRLF), where each line is a method. A method entry consists of the MethodID followed by a comma and the name of the method (e.g. 2,Edit graphic). The MethodID can be used in the method ExecuteMethod. If no method is available, the return string is empty. <!-- src: help/15/8436 -->

### ExecuteMethod

**function ExecuteMethod(MethodID:Integer):Integer;**

This function is available in the basis GeoDin module. Other modules may be necessary, depending on the method (e.g. Logs, Labs\...).

The return value of the function is 0, if the function is executed. The return value is 1, if an error has occurred. <!-- src: help/15/8437 -->

### ExecuteMethodParams

**function ExecuteMethodParams(MethodID:Integer; MethodParams: WideString):Integer;**

This function is available in the basis GeoDin module. Other modules may be necessary, depending on the method (e.g. Logs, Labs\...)

Starts a GeoDin method with parameters. The valid method IDs are described under ExecuteMethod \<ExecuteMethod\>CLASS_HLP_COM_ExecuteMethod#.

The return value of the function is 0, if the function is executed. The return value is 1, if an error has occurred. <!-- src: help/15/8438 -->

### GetImage

## **Function to create an imagefunction GetImage(const Database, Username, Password, ProjectID: WideString; LocationID: Integer; const VersionName, LayoutFileName, OutFileName: WideString; ImageType, MaxResolution, Compression, Scale, PageNumber: Integer; out PageCount: Integer): OleVariant;**

## **Note:** This function is only available with a GeoDin Server Licence.

***Database***

Database connection name e.g. \"GeoDin COM Example\"

***Username***

Database login name (for Access a space character \' \' no empty string !)

***Password***

Database login password (for Access a space character \' \' no empty string !)

***ProjectID***

GeoDin project ID (6 characters)

***ObjectID***

GeoDin object ID

***VersionName***

Empty string \'\' or versions of the borehole logs and well design to be displayed

***LayoutFileName***

Full file name of the layout file, e.g. \"C:\\PROGRAMs\\GeoDin\\LAYOUTS\\BOREHO1.GLO\"

***OutFileName- Function for creating image file***

Either empty string (no file will be created) or full filename for result JPG image file e.g. \"C:\\SAMPLE1.JPG\"

**function GetImage(const Database, Username, Password, ProjectID: WideString; LocationID: Integer; const VersionName, LayoutFileName, OutFileName: WideString; ImageType, MaxResolution, Compression, Scale, PageNumber: Integer; out PageCount: Integer): OleVariant;**

This feature is available in the image server module.

***Database***

Database connection name, e.g. \'GeoDin COM Example\'

***Username***

Database login name (for Access a space \' \' no empty string !)

***Password***

Database login password (for Access a space \' \' no empty string !)

***ProjectID***

GeoDin project identification (6 characters)

***ObjectID***

GeoDin object identification number

***VersionName***

Empty string \" or the relevant versions of the soil profile and well design. This parameter is supported only for object types of the Bavarian regional geological authority (Landesamt). VersionName contains either a string without tab character - then here the name of the version of the soil profile is given or VersionName contains two strings, connected by a tab character, then it equates to the name of the version of the soil profile followed by the name of the version of the well design (SVVersion+chr(9)+ASBVersion). In case of the object types of the Bavarian Landesamt, the names of the versions are defined by the PKEY.

***LayoutFileName***

complete file name of the layout file, e.g. \'C:\\PROGRAMDATA\\GeoDin\\LAYOUTS\\BOHRPR1.GLO\'

**OutFileName**

Either empty string (no file is created) or complete file name for the resulting JPG image file e.g. \"C:\\SAMPLE1.JPG\"

***ImageType***

1 (=JPG)

2 (=JPG, missing data or incorrect graphic elements are displayed dashed (like in the preview))

11 (=PNG)

12 (=PNG, missing data or incorrect graphic elements are displayed dashed (like in the preview))

21 (=EMF)

22 (=EMF, missing data or incorrect graphic elements are displayed dashed (like in the preview))

31 (=WMF)

32 (=WMF, missing data or incorrect graphic elements are displayed dashed (like in the preview))

***MaxResolution***

Resolution of a bitmap image for the longest side of the paper format of the chosen layout e.g. 1500

***Compression***

Range of values from 0 to 100. Controls the quality / compression for JPG images and the speed / compression for PNG images. Detailed information is given below.

***Scale***

Vertical scale of the object in the layout (overwrites the settings in the layout; the options \"Fit to page\" and \"Auto correct\" are not affected and can lead to an automatic adjusting of the scale; presets in the layout \"Read from\" are ignored).

***PageNumber***

Page number to be displayed

***PageCount***

Return of the page number of the visualization of the current object in the selected scale

The function returns the image as OleVariant, so that no detour via the OutFile is necessary.

***Note:*** *The parameter Compression is not used by EMF or WMF images during the creation.*

If you create an EMF image, the parameter MaxResolution can be used to control the resolution. By transferring 0 the resolution of the EMF image is calculated internally (like a direct export from the GeoDin program user interface). If a value \> 0 is transferred the maximum horizontal range of the EMF image is fitted so, that the entered value is not exceeded. The resulting image can have a lesser horizontal range than the entered value, because the boundaries of the EMF image (Boundary box) are aligned to the contained graphic elements. Because of this visualization with the same layout can lead to EMF images with a different horizontal range for different boreholes, while the range of the images is equal, if bitmap images are created.

Using the parameter Compression:

JPG: Quality and compression

0 = low quality / high compression

100 = high quality / low compression

Example sizes with MaxResolution = 1500 for an A4 page with the standard layout \"Borehole log\":

Compression Size in KB Comment

0 48 not usable

25 85 very intensive streaks

50 109 noticeable streaks

75 135 good display

85 157 good display

100 320 very clear image but very large

PNG: Speed and compression

0 = very time-consuming / high compression

100 = very fast / low compression

Compression Size in KB Comment

0 42 extremely time-consuming (\>30 sec)

25 72 efficient creation (5 sec)

50 99 fast creation

75 157 fast creation

75 564 very large file

100 564 very large file

Values above 70 should not be used, the used library creates this PNG files sporadically defective, so that the images cannot be displayed with all programs. <!-- src: help/15/8439 -->

### GraphicWidth

**function GraphicWidth:integer**

Returns the width of the figure, which was created when GetImage was called up the last time. The functions should only be used, if in the called-up application there is no possibility to call up these parameters by oneself. <!-- src: help/15/8440 -->

### GraphicHeight

**function GraphicHeight:integer**

Returns the height of the figure, which was created when GetImage was called up the last time. The functions should only be used, if in the called-up application there is no possibility to call up these parameters by oneself. <!-- src: help/15/8441 -->

### GraphicPageCount

**function GraphicPageCount:integer**

Returns the page number, which was created when GetImage or GetPrintFile was called up the last time. Is equal to the out parameter PageCount of both functions. The functions should only be used, if in the application calling up cannot handle the out parameter of both functions. <!-- src: help/15/8442 -->

### Data management

**MethodID = 1 (Data management) MethodParams:**

A\) no entry

Data collection is started (general data editor), if this method is already started, the current data mask (general data, layer data, etc.) stays active.

B\) Selecting the desired editor mask by providing a parameter data string of the form:

\[Params\]

EditType=Number

The available numbers are:

1 - General data

2 - Layer data

3 - Sample data

4 - Well design data

5 - Data sequences

6 - Additional data (1:n), depending on the object type, e.g. the table ground water <!-- src: help/15/8728 -->

### Edit graphic

**MethodID = 2 (Edit graphic) MethodParams:**

A\) no entry

The standard layout list is opened. The current layout of the layout list is displayed.

B\) Input of a (layout) file name, which should display the object.

C\) \"Layout:Layoutname\"

The standard layout list is opened and the layout \"layoutname\" is selected. Optionally the layout list, which should be used, can be described as path:

e.g.: \"Layout:Layoutname\|c:\\programs\\GeoDin\\syslib\\geo.gll\"

E\) \"Report:Reportname\"

The standard layout list is opened and the report \"reportname\" is selected. Optionally the layout list, which should be used, can be described as path:

e.g.: \"Report:Reportname\|c:\\programme\\GeoDin\\syslib\\geo.gll\" <!-- src: help/15/8731 -->

### Open graphic

**MethodID = 4 (Open Graphic) MethodParams:**

A full-length path name of a GeoDin graphic, layout or layoutlist is expected. The file is opened in the graphic window. <!-- src: help/15/8734 -->

### Import measurement data

**MethodID = 12 (Import measurement values) MethodParams:**

\[Params\]

Database=\<Database name\>

Username=

Password=

DatType=\<Data type\>

ImpType=\<Import Type DBF_ROW,CSV_ROW,ACC_ROW\>

ImpCmdFile=\<Name path of an import command file \*.xml\>

ImpDatFile=\<Name of an import file \*.dbf,\*.csv,\*.mdb\> \|\<Table name for Access\>

ImpRepFile=\<Name of a report file \*.txt\>

The names of the files are expected as full-length path.

\[DataSource\]

ImportFormat=\<Row,Col\>

GroupField1=

GroupFieldn=

ParameterField=

ValueField=

MesPointLink=

\[MesPointLink\]

\<GeoDinINVID\>=\<DatasourceID\>

\...

\...

\[ParameterLink\]

\<GeoDinParameter\>=\<DatasourceParameter\>

\...

\...

\[ImportOptions\]

AddRecords=true

UpdateRecords=false

SearchRecords=\<SMPDATE,SMPNAME,SMPID\>

UpdateType=\<Extend,Replace,Ignore\>

RoundNumbers=false

CutText=false

IgnorePlausibilityErrors=false

CalcRecordChanges=false

DetailProtocol=true <!-- src: help/15/8737 -->

### Print graphic or report

**MethodID = 13 (Print graphic or report) MethodParams:**

No entry: The print out is done without a print dialogue on the current printer. If no graphic is opened (detail view or layout overview) or if there are no objects connected with the layout in the layout overview, nothing is printed and the error number 16 is returned.

The print output can optionally be configured by entering a parameter block:

\[Printoptions\]

ShowPrintDialog=true A print dialogue is displayed

PrintDevice=DeviceName Printer to use

PrintFileName=FileName Print to selected file

**DeviceName:**

For the printer to use in the GeoDin.INI a section with printer information has to be entered. Example:

\[PrintDevices\]

PDF=Acrobat PDFwriter

Win2PDF=Win2PDF

SW=Canon GP300-405 PCL

A more detailed description of this section you find in the information about the function \"GetPrintFile\". DeviceName has to contain a valid entry of this configuration section.

**FileName:**

If you use the parameter \"PrintFileName\" enter a full file name. An eventually existing file of the same name is overwritten.

For example the parameter block would look like this, if you want to use the print function to create a PDF file:

\[Printoptions\]

PrintDevice=Win2PDF

PrintFileName=C:\\GeoDinPrints\\Ausdruck1.PDF <!-- src: help/15/8740 -->

### Start plugin

**MethodID = 14 (Start plug-in) MethodParams:**

A configuration block has to be transferred, which contains at least the entry:

\[Params\]

Plug-in=\<Name\>

As **Name** the distinct name of the plug-in function has to be entered.

***Note:*** *The topic here is not the parameter \"Name\", which is visible in the object manager as the name of the [Plugins](../installing-plug-ins.md), but the name of the configuration section of this plug-in. The plug-in has to be configured and executable for the current branch (node) in the object manager. It can be hidden in the method list itself (Parameter \"Hide\" in the plug-in configuration).*

Optionally the configuration block can contain another section with the name \"PluginParams\" and any parameters. Example:

\[Params\]

Plugin=Specialfunction

\[PluginParams\]

Param1=My parameter 1

Param2=My parameter 2

\.....

This configuration section is transferred to the plug-in (only COM server plug-ins) completely and is not analyzed by GeoDin. Because of this any parameter can be transferred to the plug-in by call up over the COM function. <!-- src: help/15/8743 -->

### Check measurements

**MethodID = 53 (Check measurement values) MethodParams:**

Use the section \"Regression\" to check measurement values using a regression analysis.

The value Layout contains the name of the regression graphic to be used.

Further information to this method can be found in the chapter [Check measurements](../../data-analysis/calculation-engine/data-checks-and-validations.md) and in the description [Regression calculation](../../data-analysis/calculation-engine/regression-and-curve-fitting.md) of the time series element.

**Example:**

\[Regression\]

Layout=AnalysisLayout1 <!-- src: help/15/8746 -->

### SysInfo

**Function to determine system informationfunction SysInfo(Param:string):OleVariant;**

This function is available from Essentials- Edition.

It returns system information depending on the parameter chosen.

The following parameters are available:

1.  SysInfo(GeoDinINIFileName): returns the complete path and filename of the current GeoDin.ini.

2.  SysInfo(ProgramDataFolder): returns the program data path.

3.  SysInfo(ApplicationFolder): resturns the application folder. <!-- src: help/15/10967 -->
