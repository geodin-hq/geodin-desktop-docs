---
description: Creating Queries
---

# Creating Queries

### Queries

All objects shown in the GeoDin object manager are the result of a query to the GeoDin database. Queries can be made on individual projects or in a database (i.e. project independent). In addition to queries that result from a (set of) condition(s) being met, it is also possible to create a mixed group of objects together.

GeoDin automatically makes a number of queries and displays them in the GeoDin object manager when a project or database is opened. All the objects in a database including different types of objects and measurement points are listed:

Objects

All objects

Geotechnical borehole

BH 01

BH 02

BH 03

BH 04

CPT

Measurement point

BH

Filter

B01: (4-6m)

B01: (7.5-9.5m)

Samples

B01: (1.4-1.8m)

B01: (2.5-2.9m)

B01: (5.2-5.6m)

In addition to the predefined standard queries of GeoDin you can create your user-specified queries using the query assistant. The results are also displayed in the GeoDin object manager - you may create as many queries as you like, the definitions are being stored in the project or database. The query definitions remain available until they are deleted from the project or database.\
\
Depending upon, for which object in the GeoDin object manager a query was defined for, the results will be project specific or database wide.

For instance a query on an **Object** or **Measurement point** within a project can only produce results of objects from the project, in which it is contained.

DemoDB\
Projekt 1\
Objekte\
Alle Objekte\
Standardaufschluß SEP kompatibel\
Bohrung 1\
Bohrung 2\
Bohrung 3\
Meine Abfrage\
Messpunkte\
Objekte\
Messpunkte

On the other hand using either the **Objects** or **Measurementpoints** node of a database (i.e. below all projects of that database), a query will act on all projects of that database.

Datenbanken\
DemoDB\
Projekt 1\
Objekte\
Alle Objekte\
Standardaufschluß SEP kompatibel\
Messpunkte\
Objekte\
Meine datenbankweite Abfrage\
Messpunkte

\
\
**Visibilities**

This can be controlled via the advanced settings and the user management.

{% hint style="warning" %}
**Default visibility changed:** In earlier versions of GeoDin, newly created queries were private by default (visible only to the user who created them). This behaviour has been reversed — queries and maps created now are **visible to all users** of the same database by default. If a query should be restricted to the creating user, open the query's **Advanced** settings tab and configure the visibility accordingly. The same default applies to maps.
{% endhint %}

### AND vs. OR condition logic

When building conditions in the query wizard, the placement of a condition determines whether it is combined with AND or OR logic:

* **OR logic:** drag a field onto the top-level **Conditions** node. Each condition dropped at this level creates an independent OR branch — the query returns objects that match any one of the conditions.
* **AND logic:** drag a field onto an **existing condition entry** (nested under the "If" node). This adds the condition as an additional AND requirement within that branch — the query returns objects that match all nested conditions simultaneously.

**Example:** To find all objects deeper than 9 m AND on map sheet JD1234, drop the depth condition on the Conditions node first, then drop the map sheet condition onto the depth condition entry. Both must be satisfied.

{% hint style="info" %}
Queries on the **Measurement Points** branch of a project return measurement points rather than objects. You can create queries under either the **Objects** or the **Measurement Points** node in the Object Manager tree.
{% endhint %}

### Create query

To define your own queries (e.g. "boreholes deeper than 9 m") a query wizard is available.

The query wizard is able to create queries up to a certain degree of complexity. For highly complex queries it is possible to enter [Alternative SQL-Command](sql-and-advanced-options.md) in the query wizard or to create [System queries](creating-queries.md) (On the system-side of GeoDin).

The query wizard is started by using the method  **"New Query"**.

This is available when either **Objects** or **Measurement points** are selected in the GeoDin object manager.

A query is made up of an unlimited number of sub-queries. When an object fulfils a sub-query condition it is included in the query result.

**Example:**

You would like to select all objects that a colleague has inputted from a database. The author name for particular object or measurement point is stored in the Table A in the Data Field A1, for other objects (e.g. water-works wells) in another Table B in the Data Field B1.

In this case create two sub-queries: One that queries data field A1 in Table A and the second that queries data field B1 in Table B. Together they produce a list of all the objects from colleague X in the GeoDin object manager.

Each sub-query has its own sorting, whose results can be changed individually with the help of the option -Sorting the sub/partial results-. Usually however, just one sub-query is enough to choose the required objects.

In the first step of the query assistant you set the query name, which will be displayed in the GeoDin object manager. You may also organize the sub-queries.

Create a sub-query using the **New** button that takes you to the selection of the template to be used for creating the subquery. Here you define, whether the query is limited to selected objects in the database. Select one of the query templates and you will get more detailed explanations in the lower part of the dialog window.\
Following templates are offered:

\
**All objects** - Query registration of GeoDin- Objects

_**Note:**_ _This option is only available under the object nodes, i.e. not under the measure point node in the GeoDin object manager!_

With this template, the available data fields for conditions and display fields are strongly limited (only search by name, coordinates, starting depth and final depth of objects).\
\
**Specific object type** - Query on objects of certain object types

Is limited to a specific set of GeoDin tables (based on their predefined links) and hence limits are the results produced by the query.\
\
**User defined table links** - Query with links of any tables

The complete set of GeoDin tables, which requires knowledge of the GeoDin database structure and linking possibilities.

Access to all tables with descriptions of master data, sample data, well design data, etc.

\
[Alternative SQL-Command](sql-and-advanced-options.md) - SQL query

This choice requires SQL expertise and knowledge of the GeoDin database table structure.

**User defined query definitions** - Queries based on user-defined templates

\
Templates can be created by you or your GeoDin supervisor on the GeoDin system page.

When you click a query type explanatory help is shown in the lower half of the dialogue window. The relevant tables and data fields for the query are shown in the window.

After selecting the desired template, the **Next** button takes you to the definition of the conditions and display fields.

### Define settings

Depending on the chosen query type the window shows a list of the relevant database tables. To open a table field list click on the plus- symbol (+) before the table name.

Almost all operations in this dialogue are carried out by drag and drop. This means clicking on a table entry, keeping the mouse button pressed down and dragging onto the  _**Condition**_ branch of the tree structure in the lower window.\
\
As soon as the first data field entry is dropped onto a condition, the sub-level "IF" appears. If more than one requirement is to be met, then perform the drag and drop action again, dropping onto the "IF" node. This will be automatically extended with "AND" (Note: the field dropped need not be a different one e.g. limiting values for a particular variable).\
\
If either one or another condition is to be met, a table entry from the top field should be dropped onto the condition, whereby the node "Or" will appear automatically.

In the following example the query for all objects that were drilled deeper than 9m and that lie on the maps numbers JD1234 or JD1235 was set.

Bedingung

Wenn

SSGKRZT1.TK25=JD1234

SSGKRZT1.ZCOORDE>9

Oder

SSGKRZT1.TK25=JD1234

SSGKRZT1.ZCOORDE>9

_**Note:**_ _In order to simplify the visual query display it is not possible to define OR conditions from within an AND condition. This keeps the query logic clear for the user and through the definition of unlimited OR conditions virtually any query can be defined._

If we want to summarize the query shown in the above example as follows:

(ZCOORDE>9) AND ((ORDNSURV='JD1234') OR (ORDNSURV='JD1235'))

GeoDin also allows you to formulate a query as text - further details are given in [Alternative SQL-Command](sql-and-advanced-options.md).

**Valid comparisom operators:**

\=

\>

\>=

<

<=

<> (not equal to)

is null (Data field is empty)

is not null (Data field is not empty)

like 'A%' (Data field contents in high commas, Placeholders: % for unlimited characters and \_ exactly one character)

in ('T1','T2') (Value list in round brackets, values separated by commas, values in high commas for text fields,

for nummerical values a decimal delimiter and not in high commas)

**For conditions, that query adateplease note the following data formats for databases**:

The standard values are:

Access database #mm/dd/yyyy#

Oracle database 'dd-mmm-yyyy'

dBase database 'dd.mm.yyyy'

**For conditions, that query a time-stampplease use the following standard formats**

Access: #MM/DD/YYYY HH:MM:SS#

Oracle: TO\_DATE('_31.05.2015 12:24:36'_,'dd.mm.yyyy hh24:mi:ss')

MySQL, MS SQL, PostgreSQL: 'DD.MM.YYYY HH:MM:SS'

To remove a condition click on the **Delete condition** icon.

With the same button you may also delete the display or whole branches of the condition.\
\
**Data field display and content in the condition**\
\
Often you may not know, which values to expect for the objects to meet the condition you wish to define. By clicking **Show values** you may display these manually. By checking the box **Automatic** they will be displayed for whichever field you select. This automatic option should be left unchecked when working with large databases to avoid possible delays when navigating between the data fields.

You may drag an entry from the value list into the **Restriction** field. This is a great help when these contain a lot of characters. GeoDin automatically recognizes the format of the database field and sets text strings in high commas ("Text string") in the condition.

**Testing a query**

By clicking on the button **Test query** the conditions are checked for syntax errors and the number of objects meeting the query conditions are displayed. Up to 50 values are displayed in the list.

### Set display fields

The result of a query is always at least the GeoDin database field LOCID - a unique GeoDin object identification number. When no display fields are defined, the results of the query are shown using the LOCID in the GeoDin object manager. Of course this LOCID may not be all that helpful.

&#x20;**Display fields**

With the display fields you define the labeling of the objects in the GeoDin object manager. You can combine as many display fields as you like (e.g. name of borehole and final depth). To do this, drag the desired data fields onto the Display fields entry in the lower part of the window. The contents of all display fields will be linked to a text and displayed in the GeoDin object manager.

**Extension/Extra text**

To separate individual display contents (data fields) from each other, a text can be defined for each display field, which is appended to the respective data field content.

**Example:**

View fields

SSGKRZT1.LONGNAME (bis

SSGKRZT1.ZCOORDE m)

In order to form the total text in the form **Long Name (to Xm)** for each found borehole, the extension text **(**_**bis**_ or \[english] _**to**_ and for the display field ZCOORDE the extension text _**m**_**)** is defined for the display field LONGNAME. As a result, each borehole in the GeoDin object manager is labeled with name and final depth:

Location deeper than 9m

Brg 01 (to depth 11m)

Brg 02 (to depth 10.5m)

Brg 03 (to depth 12m)

Brg 04 (to depth 9.5m)

You can change the order of the display fields by dragging and dropping an entry to a different position within the **Display Fields** section.

With the display fields you also define the sorting order of the found objects in the GeoDin object manager.

In front of each display field, an arrow indicates the set sort order. You can change the sort order by double-clicking the entry. The sort order can have the following states: Ascending, Descending, Unsorted. The current sort order is displayed in front of the display field. The objects found are always sorted in the order of the display fields, i.e. in the above example first by name and then by final depth if the name is the same.

To sort the objects by final depth without changing the order of the display fields, double-click the LONGNAME display field until sorting is turned off for that field. The result set will now be sorted by final depth only, and the definition of the display field order will be retained. As a result, the following list is now displayed in the GeoDin- Object- Manager:

Location deeper than 9m

Brg 04 (to depth 9.5m)

Brg 02 (to depth 10.5m)

Brg 01 (to depth 11m)

Brg 03 (to depth 12m)

**Formatting and retranslation of labels in the object manager**

If the section "Display fields" is marked, you can further adjust the display fields via the lower input field **Labeling instruction - Query:**. Beside numerous [Text macro](../../reporting/text-macros-in-reports.md) By entering a macro, you can specify that the long name of the field entry (i.e. the reverse translation) is displayed in the object manager.

The macros entered must be available in the "Display fields" section. They cannot replace the display fields, but serve to supplement them.

_**TIP:**_ _Switch to the SQL preview and copy the desired entries from there._

**Example:**\
If you have defined GeoDin\_LOC\_S3STAMM.LONGNAME and GeoDin\_LOC\_S3STAMM.BART as display fields and want the long description of the bore type (BART), i.e. the back translation of the key, to be displayed in the GeoDin object manager, the following entry must be written in the input field **Labeling statement - query:**

$GeoDin\_LOC\_S3STAMM.LONGNAME$ ($GeoDin\_LOC\_S3STAMM.BART$)

The object manager now shows the following:

Holes (digestion type)\
SEP3 Hole 1 (general)\
SEP3 Hole 2 (digestion, filled)\
SEP3 hole 3 (oblique hole)\
SEP3 Hole 4 (general)

If a labeling instruction is used, an additional macro must be defined in the input field **Labeling instruction - Refresh:**. As a rule, the macro consists of the field references above it in the input field, minus the table names.

The macro is used when updating the display in the object manager due to changes made in the master data editor.

(Background: At the time of the update, the loaded object is used to resolve the macro. The initial query or the data record that led to the entry in the object manager is not cached, since this is not necessary and would only occupy memory. The macro for the update must therefore be created with the field references as they are also used in layouts for the loaded object.)

The following field references are therefore entered for the above example:

$LONGNAME$ ($BART$)

**Select sorting fields**

Beside the view fields (which can also be used for sorting the results as described above) also the data fields, which are not used in the displayed results in the GeoDin object manager, can be used for sorting. For this drag the chosen sorting fields from the upper list onto the entry **Sorting fields** per drag and drop. To change the sorting order double-click the particular entry. The arrow shows the current sorting order.

**Select result fields**

Additionally to the view and sorting fields the result fields can be selected, which are used neither for the display nor for the sorting. However, if the query results are to be exported, e.g. for GIS, use the result fields to determine which data fields are to be transferred from GeoDin to the attribute table of the generated layer. Drag the desired fields as usual to the node Result fields (Export). If you want to transfer all fields of a GeoDin table, simply drag the desired table to the node Result Fields (Export).

### Alternative SQL-Command

As well as visually constructing queries you may define your own SQL-commands by using the SQL-Preview window.

The option <[Alternative SQL-Command](sql-and-advanced-options.md)> allows you to define an SQL-SELECT-command for your query:

1. The command must return an amount (database cursor). An SQL-Command without SELECT-instruction at the beginning of a command will not be executed.
2. The first row of the result returned must contain a valid GeoDin-Location-ID (LOCID) or a GeoDin-Measurementpoint-ID (INVID) (depending on the desired result set). The queries are not checked for their validity, but a formal check that the first row of the result contains numbers that can be converted to integers. Where the result does not return a valid ID, the object cannot be selected later.

Because no further conditions are set for the SQL-Command, it is possible to integrate other database tables in the query that are not part of the GeoDin system structure. Of course such a query only makes sense when other such tables are related to a GeoDin-Table, so that the result returned gives valid ID's.

The alternative SQL-Command shows all the parameters visually defined in the query (order, additional text etc) as long as the data field names correspond.

### Parameterized query

In the example above a condition was set in the query that the end depth must be greater than 9 m. At another time you may want to choose all boreholes that are deeper than 20 m. To do this you could change the value from (>9m) to (>20m) in the existing query or define a new query, which differs from the first one only in the depth value.

GeoDin offers another more efficient method to define queries, which have similar conditions, while leaving the main parameter free to assume different values. The same query can then be used to make various selections of GeoDin objects.

To do this use the type ":?" in the limiting field instead of a number (depth) - see below:

Condition

If

SSGKRZT1.ZCOORDE>:?

Display Fields

SSGKRZT1.LONGNAME (to

SSGKRZT1.ZCOORDE m)

The used query condition is >:?

To characterize a parameterized query, an appropriate name can be chosen, e.g. "boreholes deeper than ?m", to mark the query is variable in the GeoDin Object Manager. Once the query is opened for the first time, an input dialogue is shown, asking for the input of the parameter.

Enter the desired depth value and confirm by clicking **OK**. As result, all boreholes deeper than the given value are displayed in the GeoDin Object Manager. The displayed boreholes can then be used for further analysis.

If you define a condition with a variable parameter in a query, you can select whether the parameter is a necessary input (-parameter required-). If this option is disabled, the input field can be left empty in the input dialogue. This condition is left empty when executing the database query and the characteristic is not used to limit the data sets in the resulting selection.

In addition, a standard value can be defined, which is entered automatically in the dialogue. If the query is started, the value is already entered in the input field and can be changed if desired. This makes filling in the parameters even easier. Depending on the field format, standard values for conditions have to be in the following format:

String of characters: Standard value can be any string of characters

Numerical value: The standard value has to be a number, the decimal separator is a point (.).

Date: The standard value must be a complete date in the dd.mm.yyy (day-month-year) form

**Use interval**

If a query is parameterized, it is possible to use an interval instead of an upper and lower boundary. An example for this is the search for objects in an area around a specific point. This is possible with a parameterized query and the parameters:

(X >= X\_value1) and (X <= X\_value2) and (Y >= Y\_value1) and (Y <= Y\_value2)

If coordinates values have multiple digits, entering the 4 necessary parameters is lengthy. For these cases, the option -Use interval- offers an easier possibility. To use it, define only two conditions:

X = :?

and

Y = :?

and switch on the option -Use interval-. A default value for the interval can also be given.

From the condition ( X =X\_value) and ( Y= Y\_value), GeoDin will automatically generate the following SQL statement:

((X >= X\_value - Xinterval) and (X <= X\_value + Xinterval)) and ((Y >= Y\_value - Yinterval) and (Y <= Y\_value + Yinterval))

As parameters, only the coordinates of the center and the interval need to be entered.

Using intervals is only possible for parameterized queries, but can be used for any numeric data field (for example end depth).

**Using the $%SYSDATE$ parameter**

You can use the $%SYSDATE$ placeholder as the default value of a date parameter to set the current date as the default value. Also, mathematical statements are possible with the $%SYSDATE$ macro, e.g. $%SYSDATE$ - 7 to get a default date for the day before a week.

**Change Parameters**

To change a defined value, use the method  **Change parameter** at the query object:

In a query, any number of parameters can be defined.

**Example:**

Condition

If

LOCREG.XCOORD>=:?

LOCREG.XCOORD<=:?

LOCREG.YCOORD>=:?

LOCREG.YCOORD<=:?

Display Fields

SSGKRZT1.LONGNAME

In the example above, four parameters are defined to build a rectangle of co-ordinates. The first of each of the X and Y values defines the starting coordinates - the second value in each pair defines the extent of the area to be searched. The query dialogue for this query is shown below:

### Update query

In a multi-user environment it may often be necessary to update a query to reflect changes in the data itself. GeoDin automatically checks for changes to objects that are used for the display (e.g. an object name that is shown in the GeoDin object manager). However if a parameter for the condition is changed (e.g. "End depth") the query is not automatically updated because this would interfere with the workflow with large data sets. Similarly if another user changes the end depth this is not automatically updated in the query.

There is a simple way for you to quickly update your query results to incorporate data changes (e.g. end depth values). Right click with the mouse on the query in the GeoDin object manager and choose **Refresh** from the pop-up menu. The object list will be rebuilt.

### Duplicate query

With the method **"Duplicate query"** you may copy a query made in one project to use in another. To copy a query to all projects, select the **All** button. The query will be copied to all selected projects in the database. If you have used the project identifier (PRJ\_ID data field) in your query in the condition, display or alternative SQL command, it will be automatically adjusted to the other project identifier when copying the query, so the duplicated query does not need to be corrected in the target project.

### Delete query

This method deletes the query definition. You **do not** delete the objects contained in the query results, only the condition producing these results.

### Group objects

In some situations the objects of a database cannot be properly queried. This may be due to incomplete or missing database entries, or that other criteria, not stored in the database, are important.

For such cases GeoDin offers the possibility to create **Groups** of objects that do not conform to any specific conditions.

The method **"New Group"** is available at the objects and measurement points nodes.

Enter a name for the group that will be used in the GeoDin object manager for identification.

After creating a group, the list is at first empty. To fill the list, select an object in the GeoDin object manager, keep the left-hand mouse button pressed, drag and drop it onto the open dialogue window. You may select individual objects or groups in the GeoDin object manager. You may delete and change the order of objects in a group by using the appropriate buttons in the <**Group**> dialogue window.

Objects are inserted into the list with the designation they have at the time of insertion. This text cannot be changed later and will not be updated even if the data situation changes. In contrast, for queries, the label texts are updated and objects that no longer meet the condition are removed from the list when the query is updated. Therefore, there may be objects in a group whose labels are no longer correct after a change in the object's data. This example shows that groups have a number of disadvantages compared to queries and should therefore only be used if a query is really not possible for the reasons mentioned at the beginning or if you expect that the data of these objects will no longer change.

Queries and groups are shown with different colored pyramids in the GeoDin object manager - yellow for queries and blue for groups.

Visibility can be controlled for users and groups in advanced settings in user management.

### Delete object group

This method deletes the group definition, **not** the objects contained within the group.

### Import groups

Use the **"Import Group"** method to search for GeoDin objects in a GeoDin database based on external data ("import file") and group the found objects together.

Depending on the node at which the method is started, GeoDin objects are searched in the entire database ("Objects" node one level below the database) or only in one project ("Objects" node one level below the project).

The following steps are required:

**Data source**

Here you open the file (e.g. Excel file, database) that contains the information on the GeoDin objects that are to be searched for (and later grouped) in the database.

**Object link**

Here you assign the GeoDin objects of the database to the specifications in the data source. This step initiates the selection of the objects to be grouped.

[Import](../../data-collection/import.md)

Make the settings for comparison control here. The preview shows which GeoDin objects are found in the database using the information in the import file and which GeoDin objects are not mentioned in the import file. Start the group creation here.

**Save and load configuration**

All group import settings can be saved in a configuration file. The configuration file allows a quick re-execution of a group creation at a later time, if the data basis is similar or equal.

### Data source

Open the file that contains the information about the GeoDin objects to be searched (and later grouped) in the database. The following file formats are supported:

1. MS Excel
2. MS Access
3. dBASE
4. Text files
5. CSV files

After selecting the file, specify the data source and select a spreadsheet (Excel), a table (Access, dBase) or a column separator (CSV, text file).

The search data is displayed in the preview. For MS Excel or text files, you can also specify whether the first row contains column captions. The date format used in these files can also be specified. GeoDin takes this setting into account when later converting dates.

Use this button to remove selected records from the preview if you do not want them to be included in the search (the records will only be removed in this preview, the source file remains unchanged).

### Object link

In this step, you assign the data records in your import file to the GeoDin objects in your database. The assignment is based on matching contents between selected master data of GeoDin objects and the data records in the import file.

**Example**

The import file contains a column with a selection of drill hole names. These boreholes are to be grouped in GeoDin. For the assignment, you must assign the column from the import file to the LONGNAME field of the GeoDin master data table. The search for the GeoDin objects to be grouped is now performed by comparing the drill hole names. If you specify several contents for the object assignment (e.g. the drill hole name, the drill hole location, etc.), only those GeoDin objects in the database for which all fields match are selected for grouping.

**Tables**:

Select the master data table from the database that is to serve as the basis for a master data comparison between the import file and GeoDin objects.

To assign the fields to be referenced, drag and drop the individual entries from the "Tables:" and "Data source:" lists to the corresponding field on the other list. Alternatively, you can select the two fields and double-click on one of them to make the assignment. In the case of column names in the import file that are identical to the column names in the master data table of the database, you can assign these matching entries automatically using the switch \<Automatic assignment>.

The assignments made are transferred to the table "Assignments:". At the same time, the assigned entries are removed from the "Tables:" and "Data source:" lists so that only those entries remain that have not yet been assigned.

With the two input fields below the lists the contents of the lists can be filtered. If a term is entered, only those entries are displayed in the lists which contain this term. If you empty the input field, all entries are displayed again.

Invalid assignments are highlighted in color in the table. These occur when you change the data source after you have made the assignment. Remove these entries using the button\
.

### Import

Make the last settings for the group creation and see a preview of the status of the assignments. Then start creating a new group.

**Comparison options**\
If you check the box _\[Case sensitive]_, column names of the import file and those of the master data table will only be assigned if the spellings also match with regard to case sensitivity.

**Preview**\
The preview window provides an overview of the assignments performed. There are three types of results:

_A GeoDin object was found_

Exactly one GeoDin object could be found in the database for the entry to be searched for.

_Several GeoDin objects were found_

Several GeoDin objects were found in the database for the entry to be searched for. This means that the contents of your import file are not unique. You may need to include more data fields in the comparison to find the correct GeoDin objects.

_No GeoDin object was found_

There is no GeoDin object in the database with information that matches the search term. Check the assignment of the data fields and the contents of the import file.

**Filter for the preview**\
You can filter and sort the assignments displayed in the preview. To do this, click on the column header in the required column.\
"**Use the Filter for preview:"** drop-down box to display only one of the three types of results (see above) in the preview window.

**Execute import**\
With a mouse click on the button \*\* Execute Import\*\* all successfully assigned GeoDin objects are combined in a new group in the GeoDin Object Manager. Under the heading "Execution" you can define a name for the new group in the editing window. By default, the name of the import file is pre-entered here.\
After execution, a log is displayed which you can save using the corresponding button. If you want to create further groups, switch back to **Data Source**.

### User management

The visibility/usability of various methods and functions can be restricted via the user administration.

By default, the option _"All"_ is activated - i.e. no restriction.

Via the option User groups, the functionality can be explicitly released for certain _groups or individual users_.

This is used, for example, for methods, system databases or queries.

The creation of users and groups is described in the chapter on **User settings**.

### Field mapping

This help chapter is not available in the current language. You can update the GeoDin help files with the \<Online update> function. For this, an internet connection is necessary.

Benutzerdefiniertem SQL können Strukturinformationen angefügt werden. Somit sind dann für Zahlenfelder Dezimalstellenformatierungen oder Einheitenumrechnungen möglich oder für Textfelder Wörterbuchübersetzungen.

Für die Feldzuordnung wird ein Ergebnisfeld einem Feld aus der GeoDin-Struktur zugeordnet.

**Beispiel:**

select $Schema$GeoDin\_LOC\_LOCE2LAYER.\* from $Schema$GeoDin\_LOC\_LOCE2LAYER

Zuordnung:

Datenbank Tabellenstruktur

GeoDin\_LOC\_LOC\_E2LAYER.SECSTYPE E2LAYER.SECSTYPE
