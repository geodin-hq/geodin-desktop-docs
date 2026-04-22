---
description: General recommendation for setting up GeoDin in your network environment
---

# Infrastructure and Environment Setup Guide

## 1. System Requirements

**Operating System**: Windows 10/11 64-bit

**Database Clients or DLLs 64-bit** (depending on the database used):

* **MS SQL Server**: SQL Server Native Client or ODBC driver
* **PostgreSQL**: PostgreSQL ODBC driver (psqlODBC)
* **Oracle**: Oracle Instant Client
* Alternatively, the required DLLs can be placed in the GeoDin `BIN` directory
* **MS Access**: Recommended only for single-user environments and smaller projects

## 2. GeoDin Installation

Install GeoDin using the provided setup. Choose between the following options:

* **Client Installation** (standard installation)
* **Network Installation** (installation in a UNC path)

### Network Installation

If GeoDin is used by multiple users within a network, it is recommended to install the software on a shared network drive. This offers the following advantages:

* **Centralized Configuration**: Everyone accesses the same configuration file (e.g., database connections, dictionaries, GeoDin layouts), which avoids inconsistencies.
* **Simplified Maintenance**: Updates and changes only need to be made once.
* **Reduced Administrative Effort:** No separate installation required on each client PC.
* **Controllable Access Rights**: Access can be specifically managed via the network's file system (e.g., NTFS permissions).

***

If you need a recommendation based on your requirements, please contact our [**Client Success Team**](mailto:geodinclientsuccess@fugro.com) to schedule a consultation.

## 3. GeoDin Databases

GeoDin uses **FireDAC** (Fire Data Access Components) to connect to databases. This is a universal framework that enables access to a wide range of databases – locally, remotely, or in the cloud.

#### Examples:

**Microsoft SQL Server**

```ini
DriverID=MSSQL
Server=myServer
Database=myDatabase

For SQL users:
User_Name=myUser
Password=secret

For Windows Authentication:
OSAuthent=Yes

Connection string:
Database=myDatabase;Server=myServer;User_Name=myUser;Password=secret;DriverID=MSSQL
```

**PostgreSQL**

```ini
DriverID=PG 
Server=myServer
Database=myDatabase
Port=5432 
User_Name=myUser
Password=secret

Connection string:
Server=myServer;Database=myDatabase;User_Name=myUser;Password=secret;DriverID=PG
```

**Oracle**

```ini
DriverID=Ora 
Server=myServer
Database=myDatabase
User_Name=myUser
Password=secret

Connection string:
Database=myDatabase;User_Name=myUser;Password=secret;DriverID=Ora
```

**Azure Cloud (Microsoft SQL Server)**

```ini
DriverID=MSSQL 
Server=tcp:myInstance.database.windows.net,1433
Database=myDatabase

For SQL users:
User_Name=myUser 
Password=secret

For Windows Authentication:
OSAuthent=Yes

For encrypted connections:
Encrypt=Yes

Connection string:
Database=myDatabase;User_Name=myUser;Password=secret;Server=tcp:myInstance.database.windows.net,1433;Encrypt=Yes;DriverID=MSSQL
```

***

## System Requirements & Runtime

Onsite is a .NET 8 program and requires the Microsoft .NET 8 runtime.

On first launch, if the .NET 8 runtime is missing, Onsite redirects the user to Microsoft to download and install it.

Tablets or PCs running Windows are the supported platform; no separate mobile OS build.

## Multi-User & Network Deployment

Network installation: one shared installation can serve multiple users — all users share the same layouts and dictionaries.

Custom data types, modified dictionaries, and custom layouts all live in the syslib folder and must be copied or shared between installations manually when delivering to an external client.

When sending data to a client who does not have the same custom dictionaries, the user must also send the `.GSD` dictionary files or the full syslib folder.

Configuration file changes (new dictionaries, new filters, new custom data types) can be shared between users by copying the relevant files (e.g., `Sony_Filter.sys` for import filters) between user syslib folders.

Updates: if a dictionary file's date has changed (due to user edits), GeoDin updates will NOT overwrite it, preserving user changes.

Updates may push new default layouts — if a user edits defaults in place, they risk being overwritten; recommended workflow is to copy defaults to a client-specific folder first.

External users may not have permission to modify system data types; Data Types under System Configuration can be read-only for external users.

## Backend Database Options (Desktop)

Backend database options are Microsoft Access (local or network share) or SQL Server (client-server, requires IT-managed connection string).

Microsoft Access files have a 2 GB size limit; one Access file per database is recommended.

SQL Server client-server databases support multiple concurrent projects with no project-count constraint.

Databases can be stored locally, on a company network, or on a shared network drive.

Database maintenance operations (Close Database, Maintain, Optimize) are available via right-click on the database connection.

Some corporate IT policies prevent the use of Access and require SQL Server only.
