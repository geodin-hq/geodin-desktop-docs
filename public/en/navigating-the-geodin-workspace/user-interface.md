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
