
<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Layout Editor Basics

Templates/layouts are created in the "Graphic Printing and Editing" method and accessed via the Layout section. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

Default layouts ship pre-installed in `C:\ProgramData\GeoDin\Layouts\`, organized by object type (e.g., G1 has borehole logs, stiff/parameter layouts, water content vs depth, Atterberg limits). <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

Users can add their own layout folders via Available Layouts > blue "+" button > browse to a folder (e.g., a network share for team layouts). <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

Two file formats for saved layouts: **GLO (GeoDin Layout)** = template, no data connection; **GGF (GeoDin Graphic Format)** = layout + connected data (e.g., a specific cross section with 10 boreholes baked in). <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

Save as GLO for reusable templates; save as GGF to preserve a specific graphic with its connected objects. GGF files can be drag-and-dropped into GeoDin to open with original data connections. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

Only GLO files are listed in the Available Layouts overview; GGF files are not shown there. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

When editing a default layout, always use File > Save As (not Save) to avoid overwriting the shipped default; recommended to create a folder like `[CLIENT]_Layouts` and copy defaults there. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

If a default layout is accidentally overwritten, there is no built-in "reset to default" — the user must request a copy from the GeoDin team (no public re-download link). <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

Default layouts are stored once per GeoDin installation; in a network install, overwriting a default affects all users on that install. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

Layout editor menu bar is divided into two sections: **Simple graphic elements** (lines, polygons, rectangles, text) and **Complex graphic elements** (object frame, borehole, depth scale, samples, groundwater, data sequence, measurement value graphic, report element, well design, legend, image). <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

To start a new layout: open the graphic editing method with no layout loaded, double-click the empty canvas to show the Object Properties panel, then drop in a complex element. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

Layouts use multiple drawing layers visible in the Layer Overview panel; layers can be set visible/invisible, brought to front or back. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

**Layer Overview** button (lower-left corner) opens the overview of layout layers and drawing elements. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

**Edit Graphics** button (lower-left) opens a new blank layout in edit mode. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

Layouts can be fully customized (delete fields, replace logo) via Edit Mode from the upper-right toolbar. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

The in-product F1 context-sensitive help is extremely comprehensive on template creation topics (object frames, single vs multiple frames, macros, dynamic objects) and opens at the section matching whatever part of GeoDin is currently in focus. <!-- src: transcript/forms-templates-customization#layout-editor-basics -->

## Layout Snippets

A layout can embed another layout as a snippet (e.g., header/footer stored once in `Common_A4_LHF.GLO` and referenced by many templates). <!-- src: transcript/forms-templates-customization#layout-snippets -->

Snippet pattern lets users change a company logo in one snippet file and have all 50 layouts using it update automatically. <!-- src: transcript/forms-templates-customization#layout-snippets -->

A snippet appears in edit mode as a green-boxed region that cannot be edited inline — the user must open the snippet layout directly to edit. <!-- src: transcript/forms-templates-customization#layout-snippets -->

### Arrangement in the fore- or background

**Arrangement in the fore- or background**\
\
Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph.

Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/2260 -->

Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/2454 -->

Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/28 -->

Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/39 -->

Overlapping graphic elements are displayed in order of insertion into the graph. This order can be changed using the icons **Bring to front** and **Send to back**. If the graphic element is part of a group the arrangement is only changed inside the group, but the other elements of the graph are not affected. If necessary the group frame has to be moved in the fore- or background, to receive a change of the arrangement of the grouped elements relative to the rest of the graph. <!-- src: help/05/618 -->

## Drawing layers


Layouts use multiple drawing layers, visible in the **Layer Overview** panel (lower-left corner). Layers can be toggled visible/invisible, reordered, and locked. Use separate layers to isolate fixed elements (title blocks, logos) from variable graphic elements.

## Layout editor menu


The editor toolbar is divided into two sections:

* **Simple graphic elements:** lines, polygons, rectangles, text
* **Complex graphic elements:** object frame, borehole log, depth scale, samples, groundwater, data sequence, measurement value graphic, report element, well design, legend, image

{% hint style="info" %}
The in-product **F1** context-sensitive help is comprehensive on template creation topics and opens at the section matching the part of GeoDin currently in focus.
{% endhint %}

***

## Snap function


The snap function (`Ctrl+K`) provides exact alignment when drawing graphic elements. Endpoints, corners, and nodal points snap automatically to nearby existing points within a configurable distance (1-50 mm via `Preferences > Snap preferences`). Works across all drawing layers. Affected elements: lines, rectangles, polylines, and borehole profiles.

## Layout interface settings


Layout interfaces provide configuration panels for different element types:

| Interface         | Applies to                                                    |
| ----------------- | ------------------------------------------------------------- |
| **Scales**        | Borehole log, well design, data sequence, samples             |
| **Labeling**      | Text and variable text elements                               |
| **Data sequence** | Data sequence elements                                        |
| **Reports**       | Measurement value graphic elements                            |
| **Time series**   | Measurement value graphic elements (time series mode)         |
| **Selection**     | Report, data sequence, and measurement value graphic elements |
| **XY-diagram**    | Measurement value graphic elements (XY mode)                  |

## Unit systems in layouts


Display units from defined unit systems can be used in layouts. The depth scale reacts to different depth units for borehole profiles, extensions, samples, and soundings. Switching the unit system changes the displayed values without affecting the paper layout. The list of selectable unit systems can be restricted per layout.

## Inserting and managing elements


| Action                   | How to                                                                                                                                                                                                    |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Insert element**       | Select the element type from the toolbar, click and drag on the page to define position and size. If a group or object frame is selected, new elements are added inside it.                               |
| **Duplicate**            | `Edit > Duplicate` or `Ctrl+D` on a selected element.                                                                                                                                                     |
| **Delete**               | `Edit > Delete` or `Del` key. `Edit > Cut` also removes the element but places it on the clipboard.                                                                                                       |
| **Select one**           | Click an element. Selected elements show 4 gray corners (lines show 2 gray corners at each end).                                                                                                          |
| **Select multiple**      | Shift+click or drag a selection frame (elements must be completely inside the frame).                                                                                                                     |
| **Select all**           | `Edit > Select All` or `Ctrl+A`.                                                                                                                                                                          |
| **Select a group frame** | Click the border area, or Ctrl+click inside the frame. Selected group frames show 4 gray side lines.                                                                                                      |
| **Select same type**     | Select one element, then `Edit > Select same objects` to select all elements of that type — useful for batch-changing fonts or styles.                                                                    |
| **Object Properties**    | Double-click an element, or press `F11`, or use `Edit > Object Properties`. Properties update automatically when selecting different elements. The panel position (left/right) can be set in Preferences. |
| **Find hidden elements** | In the tree view of graphic elements, single-click an entry to highlight it briefly with blinking blue markers. Double-click to select and edit it.                                                       |

## Grouping elements


| Action                 | How to                                                                                                                                                             |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Group**              | Select multiple elements, then use the Group icon or `Arrange > Group`.                                                                                            |
| **Ungroup**            | `Arrange > Ungroup` or the Ungroup icon.                                                                                                                           |
| **Lock/Unlock**        | Lock group elements to prevent accidental edits. Unlock to modify individual elements within the group (elements can only be moved/scaled within the group frame). |
| **Add to group**       | Select the group frame first, then insert the new element — it automatically becomes part of the group.                                                            |
| **Merge groups**       | `Arrange > Merge groups` combines two or more groups (or object frames) into one. This can unite different layouts into a single object frame.                     |
| **Multiple selection** | When multiple elements are selected, display/arrangement functions (move, z-order, fix/unfix) apply to all at once.                                                |

> Grouping inside a group is not possible. Geological graphic elements are already grouped and cannot be grouped further.

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

## Layout interface quick settings


Layout interfaces allow end users to adjust layout parameters without opening the full layout editor. Elements must have "Make available as quick setting" enabled.

| Interface                     | What it controls                                                                                                    | Requirements                                                           |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| **Content for text elements** | Edit text/variable text content                                                                                     | At least one text element with quick setting enabled                   |
| **Parameter for left axis**   | Left axis parameter, view, decimal places, and label                                                                | Time series diagram                                                    |
| **Parameter for right axis**  | Right axis parameter, view, decimal places, and label                                                               | Time series diagram                                                    |
| **Axis range left Y-Axis**    | Left Y-axis scale range                                                                                             | Time series with "Draw scale and labels" enabled                       |
| **Axis range right Y-Axis**   | Right Y-axis scale range                                                                                            | Time series with "Draw scale and labels" enabled                       |
| **X-Axis range**              | X-axis range and decimal places                                                                                     | XY-diagram                                                             |
| **Y-Axis range**              | Y-axis range and decimal places                                                                                     | XY-diagram                                                             |
| **Selection parameter**       | Selector/post-selection conditions (numbers, strings, dates, HAS operator with comma-separated terms, `%` wildcard) | Elements with selectors; selectors sharing a name are updated together |

## Paper format quick settings


Paper formats can be included as layout quick settings, allowing users to switch page size without editing the layout. The default setting includes both size and orientation; orientation selection can be removed. Custom paper sizes from other installations are marked with a warning icon and can be added to the local installation via "Add paper formats" (requires write access to the Syslib directory).
