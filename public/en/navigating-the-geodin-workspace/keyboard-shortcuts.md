---
description: Reference of all GeoDin keyboard shortcuts - application-wide keys and the context-specific shortcuts for layer data entry, data grids, and the layout editor.
---

# Keyboard shortcuts

GeoDin's shortcuts are context-sensitive: a key like **F2** or **Ctrl+D** does different things depending on whether you are in the layer data mask, a data grid, or the layout editor. This page lists them all in one place, grouped by the context in which they work.

On a German Windows keyboard the modifier keys are labeled differently: **Strg** = Ctrl, **Umschalt** = Shift, **Entf** = Del, **Einfg** = Ins.

## Application-wide

<!-- src: help/H0000000056 -->
<!-- src: help/H0000003001 -->

These shortcuts work anywhere in GeoDin.

| Shortcut | Action |
|---|---|
| **F1** | Open context-sensitive help for the current function or dialog |
| **Alt+F1** | Show or hide the help window at the last viewed chapter |
| **Ctrl+F1** | Open the long help text for the current input field |
| **F8** | Switch to the next active method (to the right) |
| **Ctrl+F8** | Switch to the previous active method (to the left) |
| **F9** | Maximize or minimize the object manager's Objects and Methods windows |
| **Ctrl+F9** | Maximize or minimize both windows at once |
| **F11** | Show or hide the display window |
| **Alt+S** | Start the SQL protocol |
| **Alt+F4** | Exit GeoDin (all active methods close; a save dialog appears for unsaved changes) |
| **Ctrl+Z** | Undo the last operation (multistage) |
| **Shift+Ctrl+Z** | Redo an undone operation |
| **Ctrl+X**, **Ctrl+C**, **Ctrl+V** | Cut, copy, paste (clipboard) |

{% hint style="info" %}
The function key for the long help is configurable: the `LongHelpShortCut` parameter accepts **F1** to **F12**. Pressing **Ctrl** plus the configured key opens the help in a new window.
{% endhint %}

For the toolbar buttons these keys correspond to, see [User Interface](user-interface.md).

***

## Layer data entry mask

<!-- src: help/H0000000337 -->

Available while entering or editing layer descriptions in the layer data mask editor.

| Shortcut | Action |
|---|---|
| **Ctrl+PageUp** | Jump to the layer above |
| **Ctrl+PageDn** | Jump to the layer below |
| **Ctrl+Home** | Jump to the first layer |
| **Ctrl+End** | Jump to the last layer |
| **Ins** | Insert a new layer between two existing layers |
| **Ctrl+Del** | Delete the current layer |
| **Ctrl+D** | Duplicate the current layer |
| **Ctrl+K** | Switch between main layer and components |
| **F2** | Open the dictionary for the current field (searchable) |
| **F3** | Run syntax control |
| **F4** | Turn the graphic preview on and off |
| **F7** | Preview of layer queries (SEP 3 only) |

## Data grids and tables

<!-- src: help/H0000000147 -->
<!-- src: help/H0000008586 -->

Available in table-style data entry grids, including general data, well design tables, and the measurement value editor.

| Shortcut | Action |
|---|---|
| **Tab** | Move to the next entry field; at the end of a line, create a new line |
| **Shift+Tab** | Move to the previous entry field in the line |
| **Arrow Up** | Go to the previous line |
| **Arrow Down** | Go to the next line, or create a new line at the end |
| **Ins** | Insert a new line above the current line |
| **Ctrl+Ins** | Insert a complete row |
| **Ctrl+Del** | Delete the current line or selected data sets |
| **F2** | Search in the dictionary of the current entry field |
| **Ctrl+A** | Select all data records |
| **Shift+click** | Select a range of data records; on a column header, add staggered sorting |
| **Ctrl+click** | Select individual data records; on a column header, remove sorting |
| **Ctrl+Tab** | Switch to the next data type sheet or graphic tab |
| **Ctrl+Shift+Tab** | Switch to the previous graphic tab |
| **Ctrl+1** to **Ctrl+9** | Jump to the entry table of piezometer 1-9 (well design data) |

**F2** also renames folders and documents in the document management tree.

## Layout editor

<!-- src: help/H0000002415 -->
<!-- src: help/H0000003220 -->

Available in the graphic editing workspace when creating or editing layouts. See [Layout Editor Basics](../data-visualization/layouts/layout-editor-basics.md) for the editor itself.

| Shortcut | Action |
|---|---|
| **Ctrl+A** | Select all graphic elements in the drawing area |
| **Ctrl+D** | Duplicate the selected element(s) |
| **Ctrl+E** | Open the drawing layers dialog |
| **Ctrl+K** | Turn the snap function on and off |
| **Ctrl+arrow key** | Move the selected element(s) by 0.1 mm |
| **Shift+arrow key** | Move the selected element(s) by 1 mm |
| **Ctrl+click** in the layout | Select the object frame (also opens its properties) |
| **Shift+Ctrl+click** | Select multiple object frames |
| **Ctrl+mouse wheel** | Zoom the preview in and out |
| **F4** | Enlarge the fill pattern and symbol preview |
| **F5** | Recalculate and refresh the layout |

{% hint style="info" %}
Menu entries in the layout editor display their shortcuts next to the entry name - the menus are the authoritative in-app reference if a key does not respond as expected.
{% endhint %}
