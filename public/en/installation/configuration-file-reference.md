---
description: Configuration File Reference
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Configuration File Reference

### GeoDin Installation

To install GeoDin use the supplied Installer. Start the GeoDin-Setup.exe from your GeoDin DVD.

GeoDin Shuttle is a free GeoDin version and can be installed as often as desired without a licence. For the installation of a full licence a USB HASP HL licence key is required. Make sure this licence key and your [GeoDin licence management](activating-your-license.md) are available for the installation. <!-- src: help/13/2999 -->

### Update an existing GeoDin installation

# Updating a GeoDin Version

Use in any case a different directory for the installation of the actual GeoDin version than your previous version of GeoDin and carry out the steps of the installation as described above. Start GeoDin system after the installation and apply the changes on object types, dictionaries, measurement value structures etc., which were carried out in your previous version of GeoDin. For this change to **System** and click on the entry **System configuration**. Start the system adjustment by double-clicking the method icon. <!-- src: help/13/3295 -->

### Network licencing (HASP dongle)

You can install the GeoDin system on a network server. Any PC connected to this network can then start GeoDin. Licensing is controlled via the locally attached USB dongle.

**Installing a network licence**

1\. Install the GeoDin software on the required network drive.

2\. Save the license.gnl in the CONFIG-folder.\
\
3. Link the program icon on your local PC. Please ensure that the working directory is a write-enabled directory for the user. If the program modules are installed on a write-protected directory for the user, the working directory must be TEMP on the local PC.

4\. If using a **network licence key** the search for the GeoDin-HASP in larger networks can be accelerated by saving a textfile (**NetHASP.ini**) in the GeoDin installation folder. Here a list of IP addresses from the NetHASP licence manager is searched via the TCP/IP protocol.

Download: http://download.GeoDin.com/driver/hasp/NETHASP_ini.zip

Example of a NetHASP.ini

\[NH_COMMON\]

NH_TCPIP = Enabled;

\[NH_TCPIP\]

NH_SERVER_ADDR = 192.114.176.65

NH_TCPIP_METHOD = UDP

NH_USE_BROADCAST = Enabled

**Updating a licence file**

A dongle (Network licence key) can only be updated locally, not remotely. This means that the update process must be carried out on the licence server or a local GeoDin PC where the NetHASP can be temporarily attached. To update a NetHASP on a PC without a licence manager (which is the norm for local PC\'s), you must add the parameter \" *-HASPUpdate\"* in the shortcut link after the target path and then start GeoDin. The GeoDin licence manager opens directly, where the update can be carried out, and then closes automatically. Do not forget to re-attach the network key to the licence server and to remove the \" *-HASPUpdate\"* extension to the GeoDin shortcut target path before restarting GeoDin locally. <!-- src: help/13/3296 -->

### GeoDin configuration file

This configuration file is placed in the GeoDin installation directory and should only be edited by advanced users. <!-- src: help/13/3297 -->

### Databases

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

# Defined database connections

The GeoDin.ini file may contain an unlimited number of sections referring to database connections. See chapter **Configuration**. <!-- src: help/13/3568 -->

### Module

Based on the GeoDin licence, you can add several modules to GeoDin 7 the program to your specific needs.

**Key features of the basic module**

• Complete data collection and import functionality

• Queries and groups

• Layer directories

• Tables with free configurable content <!-- src: help/13/7219 -->

### ArcGIS Extension

**GeoDin GIS Extension**

The GeoDin GIS Extension makes it possible to start and control GeoDin from the program ArcGIS by ESRI and to use specific GeoDin functions in ArcGIS.

**Key features**

• Using GeoDin layouts directly, in the map or the info window

• Hotlink methods for data collection and presentation

• Using GeoDin functions in GIS selections <!-- src: help/13/7224 -->

### Premium

**Premium Releases**

With a premium servicing agreement, you have immediate access to newly developed functions for your GeoDin modules. These new functions are pre-released for clients with a servicing agreement, while other clients have to wait and purchase an update to the next version, in which the features are released.

***As of Version 9, there are no more Premium features. New developments are available to all customers with the appropriate release versions.*** <!-- src: help/13/7228 -->

### Maps Modul

**GeoDin Maps**

GeoDin Maps is an integrated Geographic Information System (GIS) in GeoDin itself. It offers you the possibility to display maps showing GeoDin database content as well as external map layer themes and to navigate in the GIS. With the GIS, you have direct access to the displayed objects and the connected information.

**Functions**

• Integration of map layers in GeoDin

• Methods for data collection and display in the map

• GeoDin functionality in GIS selections

• Map layout and priniting <!-- src: help/13/7232 -->

### Logs

**GeoDin Logs**

The GeoDin Logs module extends GeoDin with all the functions you need to display drilling, well design and sounding data. With GeoDin Logs you can create graphical and tabular drilling profiles and plot them in relation to depth-related measured values or series of measured values. These can display borehole logs, well design for piezometers and geothermal drilling, sampling intervals, ground water levels, drilling information or data sequences.

**Key features**

• Borehole logs

• Well design

• CPT and SPT diagrams

• Rock coring, sampling and summary reports

• Automatic alignment of rock core photos

• Display of groundwater levels, rock properties and sample intervals <!-- src: help/13/7236 -->

### Site

**GeoDin Site**

GeoDin Site extends GeoDin with all the functions needed to construct and display profile cross-sections and site plans in GeoDin. All objects are automatically placed according to coordinates and elevation stored in the GeoDin database.

**Key features**

• Cross-sections

• Site plans <!-- src: help/13/7244 -->

### Labs

**GeoDin Labs**

GeoDin Labs allows to manage and display measurement values in GeoDin either as diagrams or as reports. This can be chemical analyses, geotechnical tests or complex summaries.

**Key features**

• Time lines

• XY plots

• Triangle diagrams

• Piper plots

• Durov diagrams

• Formation diagrams

• Pie charts

• Bar charts

• Particle size distribution

• Schoeller diagrams

• List comparisons

• Statistics

• Annual statistics

• Laboratory summaries

• Plausibilty reports

• Sieve analysis

• Hydrometer analysis

• Particle size parameters

• Presieves <!-- src: help/13/7248 -->

### Client/Server

**GeoDin Client/Server**

GeoDin Client/Server makes it possible to use GeoDin in a central client/server database like MS SQL Server, Oracle, PostgreSQL, MySQL and Sybase.

**Key features**

• Using client/cerver Databases <!-- src: help/13/7256 -->

### Layouts

To make GeoDin layouts (templates) and layout lists centrally available for all users, you may use the following optional sections.

For the central organisation of folders with \*.GLO files for all users please use this section:

**\[LayoutFolders\]**

Folder1=\\\\server1\\GeoDin\\Layouts_all_users

Folder2=\$%GeoDinROOT\$\\Additional_Layouts

In the layout overview to make layout lists (\*.GLC or \*.GLL files) centrally available for all users please use this section:

**\[LayoutLists\]**

List1**=**\\\\server1\\GeoDin\\layouts\\User_layout_list.GLC

List2**=**\$%GeoDinROOT\$\\layouts\\Additional_layout_lists.GLL

These entries cannot be removed by individual users, but must be deleted for all users in the GeoDin.INI. <!-- src: help/13/8611 -->

### Network licencing (software licence)

GeoDin can be installed on a network server so that GeoDin can be started from any PC that can access the server. Licensing is controlled via the local USB licence key or by a GeoDin licence file.

Please note that:

1\. Install GeoDin on the required network drive

2\. Create a short-cut to GeoDin on the local PC, making sure that the programs\' working directory is writable by the user. Where GeoDin has to be installed in a directory where the user has not been given these rights, the working directory must point to a local TEMP directory/folder.

3\. The following requirements are necessary to use a GeoDin licence file:

1.  The file must be saved to a directory to which users have access.

2.  GeoDin users need write permission for this file.

3.  On each client PC the LicProtector313.dll must be [Outdated DLL version](../support/troubleshooting.md), for terminal server on the server itself.

4.  Before first user the licence file must be [Activation](activating-your-license.md). <!-- src: help/13/8692 -->

### Outdated DLL version

Message: *\... Please make sure that you have registeed LicProtector313.dll. Please cotact your administrator for further help.*

In this case a licensing file is out-of-date. PLease download the current version of LicProtector313.dll.

The DLL must be registed in the Windows system, for which you can best use the program lpregister313.exe.

***Note:*** *To register the LicProtector313.dll for all users of the computer, open the command line tool as an administrator (on Windows 7 this can be found by clicking the Start button, then the option All Programs, choosing the Accessories folder and from there the program Run) and write \"regserv32.exe LicProtector313.dll\" (without the high commas) and press enter.*

**On Windows XP it may be necessary to save the file LicProtector313.dll locally before carrying out this step.*Note:*** *You need administrator rights!*

Download: http://download.GeoDin.com/driver/softwarelicense/licprotector.zip

LicProtector313.dll

lpregister313.exe <!-- src: help/13/8698 -->

### Activation


Here you can activate your network licence.

If GeoDin cannot find a valid licence, you will be requested to either activate the network licence or use a GeoDin USB key. If you simply forgot to attach your USB key before starting GeoDin, close the program, attach the key and re-open.

If you want to activate your network licence please have your serial number ready. Then choose the option -Activate new GeoDin netzwork licence- and click **Next**.

In the following dialogue you can decide whether to choose online activation, or where this is not possible, manual telephone activation.

**Online activation:**

Where you use a proxy to connect to the internet, make sure that this is configured via the  button before starting the activation process.

You will be requetsed to choose a folder for saving the licence file downloaded from the activation server. All clients must have write permission to this file and folder! In the next step you have to enter and confirm your serial number. GeoDin then automatically downloads and activates your licence file.

**Manual activation:**

To manually activate a licence you must have a GeoDin licence file. Please contact GeoDin Support to obtain this. Once you have recieved the licence file, save it in a network folder to which all users have access. Then select the licence file. After entering the serial number you will get an installation code (hardware ID) that you have to send to GeoDin Support in order to obtain the activation key to activate your licence.

Once your licence has been activated, the path to the licence file is stored in the GeoDin.INI . <!-- src: help/13/8707 -->

### System configuration

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
