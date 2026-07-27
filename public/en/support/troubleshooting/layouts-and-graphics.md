---
description: Fixes for GeoDin layout and graphic problems - the colored dashed frame diagnostic, grayed-out buttons and fields, depth-scale issues, and layout recovery.
---

# Layout and graphic problems

Symptom-first fixes for layouts and graphic elements. For the layout
fundamentals, see [Creating custom layouts](../../data-visualization/creating-custom-layouts.md)
and [Object frames](../../data-visualization/layouts/object-frames.md).

## A graphic element shows only a colored dashed frame

<!-- src: support/dashed-frame-colors#diagnostic -->

When a geological graphic element (for example a borehole log) renders as an
empty frame with a dashed outline, the color tells you why:

| Color | Meaning | Fix |
|---|---|---|
| **Blue** | The element is not linked to a borehole - the object frame has no database or object connection (its corner sphere is gray or empty), or the element points to an object number with no object | Link the object frame to a database object, or fix the object number |
| **Fuchsia** | Linked, but the borehole has no data for this element (for example no layer data for a borehole log) | Enter or import the missing data |
| **Red** | Linked and data exists, but the element is drawn too small to render | Enlarge the graphic element |
| **Gray** | No valid license for the required module (Logs/Essentials for borehole profile, well design, groundwater level, samples, special characters, height scale; Labs/Pro for measurement graphics) | Extend your license - see [Get support](../get-support.md) |

## Graphic-element buttons stay grayed out

<!-- src: transcript/object-frame-activation#fix -->

After adding an object frame to a layout, the buttons for graphic elements
(borehole log, table, and so on) only enable while the frame is active. Click
the object frame's edge to re-activate it, then add the element.

## All data fields are grayed out

<!-- src: transcript/editing-mode#fix -->

If you cannot type into any data field, editing mode is not switched on. Start
editing mode first; the fields then become editable.

## A shared default layout was overwritten

<!-- src: transcript/default-layout-restore#fix -->

On a shared installation, saving over a standard layout changes it for
everyone, and there is no built-in revert. Restore the layout from your backup
copy of the original layout file. To prevent recurrence, keep the delivered
default layouts as separate, untouched copies and always work on duplicates.

## Depth-scale labels render clumped or illegible

<!-- src: transcript/depth-scale-labels#fix -->

When depth labels overlap or bunch together, the depth-scale interval does not
fit the depth range of the object. Adjust the depth-scale interval and the
fit-to-page or page-break settings for the object's depth range.

## Cross-section scale does not update after creation

<!-- src: transcript/cross-section-scale#fix -->

The vertical and horizontal scales of a cross-section are fixed when the
section is created; changing them afterwards does not re-adapt hand-drawn
corrections. Set the intended scales before creating the section. See
[Creating cross-sections](../../data-visualization/cross-sections/creating-cross-sections.md).

## Known issue: clearing the depth-scale division field freezes GeoDin

<!-- src: transcript/depth-scale-freeze#known-issue -->

{% hint style="warning" %}
Deleting the value in the depth-scale division field (leaving it empty) can
freeze GeoDin. Do not clear the field - overwrite the value directly with the
new one. If GeoDin freezes this way, end the process and restart; then re-open
the layout and set a valid division value.
{% endhint %}
