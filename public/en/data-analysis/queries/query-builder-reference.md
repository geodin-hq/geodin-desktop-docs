---
description: Query Builder Reference
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Query Builder Reference

### Tables

The table list of a subquery contains all the identifiers of tables or views used in the query. These are the names of tables/views in the database that are referenced in the FROM statement. The purpose of this list is to make any necessary schema additions to these names before the SQL statement is executed. As the FROM statement can contain any SQL syntax (including database-specific syntax), GeoDin will not evaluate this string to determine which table names are to be extended with a schema name. Instead, the table list defined here tells GeoDin which names to include in the FROM statement and from the other parts of the query configuration. All names specified here are automatically extended with the schema name from the GeoDin database configuration.

**Example:**

All GeoDin tables are created by the dbo user (database owner) of the database. Therefore, all tables can only be accessed by other users if the schema is listed and the full table name is used:

dbo.GeoDin_LOC_LOCREG

To avoid having to specify the schema replacement for each table, it is possible to store the schema of the GeoDin tables in the database connection configuration **Configuration** for user databases.

***Note:*** *Alias names given in the FROM statement (for example for sub-queries) may not be included here. Otherwise, the schema extension will be added to the alias and the statement will fail.* <!-- src: help/QB/6894 -->

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

If the query is used to create a shape file, you can select here if a SELECT DISTINCT or a \"simple\" SELECT command should be used for the shape export. <!-- src: help/QB/6898 -->

### Condition

This section of the definition of system queries can be used optional to limit the results of the query. This section is comparable to the WHERE statement of a SQL query and is added automatically to the database query. Add in the list one or more entries to edit. <!-- src: help/QB/6920 -->

### Or

**¯¯¯**

This section of system queries can be used to narrow down the results of the query. It is equivalent to the WHERE restriction of an SQL query and will be added automatically to the database query. Possible logical operators are AND and OR relations which can be ordered in two levels. On the first level, connected sub-queries are linked with an OR. The first condition appears with the keyword IF and marks the beginn of the conditions.

In the first step it is therefore defined:

\<\<Condition 1\>\> OR \<\<Condition 2\>\> OR \<\<Condition 3\>\> ...

At the second level, the single conditions are the \"true\" criteria of the query, where AND operators can be used.

**Examples for Conditions**

Example using the coordinates of a measurement point (OR operator):

The query shall find all measurement points where either the X-coordinate (XCOORD) is higher than 100 or the Y-coordinate is higher than 50. The conditions would be:

 IF

 XCOORD \> 100

 OR

 YCOORD \> 50

The example can be extended to demonstrate the search of objects whith their coordinates (OR and AND-Relation). The query finds all measurement points with X-coordinates higher than 100 and less than 200 or with Y-coordinates higher than 50 and less than 100:

 IF

 XCOORD \> 100

 XCOORD \< 200

 OR

 XCOORD \> 50

 YCOORD \< 100

If the conditions for both the X-Coordinates and the Y-Coordinates must match, the conditions are entered in the second level (AND) of the query:

 IF

 XCOORD \> 100

 XCOORD \< 200

 YCOORD \> 50

 YCOORD \< 100 <!-- src: help/QB/6922 -->

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

You can use \$%SYSDATE\$ as placeholder for the date parameter, to select the current date as default value. Also mathematical terms with the macro \$%SYSDATE\$ are possible, e.g. \$%SYSDATE\$-7 to select the same day one week ago. <!-- src: help/QB/6926 -->

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

When using a text macro an additional macro must be defined that is used when the macro is refreshed in the GOM. This occurs whenever general data is edited and saved. At this time the object loaded is used to resolve the macro. The initial query nor the data record that provides the entry in the GOM, since this is not necessary and would only unnecessarily use memory. The macro for the update must be created as in a template with field references to the object. Usually the preceeding table names are omitted. <!-- src: help/QB/6934 -->

### Sorting fields

Here additional data fields can be selected as additional sorting criteria for the query results (i.e. independent from the displayed fields). A sorting field is defined by using \<tablename\>.\<columnname\>. An ORDER BY command is automatically added to the SQL statement when using the sorting fields. Additionally you can define, if the sorting is used for execution in the object manager or in a layout. <!-- src: help/QB/6951 -->

### Result fields

Result fields are added to the data field list of the SELECT statement and define the structure of the result data. A result field is defined by \<tablename\>.\<columname\>. <!-- src: help/QB/6958 -->

### Sub-query

A sub-query is a independent query on the database (a SQL statement), which gives a quantity of results. The SQL statement is not defined as a full statement, but through a number of single definitions. In separate input fields, certain fragments of the query are defined, which are combined to a full SQL-statement by GeoDin. The reason for this is a number of variable parts of the SQL-statement, for example the field list in SELECT, which will be created in GeoDin according to the designated usage. This is the only way to achieve an optimised (purpose-oriented) query in the database, which differs greatly, for example, when executing the query in the GeoDin object manager from executing the same query for data retrieval in a layout.

**Name**

Here, a name for the sub-query can be entered.

**Template description**

Enter here a short description of the query. The description is shown in the query assistant, if the query is defined as a template for user queries (see [System query](sql-and-advanced-options.md))

**Combine conditions with Or/And**

This option controls the combination of single conditions of the query. Depending on the query with several conditions the *\"Or\"* connection in the main node

(Condition 1 and Condition 2) or (Condition 1 and Condition 3)

can better be replaced by an *\"And\"* connection in the main node

(Condition 1) and (Condition 2 or Condition 3).

**SQL-Preview**

Here, the SQL command is displayed based on the current configuration of the query.

**Query type of an object frame query**

When editing a [Object frame query](conditions-and-operators.md) you can choose between defining a structured template or an entire SQL statement. A SQL statement allows all possibilities of data selection (e.g. SELECT COUNT(Datafield) AS GCCOUNT FROM table), but is probably not executable in all database types. Generally a structured template is preferrable. <!-- src: help/QB/6975 -->

### Link (FROM)

The Link is the FROM clause of an SQL statement. The information can be collected from one table or from a set of tables as defined in the FROM condition. If only one table is selected, only the table name has to be entered here. For more complex expressions, the syntax of the FROM clause has to follow the SQL specifications of the used database system.

The definition or structure of the FROM clause may vary between different database systems due to the specifications of the specific SQL syntax.

***Hint:*** *It may be helpful to create the query first in a database program using a graphical query editor. Then, the FROM clause of the statement can be copied here (Example: The query editor in MS Access)* <!-- src: help/QB/6976 -->

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

The columns have to be selected in the format \<tablename\>.\<columnname\> and have to be part of the result of the query. <!-- src: help/QB/6978 -->

### Display field

The display fields define which database fields are used for naming the query results in the GeoDin object manager. This way, the name can be put together from several fields. One commonly used database field is the object name LONGNAME. But you can also use combined names like name and depth.

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

**Data field name**

In this field, the data field to be displayed is defined in the form \<table name\>.\<column name\>.

**Extension text**

The characters entered here are appended to the content of the data field as \"extension text\". For example, the content of a display field such as GeoDin_LOC_LOCREG.ZCOORDE (final depth) can be supplemented with the unit of measurement e.g.: \" m\" or with longer versions, such as \"in m below ground level\".

**Sort criteria**

Select the sorting sequence for this data field. An ORDER BY statement is automatically added to the SQL statement. <!-- src: help/QB/10756 -->

### Portal properties

This help chapter is not available in the current language. You can update the GeoDin help files with the \<Online update\> function. For this, an internet connection is necessary. <!-- src: help/QB/11069 -->

### Website properties

This help chapter is not available in the current language. You can update the GeoDin help files with the \<Online update\> function. For this, an internet connection is necessary.

**Website-Eigenschaften**

Hier kann die Auflösung und das Aktualisierungsintervall sowie eine Hintergrundfarbe für die Website festgelegt werden.

Außerdem kann eine HTML-Vorlage für die Website ausgewählt werden.

**Layout im Cache vorhalten:**

Bei setzen des Hakens wird das Layout für eine bestimmte Zeit im Cache vorhegahlten. Je nach Layout kann dies die Antwortzeit des Servers deutlich verkürzen. <!-- src: help/QB/11387 -->

### Cache settings

This help chapter is not available in the current language. You can update the GeoDin help files with the \<Online update\> function. For this, an internet connection is necessary.

**Cache-Einstellungen**

Hier kann die Anzahl der Minuten eingestellt werden, für die das Layout im Cache vorgehalten werden soll.

Werden für Monitoring-Layouts z. B. die Daten alle fünf Minuten aktualisiert, ist es sinnvoll, das Layout ebenfalls fünf Minuten im Cache zu lassen.

Nach dieser Zeit wird es automatisch entfernt und beim erneuten Abruf mit neuen Daten verbunden. <!-- src: help/QB/11392 -->
