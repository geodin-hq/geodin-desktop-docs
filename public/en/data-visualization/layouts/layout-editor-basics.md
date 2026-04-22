---
description: Layout Editor Basics
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Layout Editor Basics

## Layout Editor Basics

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
