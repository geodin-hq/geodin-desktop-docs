---
description: >-
  The database backends GeoDin connects to - Client/Server via OLE-DB or
  FireDAC, and desktop MS Access - with per-platform drivers, GeoDin-to-DDL data
  type mappings and example connection strings.
---

# Supported Database Types

GeoDin connects both to file-based desktop databases (MS Access) and to Client/Server backends (Oracle, MySQL, PostgreSQL, Microsoft SQL-Server). This page is the per-backend reference: how the connection is made, the driver each platform needs, the GeoDin-to-DDL data type mapping, and an example connection string. Use it when you are setting up a connection to a specific backend; for the general database concepts and the create-connection method see [Connecting to a Database](connecting-to-a-database.md).

## Client/Server connections

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

***

## Reference: Database platforms

GeoDin automatically recognises the database type and maps its own data types onto the platform-native DDL types. The subsections below give, per platform, the driver requirements, the GeoDin-to-DDL data type mapping and an example connection string.

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

### MySQL

**FireDAC**

GeoDin automatically recognises the database type

| GeoDin Data Type | DDL Name |
| --- | --- |
| String | VARCHAR(n) |
| SmallInt | SMALLINT |
| Integer | INTEGER |
| Float | DOUBLE |
| Date | DATE |
| TimeStamp | DATETIME |
| Memo | LONGTEXT |
| Blob | LONGBLOB |

With FireDAC it is possible to natively access the database without ODBC .TimeStamp values and Array-DML (natively) are supported.

FireDAC using Array-DML is a factor of 8 to 17 times faster than OLE-DB.

**Connection string:**

FireDACConnection=DriverID=MySQL;Server=192.168.49.249;Database=Test;User\_Name=\*;Password=\*

Detailed descriptions on FireDAC connections can be found here:

http://docwiki.embarcadero.com/RADStudio/XE5/en/Database\_Connectivity\_(FireDAC)

### PostGreSQL

**FireDAC**

GeoDin automatically recognises the database type

| GeoDin Data Type | DDL Name |
| --- | --- |
| String | VARCHAR(n) |
| SmallInt | SMALLINT |
| Integer | INTEGER |
| Float | FLOAT |
| Date | DATE |
| TimeStamp | TIMESTAMP |
| Memo | TEXT |
| Blob | BYTEA |

With FireDAC it is possible to natively access the database without ODBC .TimeStamp values and Array-DML (natively) are supported.

FireDAC using Array-DML is a factor of 4 to 10 times faster than OLE-DB.

**Connection string:**

FireDACConnection=DriverID=PG;Server=192.168.49.249;Database=DemoDB;User\_Name=\*;Password=\*

Detailed descriptions on FireDAC connections can be found here:

https://docwiki.embarcadero.com/RADStudio/XE5/en/Database\_Connectivity\_(FireDAC)

### Microsoft SQL-Server

**FireDAC**

GeoDin automatically recognizes the database type.

| GeoDin data type | DDL Name |
| --- | --- |
| String | VARCHAR(n) |
| SmallInt | SMALLINT |
| Integer | INTEGER |
| Float | FLOAT |
| Date | DATETIME |
| TimeStamp | DATETIME |
| Memo | TEXT |
| Blob | IMAGE |

FireDAC is a factor of 1,2 to 1,6 faster than OLE-DB.

**Connection string:**

FireDACConnection=DriverID=MSSQL;Server=192.168.49.250;Database=GeoDin;User\_Name=\*;Password=\*

**Connection string with Windows authentication:**

FireDACConnection=DriverID=MSSQL;Server=192.168.49.250;Database=GeoDin;OSAuthent=Yes

### Oracle Server

**FireDAC**

Automatic recognition of the database type by GeoDin

| GeoDin data type | DDL-Name |
| --- | --- |
| String | VARCHAR(n) |
| SmallInt | SMALLINT |
| Integer | INTEGER |
| Float | FLOAT |
| Date | DATE |
| TimeStamp | DATE |
| Memo | CLOB |
| Blob | BLOB |

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

Object, measurement, report, document, and project-copy reference content formerly duplicated on this page now lives on its subject pages - see [Working with Measurement Data](../measurement-values/working-with-measurement-data.md), [Object Operations Reference](../object-types/object-operations-reference.md), [Working with Projects](../projects/working-with-projects.md), [Report Templates](../../reporting/report-templates.md), and [Managing Documents](../documents/managing-documents.md).

## Related topics

- [Connecting to a Database](connecting-to-a-database.md) - creating connections
- [Managing Database Connections](managing-database-connections.md) - managing, system vs. user databases
