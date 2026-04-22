---
description: Working with Projects
---

# Working with Projects

## Working with Projects

#### Projects

A GeoDin project is used to combine objects, measurement values and documents, which belong to a unit regarding content. These units can - depending on the case - be projects from the working profile of the user (for example an investigation task) or locally defined projects (for example all boreholes of a map sheet).

How you combine the objects in a project, is left to you. Because objects can be transferred from one project to another, it is possible to change the combination later. The project data is stored in the tables of a database. The access is done over a database connection.

#### Project details

First select the database, in which the project should be created (for this select the chosen database entry in the object manager and open the branch with a double-click or clicking the plus **+** symbol). With selected and opened database the symbol  **"New project"** appears in the method bar:

The given project name is shown in the GeoDin object manager. An alias name can be used for a second project name or a company related identification.

GeoDin automatically creates a unique project ID. This project ID is used in the PRJ\_ID column in the database tables. If you wish to use a user-defined project ID, select the option -User-specified ID-. The user must take care that the project ID is unique, as GeoDin does not check whether the ID has been used in other databases before. Therefore, an automatically generated project ID is recommended.

After creating the project it is automatically shown in the GeoDin object manager and you can start entering borehole data.

The method **"Edit project information"** allows users to change the name, alias name and author of a project. You cannot change the project ID.

Related subjects:

[Create object](../objects/creating-objects.md)

[Data management](../objects/data-management.md)

#### Open project

You can open a project by double-clicking on the project entry, by clicking on the arrow sign in front of the project entry or by double-clicking on the method symbol  **"Open project"**

An open project is indicated by a yellow folder icon in the GeoDin object manager and remains open throughout the session until it is explicitly closed by the  **"Close project"** or **"Close database"** methods.

You can open any number of projects (also from any number of databases) at the same time and navigate between them in the GeoDin object manager.

When you close GeoDin, all projects and databases are automatically closed.

To close a project, double-click on the **"Close project"** method icon .

_**Tip:**_ _Clicking on the arrow sign in front of a project entry does not close the project but only hides the entries below the project._

#### Delete project

To delete a project from the GeoDin database choose the method  **"Delete project"**

After confirming your intention in the delete project window all project data is deleted.

If you delete a project in a database (MS Access, ORACLE etc.) all data sets, which are related with objects of the project to be deleted, are removed from the tables. Database tables are not deleted.

#### Copy project

To copy an entire project choose the method  **"Copy project"**

The entries for project name and author must be entered - the default values are based on the original project.

All borehole information (geological layers, samples, monitoring wells and data sequences) is copied. Measurement values (chemical analyses, groundwater levels) and document data (text, spreadsheets etc.) are included only if the option box is checked.

Document data are copied only if they are stored in the database. If the document is a link to a file, the link is copied while the file itself will not be duplicated. In this case, two objects contain the same link to the same file, the original object and the copy. Therefore, it is recommended to store the documents in the GeoDin database, not only the links. This way, once an object is copied, a duplicate of the document will be created. This way, exchanging GeoDin projects with the included documents is much easier. Links are recommended only for very large files.

It is possible to copy all projects of a database in one operation using the method: [Copy all projects](copying-and-transferring-projects.md)

_**Details about queries and groups**_

_Created queries and groups of objects in a project or a database are stored in the database with the database login (e.g. Oracle, MS SQL-Server) and the user ID in the table GeoDin\_SYS\_PRJDEFS. Only the owner of the query or group sees these entries in the object manager. Every user only sees his own particular queries and groups. In an MS Access database (without database login) queries and groups are seen by all users, irrespective from which user has created the query or group._

_If a project is or all projects are copied from an MS Access database into an Oracle or SQL-Server database the following definition is applied: If the source Access database has no owner of the query (the standard case) the user who has copied the project (or all projects) becomes the owner of the query. If an owner is defined in the source Access database (special case using the entry: ObjOwner=WorkStationLogin) this owner name is transferred into the target database._

_Normally after copying single projects or all projects from an Access database in an SQL-database with database login other users (login names) cannot see the queries and groups in the object manager. In this case change the entries in the column OBJ\_OWNER in the table GeoDin\_SYS\_PRJDEFS of the target database. Use an SQL-tool to correct the entries to the required user names. Also note the information about user and system queries and their configuration in the chapter_ [_Queries_](../../data-analysis/queries/creating-queries.md)_._

#### Copy all projects

It is possible to copy all projects from one database into another in one step. Opposite to copying a single project here the original project identifications are kept and a 1:1 copy of the database is created. This function is useful for transferring complete GeoDin databases from one database format to another.

For this select at the database entry of the source database the method  **"Copy all projects"** .

After choosing the destination directory and confirming with **OK** the copying process begins. Depending on the size of the database and the type of the database connection, this may take a long time. After successfully completing the operation both databases are automatically closed. Always open only one of the databases, because GeoDin system identifies a project by its ID number, which now exists in two databases.

To prevent unintentional mistakes it is better to delete one of the "old" database connections.

Please note the information about queries and groups in the chapter [Copy project](copying-and-transferring-projects.md).

#### Add objects

With this method objects (no measuring points!) can be taken over into other projects. Therefore, only objects of nodes, queries and groups that contain objects (red ball as symbol) can be taken over.

It is not possible to take over an object that already exists in the target project into the list of objects. If you want to duplicate an object in the same project, use instead the method [Duplicate object](copying-and-transferring-projects.md).

**To transfer objects from one project to another, proceed as follows:**

1\. First open the project in which you want to add the objects and select it.

2\. Open the method  **"Add object"**.

3\. Now open the database and the project, query or group from which you want to copy objects to your target project.

4\. Drag and drop the desired objects individually or a query or group into the "List of objects" of the \<Add objects> window and drop the entry there.

The presence of the **"Add objects"** method in the method bar indicates whether you can add objects to the list. Instead of dragging and dropping the objects into the window, you can also double-click on this method symbol to take over the selected object or group into the list.

After taking over the object into the list, the method symbol automatically disappears from the bar. It is not possible to take over the same object several times into the "List of objects".

With this button selected entries (even several at the same time) can be removed from the list of objects.

If many individual objects are to be taken over from a project, it is sometimes easier to take over the project with all objects ("All objects" node) in the list in order to then remove objects that are not to be taken over collectively from the list again.

**Once you have arranged all the objects in the list, you can choose between two methods:**\
&#xNAN;**"Copy"** - makes a copy and leaves the object in the original project location\
&#xNAN;**"Move"** - the objects are moved to the new project and are no longer present in the original location

**Include data**

Specify here (only if the **"Copy"** method was previously selected) which data should be transferred:

**with measured values** - If the option is confirmed, all measured values and the relevant data (e.g. data types) are also transferred; if the check mark is removed, no data and information relevant to measured values are transferred.

**with documents** - If this option is set, documents and document data are transferred; if the option is deactivated, no document data is transferred.

**ConversionSEP1 -> SEP3**

The function SEP1 - SEP3 conversion is used for the change of GeoDin objects. It is designed for objects, which were entered in the SEP1 standard and are transferred into the new standard SEP3.

_**Attention:**_

_The "Conversion" node is only available and becomes visible when objects that can also be converted have been dragged into the "List of objects" window._

_If the window is still empty or only objects of non-convertible object types have been dragged in, the node is not visible for the time being._

The following GeoDin object types are supported:

1. Complete location SEP-compatible
2. Standard location SEP-compatible
3. User defined location SEP-compatible
4. Complete location DIN 4022 / DIN 4023

During the conversion the following important transfers are performed:

**General data and well design**

The general data of the SEP1 object types are transferred in the general data tables of the SEP3 object types. The existing codes containing information about the coordinate systems, coordinate finding, height system, height finding, reason of boring and boring method, as well as confidentiality are transferred in the ones of the particular SEP3 dictionaries. General data, which do not exist in the SEP1 object type (esp. after DIN 4023) and do not exist in SEP, are not transferred.

**Groundwater information**

In contrast to the SEP1 object types in SEP3 the information about water, which is found during boring, is managed in a separate table. During the conversion the groundwater information is extracted from the layer descriptions and transferred in this table.

**Layer descriptions**

The most important aspect is the conversion of the layer descriptions. SEP3 differs from SEP1 by clear syntax rules and hierarchic relations between the single formations. During the conversion the symbol structure is analyzed. Recognizable relations between the single formations are identified and used for the conversion. Generally summaries, transitions and attributes are realized as relations.

If different versions of bore logs exist for the objects to be converted (further bore logs can be added to the title data and designated there in the "Type of interpretation" field), they appear and can be ticked individually for transfer to the target.

Sub-layers or components contained in the layer descriptions are extracted and stored in sub-layer datasets.

Text is translated if possible or transferred in the remark field.

Abbreviations, which belong in SEP3 in other fields are extracted and newly positioned.

**Examples:**

U;t,s,g,kf =>U(t,s,g)

mS;fs,vos(gS) =>mS(fs),gS(vos)

The original data of the SEP1 object types remain unaffected from the conversion and are available in a source data bank.

The following errors are stored in the field "Note".

Depending on the country of origin they can also be combined. The origin of the error is recognizable from the abbreviation.

1. P- error - Petrography error
2. G- error - Genesis error
3. S- error - Stratigraphy error

These 3 error types are additionally displayed with the post-position (SART), if the error occurred trying to solve a sub-layer.

## **Errors and Description**

1857

The code could not be found in the dictionary!

2650

The number of left brackets does not match the number of right brackets.

4022

This code cannot be displayed with a post-positioned number as quantification.

4025

The code ... cannot be an attribute (descriptive feature) of the describing code ... .

4029

This code describes a layer type and cannot be used as attribute for the code ... here.

4031

The code ... describes no main ingredient. A layer description has to start with at least one main ingredient.

4036

This code cannot create transitions to other codes.

4038

The depth stated in the attribute is not in the depth sector of the main layer or the sub-layer description.

4080

The code cannot create a transition to the previous code ... of the described transition.

4011

After a closing bracket only the symbols \<comma> \<bracket open/close>, \<minus> or \<end of input> are allowed. A code cannot follow a closed bracket.

#### Transfer GeoDin data

For the transfer of database projects the following methods are available:

&#x20;**Export data**

With the method **"Export data"**, within the method collection **"Publish and export"**, you can compress your data (database, projects, objects or queries) into a Zip-archive on a path at your PC or network you have chosen. Please note that with large amounts of data, this process may take a while. After compression you can send it via your standard email client.

It is possible to automatically attach the current layout and / or the GeoDin configuration files in addition to the data. Often, quedtions to the support are easier to answer if the original layout is included. For this, select the desired option.

As recipient of the data, unpack the Zip-files. Please take note of the hints at the bottom of this section (Availability on the target computer).

**Transfer of the database file (desktop databases)**

This is only possible, if the database connection is a so-called desktop database, what means that the database container is a file. This is for example the case in a Microsoft Access database. Here the database containers are files with the ending \*.mdb on your hard disc or network.

In the simplest case you can transfer the \*.mdb file, but note that a database connection can contain several projects. In the \*.mdb file in this case (if not all projects, but only a single project from a database should be transferred) more information than you want is transferred.

If the database connection contains more projects, than you want to transfer, first create a new database connection (and also a new empty container file (\*.mdb)) and copy afterwards a project, which should be transferred with the method **"Copy project"** in this new empty database connection. After copying transfer the \*.mdb file, which only contains one project.

**Transfer of projects of client/server database connections**

Here the project data is stored on a database server and parts cannot be transferred as files.

First create a new database connection for desktop databases (Access database). Here you also create the new container file (\*.mdb) that you transfer later. Now copy the project (or the projects) to be transferred with the method **"Copy project"** in this new empty database connection. After copying transfer the new created \*.mdb file.

**Availability on the target computer**

After copying the database connection (\*.mdb) on the target computer, a new database connection has to be created there to get access to this database file. Select in the method [Create database connection](../databases/managing-database-connections.md) the transferred \*.mdb file and give the database connection a new name. After completing the method the database connection is displayed in the object manager and you can open the transferred projects.

#### Conversion tool

To transfer projects, graphics and layouts from GeoDin version 1.x in the actual GeoDin version the tool **"Conversion"** is available.

\
This tool has to be installed separately from the GeoDin CD if necessary. Start therefore from the GeoDin CD the program _**DR:**\\**ENGLISH**\\**INSTALL**\\**CONVER**\\**SETUP.EXE**_, where for **"DR"** your CD-ROM drive identification has to be inserted.

Select the directory of your actual GeoDin installation as destination directory for the installation. Follow the further installation steps according the instructions on the screen.

Select the icon **Projects**, to transfer GeoDin projects in the current format. First select the chosen project of the version 1.x. If on your drive no GeoDin projects are displayed, test the following settings:

The conversion tool assumes, that on the selected drive a folder with the name ODINDAT and the content of a GeoDin 1.x project exists. If you have chosen another folder for your projects, change the particular setting in the file GeoDin20.ini in the name of the folder and start the conversion tool again.

\[Version 1.0]\
LocalMgr=\ODINDAT

The selected folder has to contain a file with the name local.mgr. If this file is missing, your GeoDin 1.x files are incomplete. In this case contact the GeoDin Hotline for further support.

After selecting the project to be transferred create a target project in the actual format. The general project information is transferred automatically from the existing project. The drive for the target project can be selected.\
\
Because GeoDin system works with different location types, in the list **"To type"** can be selected, which target location type should be used for the transfer of the project data. In the setting **"Auto"** the conversion takes over the selection of the location type considering the data entered in the project 1.x. The result can be that in the target project boreholes are stored in different location types and that also different input forms for the entry of general data are required. The standard location types of GeoDin systems are varying for the following location types only in the number of available general data:

SSGKRZV1 - contains general data of the mask 'SHORT' of the version 1.x

SSGSTDV1 - contains general data of the symbol code geology: mask 'SEP' of the version 1.x

SSGD4022 - contains general data of DIN 4022: mask 'DIN4022' of the version 1.x

SSGBENV1 - contains general data of the mask 'USER' of the version 1.x

The automatic selection of the target location type considers the masks used during the entry with the version 1.x, so that no information is lost. Because in the version 1.x a change between input forms was possible, the locations can contain information, which were entered by the import of outside data and can be left out in the further process. In this case it is recommended to select the target location type and ignore not required information. Edit the boreholes in GeoDin base 1.x with the mask.

\
SHORT select the location type SSGKRZV1

SEP select the location type SSGSTDV1

DIN4022 select the location type SSGD4022

USER select the location type SSGBENV1

_**Attention:**_ _The pre-selection of a location type can result that information from the general borehole data is ignored during the transfer in the current GeoDin version and is not transferred in the new project. In cases of doubt select the type "Auto". The type selection has no influence on the layer data, sample information, well design and data sequence data. These are always transferred completely._

After transferring the project it is ready for editing with the actual GeoDin version. The original project of the version 1.x remains unchanged.

Optional all projects of a drive can be transferred into the actual GeoDin version in one single operation. For this select the chosen drive identification in the entry field and click the icon **Start**. If you have stored graphics or layouts in the project directories, you can have them transferred with the option -Include graphics- in the same step.

For transferring single **Graphics and layouts** click on the particular icon. In the following file selection menu select the chosen file. The transferred Graphic/Layout is stored at the same place with the same name. The data endings are changing to the following:

for layouts: layout.SHB ---> layout.GLO\
for graphics: graphic.GRF ---> graphic.GGF

_**Note:**_ _Eventually project links in the graphics of the version 1.x are unlinked, because it is not considered that linked projects are transferred. To avoid this the option -Embed location data- can be activated. Then the location data are embedded into the graphic before the conversion._
