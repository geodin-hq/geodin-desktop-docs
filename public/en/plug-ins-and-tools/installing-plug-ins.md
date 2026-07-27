---
description: >-
  How to install GeoDin plug-ins from the plug-in archive and how to configure a
  custom plug-in under Installed Plugins in the system configuration.
hidden: true
---

# Installing Plug-ins

<!-- src: help/H0000011290#plugin-concept -->

Plug-ins are external modules - programs, .NET assemblies or COM servers - that are integrated into the GeoDin user interface and launched from it. A software developer who wants to add, for example, a special export operation or a new calculation function can integrate the start of that application into the GeoDin program interface.

For the GeoDin user, a plug-in presents itself as an ordinary GeoDin method. All information about the selected object or objects that the plug-in needs is taken from the object manager, so supplementary evaluation functions for a chosen set of objects can be offered by the plug-in. A plug-in does not have to work with the GeoDin database at all: a plug-in can just as well integrate the call of the operating system "Calculator" into the GeoDin program interface.

This page covers installing and configuring plug-ins. For what a plug-in receives at call time - command-line parameters, the `[Params]` block, and the COM interface a plug-in has to implement - see [Method Reference](com-api/method-reference.md#plug-ins).

## Requirements

- A GeoDin edition that shows the **Installed Plugins** node in the system configuration.
- The plug-in file (DLL or EXE) on a path that GeoDin can reach, plus the plug-in version and the minimum GeoDin version it requires.
- For plug-ins with GeoDin Monitor and WPF plug-ins: the **Assembly ID** and **ProgID**, which are created and verified by the GeoDin team.
- Network access to the plug-in archive if you install a ready-made plug-in.

{% hint style="warning" %}
Defining and configuring plug-ins through the configuration file GEODIN.INI is no longer possible from GeoDin 9.5. Use the system configuration as described below. The GEODIN.INI parameters documented in [Method Reference](com-api/method-reference.md#plug-ins) apply to older installations only.
{% endhint %}

## Install a plug-in from the plug-in archive

<!-- src: help/H0000011295#plugin-archive -->

Ready-made plug-ins - for example GeODinML Import and GeODinML Export - are distributed through the plug-in archive.

{% stepper %}
{% step %}
#### Step 1: Open the set-up section

In the system configuration, go to the **Set up plugins** section. It lists the plug-ins that can be installed.
{% endstep %}

{% step %}
#### Step 2: Connect to the archive

Press **Connect** to get access to the plug-in archive. The list is filled with the plug-ins available for your installation.
{% endstep %}

{% step %}
#### Step 3: Install the plug-in

Select the plug-in you want and press **Install**. The plug-in is added to GeoDin and appears afterwards under **Installed Plugins**, where its display conditions and user settings can be adjusted.
{% endstep %}
{% endstepper %}

A more detailed description of the individual archive plug-ins is published on the GeoDin website.

## Configure a plug-in manually

<!-- src: help/H0000011295#installed-plugins -->

Plug-ins that are not in the archive - custom plug-ins written in-house or supplied by a third party - are configured by hand on the system configuration page under the node **Installed Plugins**.

{% stepper %}
{% step %}
#### Step 1: Add the plug-in entry

Add an entry under **Installed Plugins**. The **plugin GUID** is a unique assignment created automatically; it cannot be changed.
{% endstep %}

{% step %}
#### Step 2: Choose the plug-in type

Set the **Type** field to the format of the plug-in: plug-in with GeoDin Monitor, WPF plug-in, or EXE plug-in. See [Plug-in types](#reference-plug-in-types) for what each type means.
{% endstep %}

{% step %}
#### Step 3: Point to the plug-in file

Use the **...** button below the **plugin DLL/EXE** field to specify the path to the plug-in's storage location.
{% endstep %}

{% step %}
#### Step 4: Enter the version information

Enter the version of the plug-in in the **Plugin version** field, and in the following field the minimum GeoDin version the plug-in can be used with.
{% endstep %}

{% step %}
#### Step 5: Enter the Assembly ID and ProgID

Fill in **Assembly ID** and **ProgID**. These keys are created and verified by the GeoDin team. Both fields are not selectable for EXE plug-ins; they are mandatory for plug-ins with GeoDin Monitor and for WPF plug-ins.
{% endstep %}

{% step %}
#### Step 6: Name and describe the plug-in

Set the display name per language in the **Display name** submenu and the description in the **Description** submenu. Name and description can be defined for German, English, Dutch, French, Russian, Italian, Portuguese, Turkish, Spanish, Polish and Swedish.
{% endstep %}

{% step %}
#### Step 7: Decide where and for whom it appears

Define the **Display conditions** and the **User settings** for the plug-in. If user groups have been set up in the user administration, groups or individual users can be added in the fields provided; only users and groups defined in the user configuration are offered for selection.
{% endstep %}
{% endstepper %}

***

## Reference: Plug-in types

<!-- src: help/H0000011290#plugin-types -->

Three types of plug-in can be integrated:

| Type | Behavior |
|---|---|
| **Plugin with GeoDin Monitor** | A plug-in without its own user interface. It uses GeoDin as a monitor to display messages - for example the function being executed and its progress - through a progress bar. |
| **WPF Plugin** | A plug-in built on Windows Presentation Foundation, the .NET Framework UI technology from Microsoft. It brings its own user interface. |
| **EXE Plugin** | GeoDin starts the integrated application when the method is launched and passes all necessary parameters for the selected branch in the object manager to it. With this information the plug-in performs its special processing for the object. |

## Reference: Installed plug-in settings

| Setting | Description |
|---|---|
| **Plugin GUID** | Unique assignment created automatically. Read-only. |
| **Type** | Plug-in with GeoDin Monitor, WPF plug-in, or EXE plug-in. |
| **Plugin DLL/EXE** | Path to the plug-in file, selected with the **...** button. |
| **Plugin version** | Version of the plug-in itself. |
| **Minimum GeoDin version** | Lowest GeoDin version the plug-in can be used with. |
| **Assembly ID** / **ProgID** | Keys created and verified by the GeoDin team. Not selectable for EXE plug-ins, mandatory for the other two types. |
| **Display name** / **Description** | Multilingual texts shown to the user, maintained per language in their submenus. |
| **Display conditions** | Where in the object manager the plug-in method is offered. |
| **User settings** | Which users or user groups may see and run the plug-in. |
