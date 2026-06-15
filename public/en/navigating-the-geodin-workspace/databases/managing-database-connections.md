---
description: >-
  Editing, deleting and configuring database connections in the GeoDin object
  manager — the GeoDin.INI configuration keys, object-manager display options,
  and the system-tables reference.
---

# Managing Database Connections

Once a database connection exists, you manage it from the GeoDin object manager (GOM): edit or delete the connection, control how connections and projects are displayed, and tune the underlying `GeoDin.INI` configuration. The deeper system-tables reference at the bottom of the page documents how a GeoDin project's structure is stored.

## Edit a database connection

When the database icon of an database connection is selected in the GeoDin object manager (GOM), the method  ![Edit database connection](../../.gitbook/assets/icons/edit-database-connection.png) **"Edit database connection"** is available.

{% hint style="info" %}
The database has to be closed.
{% endhint %}

Editing a database connection is the same as creating a new connection, with the exception that the current connection is replaced. Both the name of the connection and the Access file or Client/Server database may be changed.

The settings for Access databases are described in the chapter:

[MS Access](supported-database-types.md)

The settings for Client/Server databases are described in the chapter:

[Client/Server](connecting-to-a-database.md)

## Delete a database connection

An existing database connection can be deleted in the GeoDin-Object manager using the method  ![Delete database connection](../../.gitbook/assets/icons/delete-database-connection.png) **"Delete database connection"**.

{% hint style="info" %}
The database must be closed and it must be a user-defined database; system databases can only be deleted on the [System databases](connecting-to-a-database.md).
{% endhint %}

Confirming with **OK** deletes the database connection in the GeoDin object manager. This deletes the connection but not the data, except in the following exceptions outlined below.

For a MS Access database the option of deleting the \*.accdb file of the Access data bank also exists.

{% hint style="danger" %}
**Warning:** If this option is chosen then the \*.accdb file will be deleted WITHOUT ANY possibility of restoring it. Hence use this option CAREFULLY and ONLY when you are certain that you do not need the database.
{% endhint %}

## User databases vs. system databases in centralized deployments

Understanding the distinction between user and system databases is especially important when GeoDin is installed centrally and accessed via Remote Desktop (RDS/Citrix) or a shared network installation.

**User databases** (blue cylinder icon) are stored in the **Windows registry of the individual user's local PC**. In a centralized deployment, this means they are stored in the registry profile of that user on the terminal server. Only that user sees these connections — other users opening GeoDin from the same installation will not see them.

**System databases** (yellow cylinder icon) are defined in the `GeoDin.INI` file, which is shared across the installation. Every user who opens GeoDin from that installation sees the same system databases.

{% hint style="info" %}
In organizations with a central GeoDin installation (e.g. accessed via Remote Desktop), shared project databases should be registered as **system databases** in `GeoDin.INI` by the IT administrator. This ensures all users see the same database connections without each person needing to configure their own connection.
{% endhint %}

{% hint style="warning" %}
If a user creates a user database connection and then another user needs to access the same database, that second user must also create their own connection — or the IT administrator must add the database to `GeoDin.INI` as a system database.
{% endhint %}

## Migrating an Access database to PostgreSQL using Copy All Projects

The **Copy All Projects** method (available at the database level) is the recommended way to migrate an entire Access (`.accdb`) database into a PostgreSQL database. It creates a 1:1 copy of all projects while preserving project IDs and all data.

**Steps:**

1. Connect both the source Access database and the target PostgreSQL database in GeoDin.
2. Select the source database in the Object Manager.
3. Choose the method **Copy All Projects**.
4. Select the target PostgreSQL database as the destination and confirm.

After the copy completes, both databases are closed automatically. Open only one of them going forward — having the same project IDs in two databases simultaneously can cause confusion. Remove or rename the old Access database connection once migration is verified.

***

## Configuration

Display of database connections in theGeoDinobject manager

The default setting for the GeoDin object manager shows:

1. database connections that have been set up as system databases on the system side
2. user-specific database connections; these are stored user-specifically in the Windows registry and are also only visible to the user who has set up this connection

**Preventing user specific connections**

Setting the User ADODataBases=false in the \[Databases] section of the GeoDin.ini file hides both these database connections and the method for creating them. The methods for creating such connections are then also hidden.

```ini
[Database]
UserADODataBases=false
```

**\[Section \[DBCreateList] (optional part)]{.underline}**

This section limits the list of databases, in which new GeoDin projects can be created

**Example:**

```ini
[DBCreateList]
DB1=GIS-Projects
```

Users can create new projects only in database GIS-Projects.

**Definition of database groups**

Databases in the section \[SystemDataBases] can be optionally grouped in the object manager. To do so first create a new section in the configuration file where the groups can be defined:

```ini
[SystemDataBasesGroups]
GOMGroup1=Geotechnics
GOMGroup2=Hydrogeology
```

In the relevant configuration section of a system database (see below) enter the group name using the parameter GOMGroup.

```ini
[GeoDin_ARCHIVE]
....
....
GOMGroup=Geotechnics
```

The groups are shown in the GeoDin object manager as folders and are listed alphabetically directly beneath the _**...**\\**databases**_ node.

## Display options

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

With the option -Extended object view- you select, whether detailed information about the single object should be displayed in the GeoDin object manager. This affects on the one hand the existence of measurement values at the particular place and on the other hand the existence of linked documents. The objects are displayed in this case with different symbols:

Samples

B 02 : S1 (0-1)

Borehole 02

Borehole 03

Here a small blue sphere symbolizes the existence of measurement values, a small document symbol the existence of linked documents.

In case of existing documents this selection leads to a widening of the object display by the single documents:

Borehole 02

Documents

Graphics

Borehole

Well design

Data sequence

Further information to navigation and display of the documents you find in the chapter [Documents](../documents/managing-documents.md).

The display of detailed information to each object in the GeoDin object manager takes more time to open the branches than without display. For slow database connections it can be sensible not to use this option, at least temporarily.

Limiting the projects shown in theGeoDinobject manager

If your project folder contains a high number of projects it may be helpful to limit the number of projects displayed by a condition in the WHERE field in SQL syntax. Every GeoDin project manager contains the following data fields:

| FIELD\_NAME | FIELD\_TYPE | FIELD\_LEN | FIELD\_DEC | Description |
| --- | --- | --- | --- | --- |
| PRJ\_ID | C | 6 | 0 | Project ID |
| PRJ\_NAME | C | 40 | 0 | Project name |
| PRJ\_ALIAS | C | 40 | 0 | Alias (or project) name |
| PRJ\_TYPE | C | 1 | 0 | Project type |
| PRJ\_OPT | N | 10 | 0 | Optional parameter |
| PRJ\_USER | C | 30 | 0 | Name of author |
| PRJ\_DATE | D | 10 | 0 | Date created |
| PRJ\_PATH | C | 78 | 0 | Path or database alias |

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

***

## Reference: System tables

The system tables of a project contain the object type definition, measurement point type definitions and structure descriptions of physical data tables.

The system tables describe the physical data tables and the relationships between the data tables of a GeoDin project.

The system tables consist of the following tables:

### Object type definition

| Table | System table name | Definition |
| --- | --- | --- |
| LOCTYPES | GeoDin\_SYS\_LOCTYPES | Definition of object types |
| LOCTABTY | GeoDin\_SYS\_LOCTABTY | Definition of data tables |
| LOCTABS | GeoDin\_SYS\_LOCTABS | Assignment of data tables to object types |
| LOCSTRS | GeoDin\_SYS\_LOCSTRS | Definition of the structures of the data tables |

### Measuring point type definition

| Table | System table name | Definition |
| --- | --- | --- |
| INVTYPES | GeoDin\_SYS\_INVTYPES | Definition of measuring point |
| INVTABS | GeoDin\_SYS\_INVTABS | Assignment of the data types to the measuring point types |
| DATTYPES | GeoDin\_SYS\_DATTYPES | Definition of data types |
| STFGRP | GeoDin\_SYS\_STFGRP | Definition of the substance groups |
| MESSTRS | GeoDin\_SYS\_MESSTRS | Definition of all measuring point type parameters |

Notes on the data fields described:

**Descriptors**

contain references; the field name ends with \_DESC; except for the descriptors for dictionaries, a descriptor must be exactly 8 characters long and consist of capital letters and numbers.

**Long name**

Each descriptor is assigned a long name with 40 times; the field name ends with \_NAME; this name is displayed in GeoDin selection lists and should therefore uniquely describe the object.

**Options**

Options for an object are stored bit by bit in binary form in a longint parameter; the field name ends with \_OPT; bit 0 is 1; bit 1 is 2; bit 3 is 4 and so on. Each bit has a yes/no function for a characteristic of the object. Several bits can be set at the same time.

### Registration of an object type

Each object type is registered with a data record in the LOC-TYPES table. The following data fields are used for this:

| Field | Description |
| --- | --- |
| GEN\_DESC | Descriptor of the digestion type (exactly 8 characters long, consisting of capital letters) |
| GEN\_NAME | Long name of the object type |
| GEN\_OPT | System options |

GEN\_OPT bit-flags:

| Bit (Value) | Meaning |
| --- | --- |
| 0 (1) | GeoDin system object (cannot be changed) |
| 1 (2) | SEP-compatible object, may be imported |
| 2 (4) | Object type is displayed during 'Create' |
| 3 (8) | Object type requires link to others |
| 4 (16) | Object type allows creation of standard measurement programs |
| 5 (32) | Attribution of graphic elements |
| 6 (64) | Dynamic units |
| 7 (128) | Document description |

### Registration of the tables used for the object type (LOCTABTY)

Each data table type is registered with a data record in the LOCTABTY table.

| Field | Description |
| --- | --- |
| TABE\_TYPE | Table type. Describes the basic usage of a data table. There are mandatory fields prescribed by the system for each type of data table. (See the value table below.) |
| TAB\_OPT | System options (see bit-flag table below) |
| TAB\_TRC | Standard translation code. Reserved by the system until 16. |
| INV\_TYPE | Measuring point type. If the data table defines the measuring point type (e.g. general data table, filter table, sample table), INV\_TYPE determines the measuring point type and thus the type of measurement results that can be linked. |

TABE\_TYPE values:

| Value | Meaning |
| --- | --- |
| value=1 | General data table |
| value=2 | Layer data tables |
| value=3 | Expansion general data |
| value=4 | Borehole development |
| value=5 | Backfilling |
| value=6 | Pipe removal and installation |
| value=7 | Removal of special installations |
| value=8 | Removal measuring point specification |
| value=9 | Sample table |
| value=10 | Sounding registry |
| value=11 | Sounding data |
| value=12 | Link from LOC |
| value=13 | Link from FIL |
| value=14 | Link from PRB |
| value=15 | Expansion flushing |
| value=16 | Undifferentiated data table 1:n to location |
| value=17 | Measured value table - real table in GEOTAB |
| value=18 | Title data SVZ |
| value=19 | Layer data table versions |
| value=20 | SED measured values as probing-temporal for graphic structure like Sonddata |
| value=21 | Sample measured values as probing-temporal for graphic structure like Sonddata |
| value=22 | Data table 1:n for location with SUBID |
| value=23 | Data table 1:n for location with SUBID for LTO\_HNMTab |
| value=24 | Temporary mem table - not on LOCOBJ |
| value=25 | Graphic attributes |
| value=26 | Expansion of title data versions |
| value=27 | Expansion borehole versions |
| value=28 | Expansion backfill versions |
| value=29 | Removal of pipes and installation Versions |
| value=30 | Removal of special installations Versions |
| value=31 | Removal of filter data Versions |
| value=32 | Removal Flushing Versions |
| value=33 | Document description general data |

TAB\_OPT bit-flags:

| Bit (Value) | Meaning |
| --- | --- |
| 0 (1) | Main table (general tables and layer tables); in the case of probing register table, probes are saved as BLOB in the reg table (the SNDDATA field with type B must be defined in the reg table), probing data table remains empty |
| 1 (2) | SEP layer data table |
| 2 (4) | Depth information starts with 0 |
| 3 (8) | Shifts can be printed out in DIN form |
| 4 (16) | Write lock |
| 5 (32) | not visible |
| 6 (64) | Delete lock |
| 7 (128) | Insertion lock |
| 8 (256) | Numbered layer data table with sub-layers |

### Assignment of data tables to object types (LOCTABS)

For each object type, the descriptors (GEN\_DESC) of the data tables to be used for the object type are stored in the LOC-TABS table. This defines, for example, whether the object type contains tables for layer descriptions etc. or not. At the same time, the table descriptor (TAB\_DESC) is used to refer to a structure of a data table, which is defined in the LOCSTRS table.

### Structure of the data tables (LOCSTRS)

The structures of all data tables are stored in the LOCSTRS table. Each data table can contain a maximum of 255 data fields.

| Data fields | Description |
| --- | --- |
| TAB\_DESC | Descriptor of a data table |
| FIELD\_NAME | Physical field name |
| FIELD\_TYPE | Physical field type; C (character), N (numeric), D (date), S (date/time) and M (memo) are permitted |
| FIELD\_LEN | Physical field length (for D:=10) |
| FIELD\_DEC | Number of decimal places for numeric fields |
| FIELD\_CNT | Running counter of the field in a data table |
| FIELD\_OPT | System options (extract) (see bit-flag table below) |
| FIELD\_LONG | Long name for data field |
| FIELD\_DIC | Descriptor of a dictionary for the data field |
| FIELD\_GRP | Descriptor of a dictionary for the data field |
| FIELD\_UNIT | Measurement unit |
| FIELD\_FMT | Output format |
| FIELD\_DEF | Default value |

FIELD\_OPT bit-flags:

| Bit (Value) | Meaning |
| --- | --- |
| 0 (1) | Indexed field |
| 1 (2) | Unique index (unique) only if bit 0 is set |
| 2 (4) | Field is used for signature / for measured values: Offset field |
| 3 (8) | Field is used for signature (secondary) |
| 4 (16) | Field is used for signature (tertiary) |
| 5 (32) | Mandatory field |
| 6 (64) | Long codes are used (WB) |
| 7 (128) | either only an abbreviation (not bit 6) or long entry editable (with bit 6) (bit 6 off): on : only one key is allowed / off : several keys are permitted; (bit 6 on): on : Long texts can be edited / off : Long texts cannot be edited |
| 8 (256) | Field visible (for measured values) |
| 9 (512) | Field editable (for measured values) (vacant: always set) |
| 10 (1024) | Quantity parameters |
| 11 (2048) | Calculated parameter |
| 12 (4096) | Negative values allowed |
| 13 (8192) | Anorganic |
| 14 (16384) | Write lockout |
| 15 (32768) | External field |
| 16 (65536) | Conditional write lockout |
| 17 (131072) | controls WB fields, Dic: Bit 6 on - write combo key (instead of long name) in DB; 131136 for Dic - show plain text, key in DB: 17+6; 131168 same as mandatory field, 17+6+5 Dic: Bit 6 off - ? as plain text (key in DB); 131200 not mandatory only one key 17+7; 131232 as mandatory field only one key 17+7+5 Dic: Bit 6 off - ? as plain text (several keys in DB); 131072 not mandatory multiple keys 17; 131104 mandatory multiple keys 17+5 |
| 18 (262144) | TVQK\_SingleNorm Recoding of the standard text during input |
| 19 (524288) | Field has dynamic units |
| 20 (1048576) | Last FixedCol field |
| 21 (2097152) | Field is automatically transferred to new DS |

Object, measurement, report, document, and project-copy reference content formerly duplicated on this page now lives on its subject pages — see [Working with Measurement Data](../measurement-values/working-with-measurement-data.md), [Object Operations Reference](../object-types/object-operations-reference.md), [Working with Projects](../projects/working-with-projects.md), [Report Templates](../../reporting/report-templates.md), and [Managing Documents](../documents/managing-documents.md).

## Related topics

- [Connecting to a Database](connecting-to-a-database.md) — creating connections
- [Supported Database Types](supported-database-types.md) — per-backend specifics
