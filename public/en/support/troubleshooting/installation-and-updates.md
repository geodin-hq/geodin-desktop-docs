---
description: Fixes for GeoDin installation and update failures - blocked installers, Program Files write errors, failed online updates, and missing customizations after updating.
---

# Installation and update problems

Symptom-first fixes for problems installing, starting, or updating GeoDin.
For the normal procedures, see [Installation](../../installation/express-installation.md)
and [Updating and upgrading](../updating-and-upgrading.md).

## GeoDin will not install or start (antivirus)

<!-- src: support/install-blocked-antivirus#fix -->

Some antivirus products block the GeoDin installer or `geodin.exe` at startup.
Add an exception for the installation components or the `geodin.exe` path in
your antivirus settings (in Avast, for example: **Settings** > **Components** >
**File System Shield** > **Exceptions**). If your IT department manages the
antivirus, ask them to whitelist the GeoDin installation folder.

## "The file C:\Program... could not be created"

<!-- src: support/program-files-write#fix -->

Windows blocks writing into `C:\Program Files` regardless of your user rights.
Either run GeoDin as administrator (right-click the shortcut > **Run as
administrator**, or set it permanently under the shortcut's **Advanced**
options), or install GeoDin outside the Program Files folder.

## Online update fails or is detected as incomplete

<!-- src: help/H0000007202#update-fails -->

The online update needs write access to the GeoDin folders, a program file
that is not locked by another network user, and access to
`update.geodin.com`. Run GeoDin as administrator for the update, make sure no
other user has GeoDin open from the same network installation, and allow
downloads from `update.geodin.com` in your firewall or proxy. GeoDin detects
an incomplete update on the next start and reopens the update method; if that
fails repeatedly, the downloaded files in the Update folder can be copied into
place manually.

If you see the message "Update incomplete" on every start (up to GeoDin 10.1),
that is a different, known cause - see
[Update incomplete message](update-incomplete-message-until-geodin-10.1.md).

## Custom object types or dictionaries are missing after a version update

<!-- src: help/H0000003295#system-adjustment -->

A new GeoDin version installs into a new directory, so customizations from the
previous installation are not carried over automatically. Open **System** >
**System configuration** and run the system adjustment to re-apply your object
types, dictionaries, and measurement-value structures from the previous
installation.
