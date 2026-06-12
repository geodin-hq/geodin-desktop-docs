---
description: Connecting to a Database
---

# Connecting to a Database

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

### Create database connection


The method **"Create database connection"** is available under the  ![Databases](../../.gitbook/assets/icons/databases-3.png) **Databases** tab in the GeoDin object manager (GOM):

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

Object, measurement, report, document, and project-copy reference content formerly duplicated on this page now lives on its subject pages — see [Working with Measurement Data](../measurement-values/working-with-measurement-data.md), [Object Operations Reference](../object-types/object-operations-reference.md), [Working with Projects](../projects/working-with-projects.md), [Report Templates](../../reporting/report-templates.md), and [Managing Documents](../documents/managing-documents.md).

## Related topics

- [Managing Database Connections](managing-database-connections.md) — editing, deleting, system vs. user databases, configuration
- [Supported Database Types](supported-database-types.md) — Access, SQL-Server, Oracle, MySQL, PostgreSQL specifics
