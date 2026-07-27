---
description: Fixes for GeoDin database connection problems - locked Access databases, moved files, long paths, and safely handing data to colleagues or support.
---

# Database connection problems

Symptom-first fixes for problems opening or working with GeoDin databases.
If your problem is not listed, capture a [SQL protocol](../troubleshooting.md)
and contact [support](../get-support.md).

## "Operation must use an updatable query"

<!-- src: support/updatable-query#fix -->

The Microsoft Access database is locked against changes. Check that:

* No other user has the database open exclusively.
* You have not opened the database read-only yourself.

If neither applies, close the database in GeoDin, then look in the database
file's folder for a leftover `.ldb` or `.laccdb` lock file with the same name
as the database, and delete it (only if no other user still has the database
open). If the problem persists, open the database directly in Microsoft Access
and run **File** > **Info** > **Compact and repair** - make a backup copy
first. If none of this helps, contact [support](../get-support.md) and mention
which steps you already tried.

## The database could not be opened - Microsoft Access Database Engine missing

<!-- src: support/access-database-engine#fix -->

When opening a Microsoft Access database in the `.accdb` format, GeoDin shows
this error if Microsoft Access 2007 (or later) is not installed:

> The database 'XYZ' could not be opened. Verify that the following drivers
> are installed: Microsoft Access Database Engine 64-Bit.

The cause is that the Microsoft Access Database Engine driver itself is not
installed. Install the **Microsoft Access Database Engine 2016
Redistributable** from Microsoft's download page. The required bitness
depends on your GeoDin version: **up to GeoDin 9.0** the driver must be the
**32-bit** version, and **from GeoDin 9.5 onwards** the **64-bit** version is
required. If you are unsure which to install, check with your system
administrator.

## Access database asks for a user name and password

<!-- src: support/access-db-not-opened#fix -->

If GeoDin prompts for credentials when opening an Access database, the database
file has usually been moved or renamed, or a network folder connection was
lost. Select the database and start the **Edit database connection** method.
Under **Use existing database**, click the folder icon, navigate to the
database file, select it with **Open**, and confirm with **OK**. Newer GeoDin
versions detect the missing file and point you to this method automatically.

## Database or exchange file will not open from a long network path

<!-- src: help/H0000006027#project-can-not-be-opened -->

File access is sensitive to long paths (roughly over 64 characters) and to
spaces or special characters in folder names. If a database, project, or
exchange file fails to open from a deep network location, copy it to a short
local path such as `C:\Temp` and open it from there.

## Handing a project or database to a colleague

<!-- src: help/H0000000097#transfer-data -->

A database connection can hold more projects than you intend to share. To pass
on exactly one project: use **Export data** (produces a zip including layout
and configuration files), or copy the project into a new, empty Access
database with **Copy project** and share that file. The recipient creates a
database connection to the received file on their own PC.

## Support asked for your configuration

<!-- src: help/H0000006769#transfer-system-files -->

To reproduce a problem, support often needs your configuration rather than
your data. Use the **Transfer system files** method to package `geodin.ini`
and the SYSLIB, CONFIG, QUERYDEF, and SOURCE folders (optionally LAYOUTS) into
one zip, and attach it to your support request.

## Databases without a project structure will not open in GeoDin 10

<!-- src: support/update-geodin-10#uniquelocationid -->

{% hint style="warning" %}
GeoDin 10 no longer supports databases without the classic project structure
(UniqueLocationID databases). If you use such databases, contact
[support](../get-support.md) BEFORE updating to GeoDin 10.
{% endhint %}
