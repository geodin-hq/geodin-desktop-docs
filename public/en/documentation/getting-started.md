---
description: Getting started with GeoDin
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** C (Thin (limited source material))
**Needs:** editorial review
-->

# Getting started

GeoDin is a geotechnical data management software for geotechnical ground investigation and environmental data management. Key capabilities include:

* Compliance with industry standards (ASTM D2487/D2488, BS 5930, EN ISO 14688/14689)
* Support for local standards (SEP3, KA5)
* Customizable data models and formulas
* Visualization tools with free templates
* Integrated GIS (GeoDin Maps) for comprehensive analyses and graphics

## Product Overview

GeoDin is a geotechnical data management system that handles databases via different "object types" — each object type is a specific database structure (collection of tables) designed for a specific purpose. <!-- src: transcript/data-model-architecture#product-overview -->

GeoDin is the Windows client for office-side data management, reporting, and template editing. <!-- src: transcript/data-model-architecture#product-overview -->

GeoDin Onsite is the field/tablet data-collection companion app — a .NET 8 Windows application (tablet or PC) that requires the Microsoft .NET 8 runtime; on first launch, if the runtime is missing, Onsite redirects the user to Microsoft to download and install it. <!-- src: transcript/data-model-architecture#product-overview -->

GeoDin Ground is a free plugin for Autodesk Civil 3D (separate Civil 3D license required) that connects directly to a GeoDin database and renders boreholes in 3D. <!-- src: transcript/data-model-architecture#product-overview -->

GeoDin itself is 2D only; 3D visualization requires the GeoDin Ground Civil 3D plugin. <!-- src: transcript/data-model-architecture#product-overview -->

Onsite has no native server front-end — it cannot talk directly to a GeoDin server; all project metadata and data exchange between Onsite and Desktop goes via GeoDin ML files. <!-- src: transcript/data-model-architecture#product-overview -->

## GeoDin Tree Hierarchy & Navigation

The GeoDin tree hierarchy is: Database > Project > Objects (boreholes/locations) > Data Management sections (General Data, Layer Data, Samples, Well Design Data, Data Sequences) + Measurement Data. <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

The Measurement Points branch holds Locations and Samples sub-branches, each holding their own measurement records. <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

Clicking different levels in the left-hand tree populates the central "methods" ribbon with actions applicable to the selected feature. <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

Right-click on a tree item shows the same methods (New Project, Close Database, Maintain, Optimize, etc.). <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

Each borehole with measurement data is marked with a small blue sphere icon next to it in the tree view. <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

A project's Documents area lives directly under the project level in the tree and can hold folders and files (e.g. cross sections, PDFs, videos) with support for any file type. <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

---

## Reference Details

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin before relying on specific UI details.
{% endhint %}

### First steps

GeoDin has a single user interface, which combines all modules for collecting, processing and presenting data stored as GeoDin project databases and objects, as well as functions for the configuration of GeoDin dictionaries, fill patterns and data structure.

The user interface is divided into two parts: on the left hand side the GeoDin object manager (GOM) allows the user to select a particular object from the tree/branch structure, whilst on the right hand side the appropriate methods for working with the selected objects are shown automatically.

By choosing either **Databases** or **System** from the card index above the tree/branch structure on the left hand side of the GeoDin Object Manager, you can switch between working with objects from GeoDin databases or from the system configuration.

All available methods for (a) selected object(s) are shown on the right hand side of the GOM under **Methods**. To apply a method simply double-click the icon. The chosen method function will then be applied to the selected object. As many methods can apply either to a single object or several selected objects, it is important to select the right object before starting a method.

**Example:**

The method **Measurement data** is available for a single measurement point as well as for a group or query. With just one measurement point selected only data for this point will be loaded into the measurement data editor. If a group of measurement points (e.g. a query) is selected and the method **Measurement data** selected, all the measurement data for the selected measurement points are loaded by the measurement data editor.

There are two main types of methods:

**Discrete Methods**

A discrete method must be completed first before further operations in the GeoDin object manager are carried out, or another method is started. For example when the method **Delete project** is chosen the new window dialogue that appears allows the choice between carrying out the delete action or canceling. Whilst this window is open you cannot choose another method nor select another object in the GeoDin object manager.

**Parallel Methods**

These methods remain active until they are ended by closing the method window. When the method is active, you may select and start other methods in the GeoDin object manager. Parallel methods retain their direct connection to the GeoDin object manager and react to changes in object selection. An example for these types of methods is **Data management**. To start this method choose an object in the GeoDin object manager and double-click the method symbol. The chosen object is loaded in the editor and general data, borehole logs etc. may be entered or edited. If another object is chosen in the GeoDin object manager, it will be automatically opened for editing. The editor does not have to be closed before working on another borehole. Other methods of this type are **Edit graphic** and **Measurement data**.

An unlimited number of parallel methods may be used concurrently. Hence it is possible to edit borehole data and the graphical presentation simultaneously. Switching between the different active methods is done by clicking on the symbol of the method in the \<Active Methods\> toolbar. The method currently in use is highlighted by a blue frame. You can switch between methods using **F8** (switching to the method on the right) or **Ctrl+F8** (switching to the method on the left).

On the right side of the method symbol, a small switch for closing the method is displayed. Using this switch, a method can be closed even when currently not displayed (when in the background). The \<close all methods\> switch on the right side of the \<Active methods\> toolbar closes all active methods in one step.

***Note:*** *It is not necessary to shut down all methods before shutting down GeoDin. Select \<File-Exit\> or use the keyboard shortcut \<Alt-F4\>. All active methods are closed automatically, if necessary, a file saving dialogue is displayed to save the last changes. After all changes have been saved, GeoDin is shut down.*

To increase the space available for displaying the active method, both parts of the GeoDin object manager - *Objects* and *Methods* - can be minimized, either each part separately or both. To do so, click on the small arrow symbol at the top of the object manager. The minimized window is displayed as a thin vertical button. By clicking on this button, the part of the object manager is displayed at full size again.

***Note:*** *All methods available for a selected object are available as a popup menu by a right-click on the selected entry. The methods window does not need to be maximized again to start a method.*

The key **F9** can be used to maximize or minimize the object manager objects and methods windows. The combination **CTRL-F9** maximizes or minimizes both the objects and methods. This can be done as well by using the arrow buttons on the left side of the **Active methods** toolbar.

As described above, the **Data management** method automatically uses the object active in the GeoDin object manager. If another object is selected (e.g. another borehole), the data of this object will be loaded for this method. Changes in the data for the previously loaded object are saved automatically, or a dialogue is displayed asking you whether to save the changes. This way all changes in the data are stored when a new object is selected and no data will be lost. The user does not have save the data himself.

A third group of methods starts with a selection in the GeoDin object manager and keeps these objects as long as they are not deleted or added to. An example is the cross-section assistant where the initial boreholes shown are those selected as a group in the GeoDin object manager. To this selection further boreholes can be added with the **Add** button or by Drag & Drop into the cross-section assistant window.

You may start some methods directly from the task bar at the bottom of the GeoDin object manager without first having chosen an object (for example to create a drawing using the CAD-Module GeoDin-Graph, for which you do not need objects from a database). <!-- src: help/14/3001 -->

### Information

With this button you can see general information about GeoDin.

You can also start the SQL protocol and the online support function.

 **Information**

 [Start SQL-protocol](../support/troubleshooting.md) <!-- src: help/14/6778 -->

### Start SQL-protocol

With the function **SQL protocol**, you can record all database operations performed by GeoDin for a later analysis. The protocol contains data about the actions executed, their execution time and the success. It is especially helpful in debugging newly developed complex SQL queries.

The protocol is started with the **Start SQL protocol** menu item in the  information menu. All SQL commands executed afterwards are recorded in the protocol. To stop the protocol, select the same menu item, now called ![Stop SQL protocol](.gitbook/assets/icons/stop-sql-protocol.png) **Stop SQL protocol**. The protocol is now displayed in an extra window and can also be saved as a text file.

You can also start the SQL protocol with the keyboard shortcut **Alt-S** without using the menu. <!-- src: help/14/6791 -->
