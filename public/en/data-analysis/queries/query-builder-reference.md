---
description: Query Builder Reference - every node of a GeoDin sub-query and system query, from the table list and FROM clause to requirements, display conditions and caching.
---

# Query Builder Reference

The Query Builder defines a GeoDin sub-query as a set of individual node definitions - table list, FROM clause, conditions, result and display fields - which GeoDin combines into a full SQL statement. This page is the reference for each node in that definition: what it configures and the syntax it accepts. Use it when you are building or editing a query and need to know what a specific node does. It also covers system queries - what they are, the QUERYDEF folder, and the system-query nodes (requirements, display conditions, display and presentation options).

***

## Working with system queries

System queries hold the definitions for database queries and are stored in their own files with the extension `.GSQ` (GeoDin System Query). A query definition is normally not specific to one database system, so it can be passed on to other users. Unlike user queries, which belong to a single database or project, system queries are automatically available to all users in every database and project - they never have to be re-created per database.

Three things are typically achieved with them:

* **Define a query once and have it everywhere.** If several databases are regularly asked for similar results, the query does not have to be rebuilt for each one. Defined as a system query, it is added automatically to every database as a new branch in the GeoDin object manager, and the conditions on the query adapt where and how it appears.
* **Extend or restructure the object manager.** The standard object manager structure is defined by GeoDin: objects in one branch, measurement points in another. A system query can change that - for example by showing the samples belonging to a borehole directly beneath that borehole, instead of only in the separate **Measurement points** branch.
* **Provide query templates for less experienced users.** Very complex queries often join many GeoDin tables through link fields such as `PRJ_ID`, `LOCID` and `INVID`, which takes good knowledge of the table structure. The query assistant offers the most common joins, but not every possible one. A system query closes that gap by supplying the join as a ready-made template, so the user only has to supply conditions and display fields.

### The QUERYDEF folder

System queries are stored in the `QUERYDEF` folder of the GeoDin installation, one file per query. The method **New query** creates a new file there under the name you enter.

If a folder structure is created inside `QUERYDEF`, the same structure appears in the GeoDin object manager, which is how a larger collection of queries is given a logical order. GeoDin itself has no method for creating those sub-folders - use Windows Explorer. Query files that are no longer needed are deleted the same way.

After restructuring the folder in Windows Explorer, right-click the **Queries** branch on the System tab and choose **Refresh** to update the object manager view. Restarting GeoDin is not necessary to pick up a new folder structure or new query files.

<!-- src: help/H0000011445#system-queries-overview -->

## Reference: Query Builder nodes

Each subsection below documents one node of the sub-query definition, in the order they appear in the builder.

### Tables

The table list of a subquery contains all the identifiers of tables or views used in the query. These are the names of tables/views in the database that are referenced in the FROM statement. The purpose of this list is to make any necessary schema additions to these names before the SQL statement is executed. As the FROM statement can contain any SQL syntax (including database-specific syntax), GeoDin will not evaluate this string to determine which table names are to be extended with a schema name. Instead, the table list defined here tells GeoDin which names to include in the FROM statement and from the other parts of the query configuration. All names specified here are automatically extended with the schema name from the GeoDin database configuration.

**Example:**

All GeoDin tables are created by the dbo user (database owner) of the database. Therefore, all tables can only be accessed by other users if the schema is listed and the full table name is used:

dbo.GeoDin_LOC_LOCREG

To avoid having to specify the schema replacement for each table, it is possible to store the schema of the GeoDin tables in the database connection configuration **Configuration** for user databases.

***Note:*** *Alias names given in the FROM statement (for example for sub-queries) may not be included here. Otherwise, the schema extension will be added to the alias and the statement will fail.*

### Project-level system queries (GeoDin 10 and later)

Since the GeoDin 10 project-structure change, a system query that is to be displayed at project level must include the object registration table `GEODIN_LOC_LOCREG` - add it to the table list and to the FROM clause of the query.

{% hint style="warning" %}
If the object registration table is omitted from a project-level system query, running the query returns one of the following errors, depending on the database system:

* Microsoft Access database: `[FireDAC][...] Too few parameters. Expected 1.`
* Client/server database: `[FireDAC][...] Invalid column name 'ProjectGUID'.`
{% endhint %}

<!-- src: support/system-queries-project-level#geodin-loc-locreg -->

### Configuration

In the configuration the settings for the query are made, based on the data basis used for the query.

The configuration covers:

1.  the FROM statement at the [Link (FROM)](conditions-and-operators.md) node for the SQL command

2.  and other criteria [Restricting fields](conditions-and-operators.md) for the automatic restriction (WHERE) of the query, depending on the position of the query in the GeoDin object manager

3.  Definition of the information required for processing the query result [Result fields](conditions-and-operators.md)

At the entry ***Sub-queries*** it is possible to view the query by clicking on \"SQL Preview\" at the desired sub-query.

***Note:*** *The SQL statement displayed in the preview can be tested directly in the database after replacing the Project ID (\$PRJID), the Location-ID (\$LOCID) or the INVID (\$INVID)*

**Additonal options:**

1.  *-*DISTINCT by query execution in the GeoDin Object Manager-

Define if a SELECT DISTINCT \... command should be executed in the query or only a SELECT command. In both cases GeoDin displays an object that is available more than once in a query only once in the object manager. This is done by a check of the object ID\'s. A general DISTINCT is not used as default, because the usage of that command depends on the query design. If you are sure your SQL command allows a distinct, this option can accelerate the query significantly.

1.  -Ignore error-

If the query leads to an error as default an error message is displayed. You can hide the error message by using this option. If executing the query leads to an error this way the error is ignored and the query is not inserted in the object manager. You can use this option, if you want to create a query, which can not be used in any type of database and you want to ignore this error. Recommended is that instead of using this option the configuration of the **Requirements** are used for a query, because it is always faster to control the requirements than to run into an error in a query.

1.  -Use DISTINCT for shape export-

If the query is used to create a shape file, you can select here if a SELECT DISTINCT or a \"simple\" SELECT command should be used for the shape export.

### Condition

This section of the definition of system queries can be used optional to limit the results of the query. This section is comparable to the WHERE statement of a SQL query and is added automatically to the database query. Add in the list one or more entries to edit.

### Or

**¯¯¯**

This section of system queries can be used to narrow down the results of the query. It is equivalent to the WHERE restriction of an SQL query and will be added automatically to the database query. Possible logical operators are AND and OR relations which can be ordered in two levels. On the first level, connected sub-queries are linked with an OR. The first condition appears with the keyword IF and marks the beginn of the conditions.

In the first step it is therefore defined:

\<\<Condition 1\>\> OR \<\<Condition 2\>\> OR \<\<Condition 3\>\> ...

At the second level, the single conditions are the \"true\" criteria of the query, where AND operators can be used.

**Examples for Conditions**

Example using the coordinates of a measurement point (OR operator):

The query shall find all measurement points where either the X-coordinate (XCOORD) is higher than 100 or the Y-coordinate is higher than 50. The conditions would be:

```
 IF

 XCOORD \> 100

 OR

 YCOORD \> 50
```

The example can be extended to demonstrate the search of objects whith their coordinates (OR and AND-Relation). The query finds all measurement points with X-coordinates higher than 100 and less than 200 or with Y-coordinates higher than 50 and less than 100:

```
 IF

 XCOORD \> 100

 XCOORD \< 200

 OR

 XCOORD \> 50

 YCOORD \< 100
```

If the conditions for both the X-Coordinates and the Y-Coordinates must match, the conditions are entered in the second level (AND) of the query:

```
 IF

 XCOORD \> 100

 XCOORD \< 200

 YCOORD \> 50

 YCOORD \< 100
```

### And

At the level of conditions, different search conditions have to be defined. Here, the conditions are defined either as single conditions, or as a combination with logical AND. It is possible to combine groups of conditions with each other by a logical [Or](conditions-and-operators.md).

**Configuring the Conditions**

In the field DATABASE FIELD NAME, the field name of the data field has to be defined which shall be used for the query.

The field name is given in the format \<table_name\>.\<field_name\>.

In the \"condition\" field, the desired condition can either be defined directly, or a parameterized condition can be used. If defined directly, the CONDITION is expressed as a logical expression with a relational operator and a value.

Possible relational operators:

\> greater than

=\> greater than or equal to

\< less than

\<= less than or equal

= equal to

\<\> not equal to

is null data field is empty

is not null data field is not empty

like \'A%\' Contents in high commas using wildcards in the character string: \_ one character or % several characters

in (\'T1\',\'T2\') list of values in round brackets, values separated by commas, textfields have values in high commas,

numerical field have values using decimal point (not a comma) and not in high commas

**Conditions** that query a **date** : please check your database for the correct formatting:

The following standard formats are available:

Access #MM/DD/YYYY#

Oracle \'DD-MM-YYYY\'

MySQL, MS SQL, PostgreSQL \'DD.MM.YYYY\'

**Conditions** that query a **timestamp(Date/Time)**: please use the following standard formats:

Access: #MM/DD/YYYY HH:MM:SS#

Oracle: TO_DATE(\'*31.05.2015 12:24:36\'*,\'dd.mm.yyyy hh24:mi:ss\')

MySQL, MS SQL, PostgreSQL: 'DD.MM.YYYY HH:MM:SS'

If a parameterized query is used, a window is opened when the query is executed for the first time. All Conditions marked as parameterized can be entered and changed in this window.

***Note:*** *The use of a paramaterized condition is indicated by the characters \":?\". Optionally, a comparison operator can be specified before this character string. In this case, this operator is pre-filled when the parameters are queried.*

If a parameterized query is used, the different settings neccessary become available.

The parameter can be marked as required - if it is not required, the parameter will be ignored when empty.

It is also possible to enter a default value and to use an intervall.

The option -Use interval- produces a special type of condition. If you want to select objects in a defined area around a selected coordinate, the following condition is possible:

1.  Data field name: GeoDin_LOC_LOCREG.XCOORD

2.  Condition: \>=:?

3.  x use interval

4.  100

When the query is executed an input window is displayed showing the selected X coordinate (Easting), the distance (default 100) to be entered. The following WHERE condition is added automatically to the SQL statement:

\... (GeoDin_LOC_LOCREG.XCOORD \>= C*oordinate*-100) and (GeoDin_LOC_LOCREG.XCOORD \<= C*oordinate+*100)

If you select a second condition for the data field GeoDin_LOC_LOCREG.YCOORD (Northing), objects can be selected from a given rectangle around the selected location by entering 3 numbers instead of entering the corners of the rectangle.

**Using the parameter \$%SYSDATE\$**

You can use \$%SYSDATE\$ as placeholder for the date parameter, to select the current date as default value. Also mathematical terms with the macro \$%SYSDATE\$ are possible, e.g. \$%SYSDATE\$-7 to select the same day one week ago.

### View fields

The display fields define which database fields from an object are to be shown in the GeoDin Object Manager (GOM).

The objects and the contents that are displayed are actually the results of a query - usually this is the name of an object or \"LONGNAME\".

However it is possible to combine fields for a more detailed display, such as name and type of borehole.

You can organize which and how many fields are to be displayed [Display field](conditions-and-operators.md).

There are optional formatting instructions to display the text.

In the entry field you can define the macro that is applied to the results of the SQL query.

If no macro is defined, the data records will be shown as they exist in the database.

This means for instance that codes will not be re-translated back to full text, but shown as codes.

The macro can only contain references to defined display fields. Hence the macro does not replace display fields but complements and formats them.

SELECT DISTINCT GeoDin_LOC_LOCREG.LOCID, GeoDin_LOC_ZMGENINF.SHORTNAME, GeoDin_LOC\_ ZMGENINF.PURPOSE \....

The text macros are implemented in exactly the same way as in a template, hence the range of formatting options available.

**Example:**

\$GeoDin_LOC\_ ZMGENINF. SHORTNAME \$ (\$GeoDin_LOC_ZMGENINF.PURPOSE \$)

When using a text macro an additional macro must be defined that is used when the macro is refreshed in the GOM. This occurs whenever general data is edited and saved. At this time the object loaded is used to resolve the macro. The initial query nor the data record that provides the entry in the GOM, since this is not necessary and would only unnecessarily use memory. The macro for the update must be created as in a template with field references to the object. Usually the preceeding table names are omitted.

### Sorting fields

Here additional data fields can be selected as additional sorting criteria for the query results (i.e. independent from the displayed fields). A sorting field is defined by using \<tablename\>.\<columnname\>. An ORDER BY command is automatically added to the SQL statement when using the sorting fields. Additionally you can define, if the sorting is used for execution in the object manager or in a layout.

### Result fields

Result fields are added to the data field list of the SELECT statement and define the structure of the result data. A result field is defined by \<tablename\>.\<columname\>.

**What the result fields have to contain**

Which identifiers and coordinates GeoDin needs from the result depends on what the query is used for. The same query is executed differently when

1. its result node is added to the object manager,
2. it is used for a shape export or in the ArcGIS extension, or
3. it supplies data for a report.

For the first case the result fields only have to carry the GeoDin object IDs; the coordinates are not relevant. Many GIS operations, by contrast, use the data fields for the X and Y coordinate (`XCOORD` and `YCOORD`) together with a data field holding a unique object ID - usually the `INVID` of an object. Because a query may address any table in the database, including non-GeoDin tables, that object ID can come from another table and does not have to be the `INVID`.

Which identifier fields are expected also depends on the type of result object, which is selected in the system query:

| Result object type | Expected identifier fields |
|---|---|
| Object (red) | a field with the project ID (`PRJ_ID`) and a field with the object ID (`LOCID`) |
| Measurement point (blue) | a field with the measurement point ID (`INVID`) |

The original columns can carry different names. As with the other identification columns, they are given in the format `<tablename>.<fieldname>` and have to be available as a column in the result of the query.

{% hint style="success" %}
Where possible, fill in all the fields. A result definition that carries both the identifiers and the coordinates lets the same query serve every purpose - object manager, shape and ArcGIS export, and reports - instead of only one.
{% endhint %}

<!-- src: help/H0000006977#result-field-purposes -->

### Sub-query

A sub-query is a independent query on the database (a SQL statement), which gives a quantity of results. The SQL statement is not defined as a full statement, but through a number of single definitions. In separate input fields, certain fragments of the query are defined, which are combined to a full SQL-statement by GeoDin. The reason for this is a number of variable parts of the SQL-statement, for example the field list in SELECT, which will be created in GeoDin according to the designated usage. This is the only way to achieve an optimised (purpose-oriented) query in the database, which differs greatly, for example, when executing the query in the GeoDin object manager from executing the same query for data retrieval in a layout.

**Name**

Here, a name for the sub-query can be entered.

**Template description**

Enter here a short description of the query. The description is shown in the query assistant, if the query is defined as a template for user queries (see [Working with system queries](#working-with-system-queries))

**Combine conditions with Or/And**

This option controls the combination of single conditions of the query. Depending on the query with several conditions the *\"Or\"* connection in the main node

(Condition 1 and Condition 2) or (Condition 1 and Condition 3)

can better be replaced by an *\"And\"* connection in the main node

(Condition 1) and (Condition 2 or Condition 3).

**SQL-Preview**

Here, the SQL command is displayed based on the current configuration of the query.

**Query type of an object frame query**

When editing an [object frame query](../../data-visualization/layouts/object-frames.md#object-frame-queries) you can choose between defining a structured template or an entire SQL statement. A SQL statement allows all possibilities of data selection (e.g. SELECT COUNT(Datafield) AS GCCOUNT FROM table), but is probably not executable in all database types. Generally a structured template is preferrable.

### Link (FROM)

The Link is the FROM clause of an SQL statement. The information can be collected from one table or from a set of tables as defined in the FROM condition. If only one table is selected, only the table name has to be entered here. For more complex expressions, the syntax of the FROM clause has to follow the SQL specifications of the used database system.

The definition or structure of the FROM clause may vary between different database systems due to the specifications of the specific SQL syntax.

***Hint:*** *It may be helpful to create the query first in a database program using a graphical query editor. Then, the FROM clause of the statement can be copied here (Example: The query editor in MS Access)*

### Restricting fields

The restriction fields are used to define data fields which GeoDin automatically adds to the WHERE condition of the query depending on the position of the query in the object manager in order to restrict the result set according to the object manager structure.

The base are the [Display conditions](conditions-and-operators.md) of the query.

**Database, Database queries**

The queries are not further restricted. The restricting fields can remain empty.

**Project, Project queries**

The queries are restricted using the project ID. The restricting field PRJ_ID has to be filled.

**Object**

The query is restricted by using the project ID and the object ID. The restricting fields PRJ_ID and LOCID have to be filled.

**Measurement point**

The query is restricted by using the measurement point ID. The restricting field INVID has to be filled.

The columns have to be selected in the format \<tablename\>.\<columnname\> and have to be part of the result of the query.

### Display field

The display fields define which database fields are used for naming the query results in the GeoDin object manager. This way, the name can be put together from several fields. One commonly used database field is the object name LONGNAME. But you can also use combined names like name and depth.

```
 Database

 DemoDB

 GeoDin Demo

 Objects

 Measurement points

 Project

 Borehole 1

 Borehole 2

 Project 2

 Project 3

 Objects

 Measurement points

 Database
```

**Data field name**

In this field, the data field to be displayed is defined in the form \<table name\>.\<column name\>.

**Extension text**

The characters entered here are appended to the content of the data field as \"extension text\". For example, the content of a display field such as GeoDin_LOC_LOCREG.ZCOORDE (final depth) can be supplemented with the unit of measurement e.g.: \" m\" or with longer versions, such as \"in m below ground level\".

**Sort criteria**

Select the sorting sequence for this data field. An ORDER BY statement is automatically added to the SQL statement.

### Portal properties

The **Portal properties** node holds the settings a query needs when its layout is used as a portal layout. A portal layout is a GeoDin layout that contains at least one element with a portal link, that is, an instruction to call another GeoDin layout. Layouts that call each other build up a whole network of presentations and reports - a portal. Portal layouts can be created and used in any GeoDin module combination; in a GeoDin Portal Server installation they are the linked front end through which the reader navigates the presentations and data in a browser.

A standard graphic offers no portal function, so it has to be prepared first. In edit mode, select the object tree of the graphic - if in doubt, click the white area next to the object frames - open **Extended properties** in the object properties of the graphic and switch on the option **Activate portal function**. A new **Portal properties** branch then appears below the extended properties, and the elements **Variable text** and **Variable image** gain the option of setting up portal links. Setting up the links themselves is described under [Creating site plans](../../data-visualization/site-plans/creating-site-plans.md).

Switching **Activate portal function** off again on an existing portal layout removes the portal properties from all affected elements of the graphic. The settings are not lost, however - not even when the graphic is saved - and can be reactivated later.

**How a called query receives the object ID**

A called layout restricts itself to objects by default. The calling layout (source layout) determines which object ID is passed; the called layout (target layout) resolves it through the [result fields](#result-fields) of its frame query, which declare which column of the result table holds `PRJ_ID`, `LOCID` or `INVID`. `PRJ_ID` and `LOCID` are enough for objects; measurement points require `INVID`. If those assignments are missing, the query cannot be executed and an error message is issued. Defining all of the fields when only some are needed causes no problem.

Internally, passing an object ID always appends a restriction to the statement of the called layout, built from the entries in the result fields. If the statement already has a WHERE clause, the restriction is appended as an AND construct. Beyond the object identifiers, further parameters can be passed to the query in the target layout; they take effect only where matching conditions are defined on that query, and parameters passed without an evaluating condition have no consequence.

A multi-frame layout receives no object IDs at all - there, the first frame query supplies the object identifiers.

If the frame query uses an individual SQL statement instead of a structured query, only `PRJ_ID`, `LOCID` and `INVID` can be passed, and the statement must contain the matching placeholder for the value to be evaluated:

| Placeholder | Passes |
|---|---|
| `%INVID` | the `INVID` (measurement point identifier) |
| `%PRJID` | the `PRJ_ID` (project identifier) |
| `%LOCID` | the `LOCID` (object number) |

<!-- src: help/H0000011069#portal-properties -->

### Website properties

Here you set the resolution, the refresh interval, and a background colour for the website. You can also select an HTML template for the website.

**Keep layout in cache:** when this box is ticked, the layout is kept in the cache for a set time. Depending on the layout, this can noticeably shorten the server's response time.

### Cache settings

Here you set the number of minutes for which the layout is kept in the cache.

If the data for monitoring layouts is refreshed every five minutes, for example, it makes sense to keep the layout in the cache for five minutes as well. After this time it is removed automatically and reconnected with fresh data on the next request.

## Reference: System query nodes

A system query carries a second group of nodes alongside the sub-query definition above. They do not shape the SQL statement - they decide whether the query runs against a given database at all, where its results appear in the GeoDin object manager, and how those results are displayed.

### Requirements

The **Requirements** node defines the basic conditions under which the system query is executed in a database and added to the object manager. Because a query uses specific database tables, those tables may not exist everywhere: one database may use the object type "General Borehole Log - British Standard" while another uses different object types, so a query on the table `GEODIN_LOC_BSSRCLAS` created for the General Borehole Log leads to an error in the second database.

Enter one condition per line. Each line must be fulfilled (AND); if a single requirement is not matched, the query is ignored for that database. The exceptions are `Username=` and `WorkstationLogin=` lines, which are combined with OR so they may be entered for several different users. Within one line, comma-separated values are alternatives (OR).

| Condition | Checks |
|---|---|
| `LOCTYPE=<short name>` | The named object type is installed in the current database |
| `DATTYPE=<short name>` | The named data type is set up in the current database |
| `ADOConnectionHas=<string>` | The database connection string contains the given character string |
| `Username=<login>` | The database login name of the current user matches |
| `WorkstationLogin=<login>` | The Windows login name of the current user matches |

**Restrict to a specific object type**

The installed object types are checked with the variable `LOCTYPE=`. In the following example, the query is only shown if the object type "General Borehole Log" is used in the current database:

```
LOCTYPE=BSBORLOG
```

The short name of the object type is displayed when the method **New object** is used - take a note of that name to use it here.

If several short names are given separated by commas, GeoDin checks whether at least one of the object types exists (OR):

```
LOCTYPE=LOCTYPE1,LOCTYPE2
```

If two or more lines starting with `LOCTYPE=` are given, GeoDin checks whether all of the object types are present (AND):

```
LOCTYPE=LOCTYPE1
LOCTYPE=LOCTYPE2
```

**Restrict to a specific data type**

The data types set up in the database are checked with the variable `DATTYPE=`. In the following example the query is only displayed if the data type "groundwater chemistry" exists:

```
DATTYPE=WAS
```

The short names of the data types are shown in the properties of a data type on the System tab.

**Restrict to a particular database system**

The variable `ADOConnectionHas=` restricts the query to a specific database system, which is useful for queries that use SQL syntax available only there, such as Oracle syntax. Because a database connection is created from a connection string, the restriction is expressed as a fragment of that string:

```
ADOConnectionHas=MSAcc
```

Here the connection string has to contain the character string `MSAcc`, which is true for a Microsoft Access database with a connection string such as `DriverID=MSAcc;Database=C:\My Data\GeoDin\DB\Access_DB.accdb`, so the query is only shown for Microsoft Access databases.

The same comma and line semantics apply as for `LOCTYPE=`. Several character strings separated by commas are combined with OR:

```
ADOConnectionHas=MSAcc,MSSQL
```

Two or more `ADOConnectionHas=` lines are combined with AND, so all of the strings must be present:

```
ADOConnectionHas=MSAcc
ADOConnectionHas=MSSQL
```

**Restrict to specific users**

System queries can be restricted to named users of the database. `Username=` checks the login name of the user in the database, so a query can be made accessible only to certain people:

```
Username=Smith
```

Because this checks the database login, it is not available for Microsoft Access databases. `Username` conditions are combined with OR, so several users can be listed.

`WorkstationLogin=` checks the Windows login name of the current user instead, and is likewise combined with OR. The query below is only shown when the current Windows user is "Smith" or "Jones":

```
WorkstationLogin=Smith
WorkstationLogin=Jones
```

{% hint style="info" %}
Always declare what a query depends on. For a system query on objects, name an object type that exists in the database; if the query uses the tables of a data type, name that data type as well. Checking the requirements is faster than running into an error, so this is the recommended alternative to the **Ignore error** option in the [Configuration](#configuration) node.
{% endhint %}

<!-- src: help/H0000007802#requirements-conditions -->
<!-- src: help/H0000011463#requirements-syntax -->

### Display conditions

The **Display conditions** node defines where in the GeoDin object manager the query is displayed, and under which conditions it is shown at all.

**Query beneath the object type**

These settings control at which level the query appears:

| Level | Where the query appears |
|---|---|
| **Database** | At the main branch of the database, at the same level as a project |
| **Database query** | Within the **Objects** or **Measurement points** branch that sits at the same level as the projects, depending on the result object type of the query. These branches may already contain user-specific cross-project queries |
| **Project** | In the main branch of a project, at the same level as the branches **Objects** and **Measurement points** |
| **Project queries** | Within the **Objects** or **Measurement points** branch of a project, depending on the result object type - the same place as **All objects** and the branches of the installed object types |
| **Object** | As a sub-branch of a single object (red), usually representing a dependency on other objects |
| **Measurement point** | As a sub-branch of a single measurement point (blue), likewise representing a dependency structurally |

**Object type limitations**

For queries that are inserted as new branches below an object or measurement point, this field limits the object types the branch may be inserted under. Suppose a query is to list all samples of a borehole below that borehole. The [Requirements](#requirements) already state that the query is only for databases containing "General Borehole Log" boreholes (`LOCTYPE=BSBORLOG`). If the database also holds other objects - which have no General Borehole Log sample table and would return nothing - the query branch should still not be offered on them. Entering

```
LOCTYPE=BSBORLOG
```

restricts the query to objects of that type, so it is only shown at the "General Borehole Log" branch. The multi-line input field can hold several `LOCTYPE=` entries; the query is then valid for all of the object types listed.

**Insert query only when results are present**

This option controls whether the query is always visible in the object manager or only when it returns a result. The query is executed first, and if the result set is empty the query branch (yellow pyramid) is not added. This avoids empty branches in the object manager.

{% hint style="warning" %}
Switch this option on only after the query has been checked for syntax errors and runs without error in the object manager. A query that contains an error returns no results, so with this option active it disappears from the object manager even though its display conditions are met - which makes the error hard to find.
{% endhint %}

**Sorting order in GeoDin object manager**

Queries are displayed in alphabetical order by default. Entering a number here sets an explicit position; use different numbers on different system queries to order them relative to each other.

<!-- src: help/H0000007806#display-condition-levels -->
<!-- src: help/H0000011467#display-condition-placement -->

### Display options

The **Display options** node sets how the query results are displayed and which methods are available on them in the GeoDin object manager.

**Allow expanding of result child nodes in the GeoDin Object Manager**

This option controls whether another existing system query is added as a new child node on a result object. Consider two object types with a relation between them, "Employee" and "Borehole": one system query lists all boreholes an employee has worked on, and a second system query below the borehole displays the employee who worked on it. With the option active, expanding the result would produce an endless structure - employee, borehole, employee, borehole, and so on. With the option deactivated the structure ends at the boreholes.

**Extended object view for result child nodes**

With this option the results of the query are tested for measurement values and linked documents, which leads to a particular type of display. On very large or slow databases that test takes time, so the option can be deactivated there.

**Available methods**

Here you define which methods are available on the node of the query itself or on the result nodes (object or measurement point). An empty field means GeoDin allows all standard methods on the node. Entering a comma-separated list of method IDs limits the node to those methods; each GeoDin method has a unique ID, and the available numbers are listed in the ExecuteMethod section of the [COM API method reference](../../plug-ins-and-tools/com-api/method-reference.md).

For example, entering `2,6` shows only **Edit graphic** and **Site plan** on the node and suppresses methods such as **Cross-section**, which may not be possible for these objects.

<!-- src: help/H0000007808#display-options-node -->
<!-- src: help/H0000011469#available-methods -->

### Presentation options

A query can be used as a layer in the embedded GIS - see [Adding layers](../../maps/adding-layers.md). The **Presentation options** node determines how the result of the query is displayed there. This makes it possible to define a system query that not only tests conditions and supplies results, but already carries its colors, fill patterns and legend settings with it.

{% hint style="info" %}
These settings can become very complex. It is usually easier to build them first in the embedded GIS with the integrated assistant, and then copy them as a text block from the layer properties into the system queries branch.
{% endhint %}

<!-- src: help/H0000007820#presentation-options-node -->

