---
description: Configuration File Reference
---

# Configuration File Reference

This configuration file is placed in the GeoDin installation directory and should only be edited by advanced users. <!-- src: help/13/3297 -->

## Databases

**Section \[Database\]: OptionalParameter: DefaultDB**

Status: optional

Standard: not set

Description

Enter the database name that is to be selected by default when the database list is opened.

**Parameter: AutoSave**

Status: optional

Standard: not set = true

Description

Set this parameter to = false, if the automatic saving of object data is to be turned off. The user is then prompted to save manually.

**Parameter: AutoCalcTK25**

Status: optional

Standard: not set = false

Description

Set this parameter to = true, to activate the automatic checking/calculation of the TK25-Number on the basis of the coordinate details entered. This option is only relevant for object types, which include this entry field. Hence it is recommended to keep the standard \"false\" setting to prevent false TK25 values from being calculated (e.g. when you do not use Gauß-Krüger coordinates).

**Parameter: CheckLastLayerDepth**

Status: optional

Standard: not set = false

Description

Checks whether the last layer depth agrees with the entry in the general data and produces a warning when there is a discrepancy.

**Parameter: UserADODataBases**

Status: optional

Standard: not set = true

Description

Determines whether users may add their own ADO database connections. Setting this option to false hides the method.

**Parameter: LocalMgrPath**

Status: (optional only for converting file-based projects older than Version 5.x)

Standard: \\GeoDinDB\\

Description

Standard path (without drive!!) for GeoDin project files.

**Parameter: QueryMesEditCount**

Status: optional

Standard: not defined = 0

Description

This defines whether for the method "Measurement data" a query appears before data is loaded. If this setting is missing or its value = 0, no query appears and the data is loaded immediately (loading can still be interrupted). If the value \>0 is defined this number represents how many measurement points appear in a query before data is loaded.

## System configuration

**GeoDin directory**

For all paths named in the following, the variable **\$%GeoDinROOT\$** can be used as a placeholder name for the GeoDin installation directory. The variable equals the true path name of the GeoDin installation.

\$%GeoDinROOT\$ \--\> C:\\Program files\\GeoDin\\

***Important!:***

With the definition of a ProgramData directory it is possible to redirect the \$%GeoDinROOT\$ directory. This is done automatically for a local installation. With the entry *ProgramData=C:\\ProgramData\\* all changes to \$%GeoDinROOT\$ affect *C:\\ProgramData\\.* Thus GeoDin system files can now be saved without administrator rights (starting from Windows Vista).

If there is no ProgramData entry in the GeoDin.INI the \$%GeoDinROOT\$ returns the directory above the *GeoDin.EXE*.

**Example:**

*\[System\]*

*SysPath=\$%GeoDinROOT\$SYSLIB\\*

*ProgramData=C:\\PROGRAMDATA\\*

\$%GeoDinROOT\$ \--\> *C:\\PROGRAMDATA\\*

*SysPath \--\> C:\\PROGRAMDATA\\SYSLIB\\*

Exceptions to this feature are plugin extensions that should always refer to the directoty above *GeoDin.EXE* .

Using the variable offers some advantages compared to fixed path names:

1.  It is possible to move an entire GeoDin installation to another directory without changing the path names in the GeoDin.ini

2.  In a network, using the variable has further advantages. While it was necessary that all network drives and UNC paths had the same names on all clients, this is no longer necessary. Simply creating a link on the client to the GeoDin.exe is sufficient to start GeoDin.

Example from a sample GeoDin.ini:

*\[System\]*

*SysPath=\$%GeoDinROOT\$SYSLIB\\*

*\[Help\]*

*LocalRTF=\$%GeoDinROOT\$HELP\\RTF\\*

**Section \[System\]** (Required)

**Parameter: SysPath**

Status: Required

Standard: \...\\GeoDin\\SYSLIB\\

Description

Directory for GeoDin system files

**Parameter: SysGLL**

Status: optional

Standard: not set

Description

Complete path for a layout list file (\*.gll). Enter here a name for a layout list file that is valid for all users in a network. Users are not allowed to change the contents of this file (regardless of whether the file is write-protected or not).

The button **Save** in the graphic editing mode is not availble. The layout list is not automatically set in the layout overview, because this is a user-specified setting, which is saved in the personal registry of the user. The user-specified layout lists and layout folders are saved in the registry nodes:

HKEY_CURRENT_USER\\Software\\GeoDin-System\\ChildWindows\\GRFMAIN\\QVLayoutLists

HKEY_CURRENT_USER\\Software\\GeoDin-System\\ChildWindows\\GRFMAIN\\QVLayoutFolders

**Parameter: SysObjChange**

Status: optional

Standard: not set = true

Description

By setting this parameter to = false, no changes may be made to the system configuration. This prevents unwanted alterations made by users to dictionaries etc. After restarting GeoDin you may enter a password, with which the edit protection can be removed - this allows the system administrator to make any necessary (requested) changes.

**Parameter: SysPassword**

Status: optional

Standard: not set, written by GeoDin.

Description

Used when a new password is entered (requires the option SysObjChange=false). The password is encrypted so that users cannot view it.

To use the protection features offered by the parameters SysObjChange and SysPassword, the network rights should be configured so that only the administrator can make changes to the GeoDin.ini file. If the system administrator forgets the password (yes, this does happen!), simply delete the SysPassword entry from the GeoDin.ini and restart GeoDin. You may now enter a new password.

**Parameter: ComServerPlugins**

Status: optional

Standard: not set = false

Description

Determines whether the COM-Server plug-in methods are available when GeoDin is started.

**Parameter: LongHelpShortCut**

Status: optional

Standard: not set = F1

Description

Specifies which function key (**F1** to **F12**) calls the long help. By pressing the **Ctrl** and function key the help is opened in a new window.

**Parameter: ExecutePath**

Status: optional

Standard: not set

Description

Specifies the run directory and overrides the setting linked to the GeoDin icon.\
For example ExecutePath=c:\\windows\\temp\
Used with the GeoDin COM-Server.

**Parameter: AutoLicense**

Status: optional

Standard: not set = False

Description

When using a network version of GeoDin with license management, this paramater can be set to \"true\". If only one license type is available (giving the user effectively no choice between different versions), the first free license is selected automatically. The license dialogue is finished automatically.

**Parameter: UserInterfaceEffects**

Status: optional

Standard: not defined = true

Description

Optical effects such as appear/disappear transitions are used in the GeoDin program user interface. In a terminal server environment this can slow down the display draw times. Setting this parameter = false turns off these effects. <!-- src: help/13/8866 -->
