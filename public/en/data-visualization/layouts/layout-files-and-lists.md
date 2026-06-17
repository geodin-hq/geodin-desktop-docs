---
description: Layout file formats (.GLO/.GGF), storage folders, snippets, and layout lists/collections (.GLL/.GLC).
---

# Layout Files and Lists

This page covers the file formats GeoDin uses for layouts, how layout folders work, the snippet system for shared layout components, and layout lists and collections for report sequences.

Part of the [Creating Custom Layouts](../creating-custom-layouts.md) family.

***

## Reference: File formats

Layouts can be saved in two formats:

| Format | Extension | Contents | Use case |
|---|---|---|---|
| **GeoDin Layout** | `.GLO` | Template only, no data | Reusable templates |
| **GeoDin Graphic Format** | `.GGF` | Layout + connected data | Preserving a specific graphic (e.g., a cross-section with 10 boreholes) |

Only GLO files appear in the Available Layouts overview. GGF files must be opened by drag-and-dropping them into GeoDin.

## Default and custom layout folders

Default layouts ship pre-installed in `C:\ProgramData\GeoDin\Layouts\`, organized by object type (e.g., G1 has borehole logs, stiff/parameter layouts, water content vs depth, Atterberg limits). Users can add custom layout folders via **Available Layouts** > **+** button > browse to folder (e.g., a network share for team-wide layouts).

{% hint style="warning" %}
When editing a default layout, always use **File > Save As** (not **Save**) to avoid overwriting the shipped default. If a default is accidentally overwritten, there is no built-in reset - you must request a copy from the GeoDin team. In a network installation, overwriting a default affects all users on that install.
{% endhint %}

## Layout snippets

A layout can embed another layout as a **snippet** - for example, a header/footer stored once in `Common_A4_LHF.GLO` and referenced by many templates. Changing the company logo in the snippet file automatically updates all layouts using it.

In edit mode, snippets appear as green-boxed regions that cannot be edited inline. To modify a snippet, open the snippet layout file directly. Snippets can contain other snippets, and a layout can include any number of them.

Snippets are linked by relative path, so keep them in the same folder (or subfolders) as the layouts using them. This ensures the relationship is preserved when moving layout folders.

***

## Reference: Layout lists and collections

A layout list is a collection of individual layouts in a single file:

* **`.GLC` (Layout Collection)** - stores references to individual layout files. When a layout is changed, the collection automatically uses the updated version. _Recommended for new lists._
* **`.GLL` (Layout List)** - stores layouts inline. When a layout is changed, it must also be updated in the list. _`.GLL` files can no longer be created; only existing ones can be opened._

Layout lists enable **report sequences** - printing several layouts in a predefined order (e.g., master data sheet + geological profile + well design). They are also used for quick layout access in the **Create and edit graphic** method.

## Reference: Layout list editing

| Feature | Description |
|---|---|
| **Create/edit GLC lists** | **File > Edit Layout List > GLC** or **File > Create New Layout List > GLC**. Add layouts with the **+** button; double-click to set the file path. |
| **Reports** | Group layouts into named report sequences for multi-page printing (e.g., master data + geological profile + well design). |
| **Convert GLL to GLC** | **File > Layout List > Convert** converts legacy GLL files. Layout groups and images are not included in conversion. |
| **Images (GLL only)** | Images stored in a GLL file are embedded - the original file does not need to be available at use time. Renaming an image in the layout list manager breaks all references to it. |
| **Default layout list (GLL only)** | Set a layout list as the default, accessible via the **Default layout list** button without using **File > Open**. Only a `.GLL` file can be declared as the standard layout list. |
