---
description: Layout editor mechanics - accessing the editor, file formats, drawing layers, snap, grouping, palettes, layout interfaces, unit systems, and paper formats.
---

# Layout Editor Basics

The layout editor is GeoDin's graphic authoring environment for creating and modifying layout templates. It is accessed via the **Graphic Printing and Editing** method and the **Layout** section. This page covers the editor's core mechanics: how to open and save layouts, how the editor toolbar is organised, and the tools for managing elements, layers, groups, and palettes.

Part of the [Creating Custom Layouts](../creating-custom-layouts.md) family. For the editor's key combinations (select, duplicate, nudge, snap, zoom), see [Keyboard shortcuts](../../navigating-the-geodin-workspace/keyboard-shortcuts.md).

## Opening and saving layouts

Default layouts ship pre-installed in `C:\ProgramData\GeoDin\Layouts\`, organised by object type (for example, G1 includes borehole logs, stiff/parameter layouts, water content vs depth, and Atterberg limits layouts).

To add your own layout folders, go to **Available Layouts**, click the blue **+** button, and browse to a folder (for example, a network share for team layouts).

Two file formats are used for saved layouts:

| Format | Name | Purpose |
|---|---|---|
| **GLO** | GeoDin Layout | Template - no data connection. Listed in the Available Layouts overview. Use for reusable templates. |
| **GGF** | GeoDin Graphic Format | Layout + connected data (e.g., a specific cross section with 10 boreholes baked in). Not listed in Available Layouts. GGF files can be drag-and-dropped into GeoDin to open with original data connections. |

{% hint style="warning" %}
When editing a default layout, always use **File > Save As** (not **Save**) to avoid overwriting the shipped default. Create a folder such as `[CLIENT]_Layouts` and copy defaults there before editing. If a default is accidentally overwritten, there is no built-in reset - you must request a copy from the GeoDin team (there is no public re-download link).
{% endhint %}

Default layouts are stored once per GeoDin installation. In a network install, overwriting a default affects all users on that installation.

<!-- src: help/H0000000033#file-description-and-preview -->

### Naming a layout and giving it a preview

A graphic or layout can carry a long name that is displayed in the title row of the graphic window. Enter it in the **File description** field in the **Object properties** branch of the graphic. For layouts that appear in a layout list this matters: the selection function shows these names in the list, so a meaningful description is worth the few seconds it takes.

A layout can also carry a preview image, shown in the layout overview of the **Graphic printing and editing** method. Use the **Create new preview** icon to generate a preview or to replace an existing one.

## Starting a new layout

To start a new layout: open the graphic editing method with no layout loaded, double-click the empty canvas to show the **Object Properties** panel, then drop in a complex element from the toolbar.

Two buttons in the lower-left corner of the editor window control access to the overview and blank edit mode:

* **Layer Overview** - opens the overview of layout layers and drawing elements.
* **Edit Graphics** - opens a new blank layout in edit mode.

Layouts can be fully customised (delete fields, replace logos) via **Edit Mode** from the upper-right toolbar.

## Editor toolbar

The editor toolbar is divided into two sections:

* **Simple graphic elements:** lines, polygons, rectangles, text
* **Complex graphic elements:** object frame, borehole log, depth scale, samples, groundwater, data sequence, measurement value graphic, report element, well design, legend, image

{% hint style="info" %}
The in-product **F1** context-sensitive help is comprehensive on template creation topics (object frames, single vs multiple object frames, macros, dynamic objects) and opens at the section matching the part of GeoDin currently in focus.
{% endhint %}

<!-- src: help/H0000000033#graphic-window -->

## Navigating the graphic window

Open the graphic window with the **Edit graphic** icon in the lower symbol bar of the GeoDin main window. It also opens automatically when you start a method such as **Graphic printing and editing** or **Profile cross-section**. Any number of graphics can be open at the same time; switch between them with the tabs.

Besides the canvas, the window holds a menu, two toolbars, the object properties area, and a status line.

The canvas shows the graphic as it will be printed. Small differences between text on screen and text on paper come from the lower screen resolution and the limited font scaling that goes with it. Screen and printout match most closely when the on-screen size is close to the actual paper size.

These tools control which part of the graphic the editing window shows:

| Tool | What it does |
|---|---|
| **Zoom in** | Click a position with the zoom cursor to enlarge the graphic two times and center the clicked point. You can also drag a rectangle to zoom to that area. |
| **Zoom out** | Click with the zoom cursor on the area to be reduced. |
| **Pan** | Move the visible area without using the scroll bars at the edge of the window. |
| **View full page** | Show the whole page in the editing window. |
| **Previous view** / **Next view** | Step back and forth through previously selected views, including their zoom levels - useful for switching quickly between two or more views of the same graphic. |

### Status line

The status line reports information about the currently selected graphic element, in five columns:

| Column | Shows |
|---|---|
| 1 | Name of the graphic element, and below it the drawing layer the element sits on. |
| 2 | Position of the element measured from the upper left page corner (= 0,0). |
| 3 | Size of the element. |
| 4 | Status of the element: **Fix** (locked against moving and scaling) or **Movable**. |
| 5 | Name of the current drawing layer. |

## Inserting and managing elements

| Action | How to |
|---|---|
| **Insert element** | Select the element type from the toolbar, click and drag on the page to define position and size. If a group or object frame is selected, new elements are added inside it. |
| **Duplicate** | `Edit > Duplicate` or `Ctrl+D` on a selected element. |
| **Delete** | `Edit > Delete` or `Del` key. `Edit > Cut` also removes the element but places it on the clipboard. |
| **Select one** | Click an element. Selected elements show 4 gray corners (lines show 2 gray corners at each end). |
| **Select multiple** | Shift+click or drag a selection frame (elements must be completely inside the frame). |
| **Select all** | `Edit > Select All` or `Ctrl+A`. |
| **Select a group frame** | Click the border area, or Ctrl+click inside the frame. Selected group frames show 4 gray side lines. |
| **Select same type** | Select one element, then `Edit > Select same objects` to select all elements of that type - useful for batch-changing fonts or styles. |
| **Object Properties** | Double-click an element, or press `F11`, or use `Edit > Object Properties`. Properties update automatically when selecting different elements. The panel position (left/right) can be set in Preferences. |
| **Find hidden elements** | In the tree view of graphic elements, single-click an entry to highlight it briefly with blinking blue markers. Double-click to select and edit it. |

<!-- src: help/H0000003430#windows-clipboard -->

### Working with the Windows clipboard

**Cut**, **Copy**, and **Delete** behave as they do elsewhere in Windows and act on the selected graphic element or elements, with a few GeoDin specifics.

* **Group members come along.** Cutting or copying an element that belongs to a group or an object frame puts the whole group or frame on the clipboard, and pastes the whole group or frame back into the graphic. Group elements therefore cannot be duplicated inside the same group or into another one - use `Edit > Duplicate` instead when you want a copy inside a group or object frame.
* **Complex elements copy as images.** When a single complex graphic element is selected, such as a borehole column, it can only be copied as an image. The menu entry changes from **Copy** to **Copy image**, and correspondingly **Paste** becomes **Paste image**.
* **Copy all.** Only elements on the current drawing layer can be selected, unless **Access all layers** is active. `Edit > Copy all` sidesteps this: it copies the entire content of the graphic to the clipboard regardless of drawing layer or selection state, which makes it the quickest way to move a complete graphic into another Windows document. Invisible drawing layers are not copied.
* **Pasting in from other programs.** Content copied from other Windows programs can be pasted into a GeoDin graphic - formatted text blocks from Microsoft Word, tables from Microsoft Excel, or drawings from CorelDraw, for example. GeoDin imports them as a bitmap or as a vector image, depending on the data format the other program puts on the clipboard.

Bitmap and Windows metafile *files* are brought in a different way, with the **Image** graphic element rather than the clipboard.

***

## Drawing layers

Layouts use multiple drawing layers, visible in the **Layer Overview** panel (lower-left corner). Layers can be toggled visible/invisible, reordered, and locked. Use separate layers to isolate fixed elements (title blocks, logos) from variable graphic elements.

For the full drawing layers reference - dialog icons, visibility controls, and the `Ctrl+E` shortcut - see [Customizing Log Layouts](../borehole-logs/customizing-log-layouts.md#drawing-layers).

## Snap function

The snap function (`Ctrl+K`, or **Preferences > Snap**) provides exact alignment when drawing graphic elements. Endpoints, corners, and nodal points snap automatically to nearby existing points within a configurable distance (1-50 mm via **Preferences > Snap preferences**). Works across all drawing layers. Affected elements: lines, rectangles, polylines, and borehole profiles.

## Grouping elements

| Action | How to |
|---|---|
| **Group** | Select multiple elements, then use the Group icon or `Arrange > Group`. |
| **Ungroup** | `Arrange > Ungroup` or the Ungroup icon. |
| **Lock/Unlock** | Lock group elements to prevent accidental edits. Unlock to modify individual elements within the group (elements can only be moved/scaled within the group frame). |
| **Add to group** | Select the group frame first, then insert the new element - it automatically becomes part of the group. |
| **Merge groups** | `Arrange > Merge groups` combines two or more groups (or object frames) into one. This can unite different layouts into a single object frame. |
| **Multiple selection** | When multiple elements are selected, display/arrangement functions (move, z-order, fix/unfix) apply to all at once. |

{% hint style="info" %}
Grouping inside a group is not possible. Geological graphic elements are already grouped and cannot be grouped further.
{% endhint %}

Arrangement changes on grouped elements apply only inside the group. To change the arrangement of grouped elements relative to the rest of the graph, move the group frame itself to the fore- or background. For general z-order behavior (Bring to front / Send to back), see [Element Properties Reference](element-properties.md#reference-text-elements).

## Using palettes

Palettes provide preset fill patterns, colors, line types, fonts, and symbols that can be applied to elements with a single click, significantly speeding up layout styling.

* **Activate:** `View > Palettes` (toggle).
* **Apply:** Double-click a palette entry, or single-click then click the Apply icon. Hold Shift to apply to multiple selected elements at once.
* **Palette sections:** Fill Pattern, Colors, Line types, Fonts, Symbols.
* **Fill patterns** apply to polygon, rectangle, circle, ellipse, and symbol elements. Transfer of background/foreground color is configurable.
* **Colors** apply to line, polygon, rectangle, circle, ellipse, symbol, and text elements.
* **Line types** set style, thickness, and color for line-based elements.
* **Fonts** apply style, size, and color to text elements (other settings like angle are preserved).
* **Symbols** apply symbol type (and optionally fill pattern and line type) to symbol elements.
* **Custom palettes:** Copy an existing `.PAL` file to a new filename. The palette folder is configurable in Preferences.

## Layout snippets

A layout can embed another layout as a snippet - for example, a header/footer stored once in `Common_A4_LHF.GLO` and referenced by many templates. The snippet pattern lets users change a company logo in one file and have all layouts using it update automatically.

A snippet appears in edit mode as a green-boxed region that cannot be edited inline - open the snippet layout directly to edit it.

***

<!-- src: help/H0000003226#editor-display-preferences -->

## Reference: Editor display preferences

Preferences controls how the editor draws selection markings and positioning aids. None of these settings change the layout itself - they only change what you see while editing.

**Markings.** Choose the size of the markings, and a highlight color each for movable and for fixed elements. The color used for the layer markings of the [Join layers](construction-and-alignment.md#join-layers-tool) tool is set here as well.

**Element positioning points.** Every graphic element has a position point made of an X and a Y coordinate; it is the point reported in the status line and in the position dialog. It is not always the upper left point of the element - for a rectangle it is, but for a circle it sits in the center, and for a **Borehole log** element it sits in the middle of the borehole. Turn on the **Draw** option to display the position point alongside the usual selection points, and pick its highlight color.

**Indicate kind of object frame data using symbols.** With this option on, object frames and multi-object frames carry sphere symbols showing whether objects are linked to them. An empty sphere means no relation; a filled sphere shows the kind of relation - red for an object, blue for a measurement point. See [Object Frames](object-frames.md#visual-indicators) for how to read the indicators in context.

**Show guidelines when moving elements.** When you nudge an element with the keyboard (`Shift + arrow keys` or `Ctrl + arrow keys`), GeoDin checks whether the element's sides line up exactly with existing elements. When they do, a briefly visible guideline appears, which makes positioning along horizontal and vertical axes faster. The option can be turned on and off.

## Reference: Layout interface settings

Layout interfaces provide configuration panels for different element types, accessible without opening the full editor.

| Interface | Applies to |
|---|---|
| **Scales** | Borehole log, well design, data sequence, samples |
| **Labeling** | Text and variable text elements |
| **Data sequence** | Data sequence elements |
| **Reports** | Measurement value graphic elements |
| **Time series** | Measurement value graphic elements (time series mode) |
| **Selection** | Report, data sequence, and measurement value graphic elements |
| **XY-diagram** | Measurement value graphic elements (XY mode) |

Elements must have **Make available as quick setting** enabled to appear in layout interfaces. For the full list of quick-setting controls per interface type, see [Layout interface quick settings](#reference-layout-interface-quick-settings) below.

<!-- src: help/H0000002896#choosing-interfaces -->

### Choosing which interfaces a layout offers

Before the interfaces can be used, decide which of them this particular layout should expose. Click **Edit** in the **Layout interfaces** window to add or remove quick settings. All available options are listed grouped in sections; mark the ones the layout template should offer, and the views on the right show a preview of the layout as you go.

Options that make no sense for the current layout cannot be selected. A layout that contains only a report of measurement values, for instance, has no graphic element that a vertical scale could apply to, so the **Vertical scale** quick setting stays unselectable.

{% hint style="info" %}
Set **Changes cannot be saved within the layout overview** to stop layouts being overwritten from the overview. Detail editing and saving remain possible.
{% endhint %}

## Reference: Layout interface quick settings

Layout interfaces allow end users to adjust layout parameters without opening the full layout editor. Elements must have **Make available as quick setting** enabled.

| Interface | What it controls | Requirements |
|---|---|---|
| **Content for text elements** | Edit text/variable text content | At least one text element with quick setting enabled |
| **Parameter for left axis** | Left axis parameter, view, decimal places, and label | Time series diagram |
| **Parameter for right axis** | Right axis parameter, view, decimal places, and label | Time series diagram |
| **Axis range left Y-Axis** | Left Y-axis scale range | Time series with "Draw scale and labels" enabled |
| **Axis range right Y-Axis** | Right Y-axis scale range | Time series with "Draw scale and labels" enabled |
| **X-Axis range** | X-axis range and decimal places | XY-diagram |
| **Y-Axis range** | Y-axis range and decimal places | XY-diagram |
| **Selection parameter** | Selector/post-selection conditions (numbers, strings, dates, HAS operator with comma-separated terms, `%` wildcard) | Elements with selectors; selectors sharing a name are updated together |

<!-- src: help/H0000006999#transferable-parameters -->

### Parameters a quick setting can carry

A quick setting is only offered when the matching parameter was set in the target layout beforehand. The parameters available are grouped as follows:

| Group | Parameters |
|---|---|
| **Layout** | Drawing layers |
| **Scales** | Vertical scale, Horizontal scale, Orientation to ground level |
| **Labels** | Text of text elements, Sheet number |
| **Exploration** | Display range of the data sequence |
| **Reports** | List comparison, Measuring program |
| **Time series** | Time series representation of the last..., Range of time, Parameter of left axis, Parameter of right axis |
| **XY-plot** | Parameter of X-axis, Display range of X-axis, Parameter of Y-axis, Display range of Y-axis |
| **Schoeller-plot** | Display range of Y-axis |
| **Selection** | Selection parameter |

Quick-setting parameters overwrite the corresponding parameters on the elements of the target layout, and act as restrictions in the target layout's queries.

{% hint style="warning" %}
Quick settings do not reduce the amount of data read from the database. If you hold ten years of data and use a quick setting to show only the current period, GeoDin still fetches all of it and discards what is not displayed. To limit what comes out of the database, use parameterized queries instead.
{% endhint %}

## Reference: Unit systems in layouts

Display units from defined unit systems can be used in layouts. The depth scale reacts to different depth units for borehole profiles, extensions, samples, and soundings. Switching the unit system changes the displayed values without affecting the paper layout. The list of selectable unit systems can be restricted per layout.

<!-- src: help/H0000010978#defining-unit-systems -->

### Where unit systems come from

A unit system is a system-wide assignment of parameters to units. Beyond switching the unit on an individual parameter, a unit system switches every parameter it covers to the corresponding measurement unit in one click. Switch between systems from the file menu at the top left of the window.

Three unit systems are predefined: database unit, metric system, and Anglo-American system. Further systems can be defined freely. Copying an existing unit system brings its unit assignments and parameters with it, which is the comfortable way to adapt a system rather than building one from scratch.

## Reference: Page layout and paper size

<!-- src: help/H0000001895#page-layout -->

The editing window shows the paper size for the drawing as a shaded frame. Set the paper size in **File > Page layout**, or in the corresponding branch in the object properties of the graphic.

The paper sizes that can be chosen directly are A0 to A10 plus a range of American sizes. Self-defined formats are entered through **Paper formats** or the **Custom** checkbox; width and length can range from 5 to 1000 cm.

The page frame in the preview window has the selected page size, and the graphic is shown exactly as it will print - so design with the page margin in mind.

{% hint style="warning" %}
Almost every printer produces a page margin of its own, so graphic elements placed very close to the edge of the page may be truncated in the printout.
{% endhint %}

A graphic can be sent to any printer regardless of the paper format selected in the layout. When the graphic does not fit, GeoDin automatically offers to split it across several individual pages.

Tick **Make available as quick setting** to let users pick the paper size from the quick settings in the layout overview.

## Reference: Paper format quick settings

Paper formats can be included as layout quick settings, allowing users to switch page size without editing the layout. The default setting includes both size and orientation; orientation selection can be removed. Custom paper sizes from other installations are marked with a warning icon and can be added to the local installation via **Add paper formats** (requires write access to the Syslib directory).

<!-- src: help/H0000008750#defining-paper-formats -->

Special paper sizes for your layouts are defined in the **Paper formats** system-configuration dialog. Once defined they are available in your graphics like any built-in size.

The definitions are stored in the file `papersizes.sys` in the Syslib folder, which requires write access. Copying that file to another GeoDin installation transfers the custom paper sizes with it.
