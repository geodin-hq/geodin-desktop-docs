---
description: Overview of the GeoDin user interface — the database panel, tree navigation, system configuration, and key interface controls
---

<!--
**Content status:** Polished from product documentation
**Source quality:** A (Help + Transcripts)
**Needs:** screenshots, editorial review
-->

# User Interface

The GeoDin interface is organized around a hierarchical tree view on the left, a central methods ribbon, and key controls for graphics, help, and system settings.

## 1. Databases panel

The **Databases** panel is the starting point of your work in GeoDin. Each database contains **Projects**, and each project consists of **Objects** (such as boreholes and locations), **Measurement Points**, and **Documents**.

### Database types

GeoDin supports client-server databases, which can be hosted on a single computer or across a network. Databases are color-coded:

- **Yellow** — network-level databases (shared by a group of users for collaboration)
- **Blue** — local databases (accessible only to the individual user)

{% hint style="info" %}
GeoDin databases are based on Microsoft Access files. For other backend options, see the [Installation guide](../installation/express-installation.md).
{% endhint %}


### Tree hierarchy and navigation

The GeoDin tree hierarchy follows a consistent pattern: <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

```
Database > Project > Objects (boreholes/locations)
    > Data Management (General Data, Layer Data, Samples, Well Design Data, Data Sequences)
    > Measurement Data
    > Documents
```

The **Measurement Points** branch holds **Locations** and **Samples** sub-branches, each containing their own measurement records. <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

Clicking different levels in the left-hand tree populates the central "methods" ribbon with actions applicable to the selected item. Right-clicking a tree item shows the same methods in a context menu (e.g., New Project, Close Database, Maintain, Optimize). <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

{% hint style="info" %}
Each borehole with measurement data is marked with a small blue sphere icon in the tree view.
{% endhint %}

A project's **Documents** area lives directly under the project level and can hold folders and files — cross-sections, PDFs, videos, or any other file type. <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

## 2. System panel

The **System** panel provides access to system-level configuration. Within this panel, you can access and edit pre-made dictionaries, data types, and object types — including those for G1 locations and AGS standards.


## 3. Interface controls

### Bottom-left controls

| Button | Function |
|---|---|
| **Layout Overview** | Quick view of available layouts for the current object type |
| **Edit Graphics** | Opens the layout editor to modify or create graphic templates |

### Top-right controls

| Button | Shortcut | Function |
|---|---|---|
| **GeoDin Help** | F1 | Opens context-sensitive help documentation |
| **Information** | Alt+I | Shows version and license validity |
| **SQL Protocol** | Alt+S | Opens the SQL protocol log |
| **Log Folder** | Alt+H | Opens the log file directory |

### Central ribbon

When you select a location within a project, the central ribbon displays the available methods for that object. Methods are activated by **double-clicking** the method icon.


---

## Understanding data management sections

When you navigate to an object (borehole) in the tree, the following data sections are available under **Data Management**: <!-- src: transcript/data-model-architecture#geodin-tree-hierarchy-navigation -->

| Section | Contents |
|---|---|
| **General Data** | Location metadata — coordinates, elevation, project information, classification |
| **Layer Data** | Geological layer descriptions — stratigraphy, petrography, colors, consistency |
| **Samples** | Physical samples taken from the borehole, with depth intervals |
| **Well Design Data** | Casing, screens, backfill, piezometer installations |
| **Data Sequences** | Continuous depth-indexed data (CPT traces, geophysical logs, custom measurements) |

**Measurement Data** is accessed via the Measurement Points branch and contains test results (e.g., triaxial, consolidation, Atterberg limits) linked to specific samples or locations.

For detailed information about each section, see:
- [Creating Objects](objects/creating-objects.md)
- [General Data](objects/general-data.md)
- [Sample Data](objects/sample-data.md)
- [Well Design Data](objects/well-design-data.md)
- [Measurement Values](measurement-values/working-with-measurement-data.md)

---

## Working with methods

All available methods for the selected object(s) appear on the right-hand side of the object manager under **Methods**. To run a method, double-click its icon. Because many methods apply to either a single object or several selected objects, it is important to select the right objects before starting a method.

**Example.** The method **Measurement data** is available for a single measurement point as well as for a group or query. With just one measurement point selected, only data for this point is loaded into the measurement data editor. If a group of measurement points (for example, a query) is selected, all the measurement data for the selected points is loaded.

There are two main types of methods:

### Discrete methods

A discrete method must be completed before further operations in the object manager are carried out, or another method is started. For example, when the method **Delete project** is chosen, the new window dialog allows the choice between carrying out the delete action or cancelling. While this window is open, you cannot choose another method nor select another object.

### Parallel methods

Parallel methods remain active until they are ended by closing the method window. When a parallel method is active, you can select and start other methods in the object manager. Parallel methods retain their direct connection to the object manager and react to changes in object selection. An example is **Data management**: choose an object, double-click the method symbol, and the object is loaded in the editor for editing general data, borehole logs, and so on. If another object is chosen, it is automatically opened for editing — the editor does not have to be closed first.

An unlimited number of parallel methods may be used concurrently. This means you can edit borehole data and its graphical presentation simultaneously.

### Selection-bound methods

Some methods take a selection from the object manager on startup and then keep that selection even if you click elsewhere in the tree. The **Cross-section assistant** is the typical example: the initial boreholes shown in the assistant are those selected as a group when the method started. You can expand the selection from inside the method using the **Add** button or by dragging further objects into the method's window.

### Methods without a selection

A handful of methods can be started directly from the task bar at the bottom of the object manager, without first selecting anything in the tree. **GeoDin-Graph** (the CAD module for creating drawings independent of any database object) is one example — you do not need any object selected to launch it.

### Switching between active methods

Switching between active methods is done by clicking the method's symbol in the **Active Methods** toolbar. The method currently in use is highlighted by a blue frame.

| Shortcut | Action |
|---|---|
| **F8** | Switch to the method on the right |
| **Ctrl+F8** | Switch to the method on the left |
| **F9** | Maximize or minimize the object manager's Objects and Methods windows |
| **Ctrl+F9** | Maximize or minimize both at once |

On the right side of each method symbol, a small switch closes the method — even when the method is in the background. The **Close all methods** switch on the right side of the **Active Methods** toolbar closes every active method in one step.

{% hint style="info" %}
It is not necessary to shut down all methods before closing GeoDin. Selecting **File → Exit** (or **Alt+F4**) closes all active methods automatically; if any have unsaved changes, a save dialog appears first.
{% endhint %}

All methods available for a selected object are also available as a popup menu via right-click on the tree entry — the methods window does not need to be maximized to start a method.
