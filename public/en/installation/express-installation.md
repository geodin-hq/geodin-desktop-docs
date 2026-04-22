# Express Installation

## Before you start

To use GeoDin®, you need a valid GeoDin® license serial. You can obtain one by visiting the below website to purchase a licence or apply for a trial licence here:

{% embed url="https://geodin.com" %}

A download link for the installer will be sent to you automatically via email after your purchase. Once downloaded, start the installation by double-clicking on the file `GeoDin-Setup.exe`. Alternatively, you can download the latest setup here.

{% embed url="https://resources.geodin.com/downloads/geodin/latest/installer/GeoDin-Setup.exe" fullWidth="false" %}

> <mark style="color:red;">Note: Ensure you have administrative privileges on the machine before you run the installer.</mark>

## 1. Licence agreement

Please read the licence agreement carefully and proceed by accepting it.

## 2. Installation type (express or custom)

GeoDin® supports many deployment configurations to meet your corporate and individual needs. If this is your first time using GeoDin®, choose the Express installation; this will quickly install everything you need to run GeoDin® on a single computer. It includes demo databases to get you started. Experienced users can customize their installation. To do this, choose the Custom installation option. There is a separate installation guide for the custom installation.

## 3. Installation settings

The installation settings you have made are summarized for you here. Click `<Install>` to continue.

## 4. Installation process

The installer copies files to the various directories. Please wait for it to complete.

## 5. Finish installation

The installation is now complete! If you do wish to start GeoDin® immediately after installation, check the box labeled `Launch GeoDin® after installation completes`. When you open GeoDin® for the first time, you can enter the license. There is a separate guide for activating your license. Click `<Finish>` to finalize the installation.

***

## Deployment modes

GeoDin can be installed in two modes, depending on your organization's needs:

* **Per-machine installation:** Each user has their own configuration, dictionaries, custom data types, and system files. This is the default for the Express installation.
* **Central network installation:** All users share the same syslib, dictionaries, custom data types, and configuration via shared folders on a network drive.

The installation folder layout is split across a **bin folder** (executable) and a **syslib folder** (dictionaries, filters, custom data types, configuration). In a per-machine installation, these are typically at `C:\Program Files\GeoDin\` and `C:\ProgramData\GeoDin\` respectively. In a central installation, they can be combined into a single stack on a network share.

***

## Reference: Configuration file (GeoDin.ini)

{% hint style="warning" %}
The following reference content is from legacy product documentation. The configuration file should only be edited by advanced users. Verify parameter names and paths against your current GeoDin version.
{% endhint %}

The `GeoDin.ini` configuration file is placed in the GeoDin installation directory. It controls system paths, licensing behavior, and interface options.

### Path variables

For all paths in the configuration file, the variable `$%GeoDinROOT$` can be used as a placeholder for the GeoDin installation directory. This offers two advantages:

1. The entire GeoDin installation can be moved to another directory without changing path names in `GeoDin.ini`.
2. In a network environment, clients no longer need identical drive mappings — a shortcut to `GeoDin.exe` is sufficient.

When a `ProgramData` entry is defined (e.g., `ProgramData=C:\ProgramData\`), the `$%GeoDinROOT$` variable is redirected to that directory. This allows GeoDin system files to be saved without administrator rights (Windows Vista and later). Without a `ProgramData` entry, `$%GeoDinROOT$` returns the directory above `GeoDin.exe`.

### System parameters

| Parameter              | Required | Default              | Description                                                                                                                                                       |
| ---------------------- | -------- | -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `SysPath`              | Yes      | `...\GeoDin\SYSLIB\` | Directory for GeoDin system files                                                                                                                                 |
| `SysGLL`               | No       | not set              | Path to a network-wide layout list file (`.gll`). Users cannot modify this file; the Save button in graphic editing is disabled when set.                         |
| `SysObjChange`         | No       | true                 | Set to `false` to prevent users from modifying the system configuration (dictionaries, etc.). A password prompt appears on restart to allow administrator access. |
| `SysPassword`          | No       | not set              | Encrypted password for use with `SysObjChange=false`. If forgotten, delete this entry and restart GeoDin to set a new password.                                   |
| `ComServerPlugins`     | No       | false                | Whether COM-Server plug-in methods are available at startup.                                                                                                      |
| `LongHelpShortCut`     | No       | F1                   | Which function key (F1-F12) opens the help. Press Ctrl + the function key to open help in a new window.                                                           |
| `ExecutePath`          | No       | not set              | Overrides the run directory linked to the GeoDin icon. Used with the COM-Server.                                                                                  |
| `AutoLicense`          | No       | false                | For network versions with license management: when set to `true` and only one license type is available, the first free license is selected automatically.        |
| `UserInterfaceEffects` | No       | true                 | Controls visual transition effects. Set to `false` in terminal server environments to improve display performance.                                                |

### Updating an existing installation

When updating GeoDin, always install the new version in a **different directory** from your previous version. After installation, start GeoDin and apply changes to object types, dictionaries, and measurement value structures from your previous version by navigating to `<System> > <System configuration>` and double-clicking the method icon.
