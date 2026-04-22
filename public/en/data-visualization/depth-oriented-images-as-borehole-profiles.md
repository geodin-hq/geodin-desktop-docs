## Requirements

* Image files in **BMP, JPG, PNG, or TIF** format.
* Document object type **`(DOC) Depth-oriented image [DOC_DEPT]`** installed in GeoDin and registered in the database.

## Step 1: Check object type installation

Verify that `(DOC) Depth-oriented image [DOC_DEPT]` is installed in your GeoDin system. If not, install it (see [Installing Object Types](../navigating-the-geodin-workspace/object-types/installing.md)).

## Step 2: Prepare and attach images

Name your image files clearly (e.g., by drill core section) for easy depth assignment. Add the images as documents to the borehole and register the document description `(DOC) Depth-oriented image [DOC_DEPT]` in the database if needed. For each image, enter depth values under the **Dimensions** tab.

{% hint style="info" %}
Place all core photos in one folder (e.g., `core photos`) for easier display later.
{% endhint %}

<div align="center"><figure><img src=".gitbook/assets/image (42).png" alt=""><figcaption></figcaption></figure></div>

## Step 3: Display images in a layout

1. Use a reference graphic element based on the borehole's vertical scale (e.g., borehole log, well design, samples).
2. Add a **borehole log** element next to the reference element.
3. In the borehole log's **object properties**, set the data source to **Documents**.
4. Click **Browse Documents** and select the folder containing the depth-oriented images.
5. GeoDin will automatically stitch images at the correct depths based on the **Dimensions** tab values.

<figure><img src=".gitbook/assets/image (43).png" alt=""><figcaption></figcaption></figure>

## Optional image display settings

- **Pixel position from/to:** Defines which pixel lines correspond to the depth values. Top margin equals pixel position 0.
- **Pixel position left/right:** Crop unwanted left and right margins by specifying pixel positions.
- **Pixel position header from/to:** Define a header area to display above the image column. Enable "Draw header" in object properties under `Properties > Document settings > Header`.
- **Rotation angle:** Rotate the image before mosaicking into the profile.

---

## Working with borehole elements

Borehole elements support three drawing types: **Graphic Log**, **Tabular Log**, and **Log with Default**. Elements can be resized; a red outline indicates insufficient space for the description text. <!-- src: transcript/forms-templates-customization#borehole-elements -->

The borehole scale can be set to a fixed ratio (1:100, 1:200, etc.), a fixed depth interval (e.g., only show the first 10 m), or "Fit to Page" (dynamic scale per object). Setting an end depth can force a page break — for example, setting end depth to 10 m causes the borehole to continue on page 2. Scale, interval, page break, and fit-to-page settings interact and must be balanced together. <!-- src: transcript/forms-templates-customization#borehole-elements -->

Text descriptions for borehole elements are driven by the `Text Macro > Build` button. For G1 ground descriptions, most information sits inside a single "geological description" macro (unlike other object types which use separate petrography and color macros). <!-- src: transcript/forms-templates-customization#borehole-elements -->

Template layout objects include pre-made borehole logs (with ground description and layer patterns), water level triangle indicators, and borehole design visualizations. Borehole design displays can render the borehole with varying diameters, different casing types, different backfill materials, backfill grain size categories, and special features (concrete rings, piezometer boxes) at the correct depths. <!-- src: transcript/forms-templates-customization#borehole-elements -->

---

## Reference: Borehole log graphic element

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

The **Borehole log / Borehole tab** graphic element renders the borehole log with fill patterns, depth labeling, layer descriptions, and optionally a scaled tabular presentation. The log automatically distributes across multiple pages when the chosen height scale requires it (unless single-page scaling is selected). Use the page navigation icons to switch between pages. <!-- src: help/05/2454 -->

The element can be moved and scaled inside the object frame. All other graphic elements align vertically to the new position automatically. You can insert the borehole log element multiple times in one frame to display the same borehole as both a graphical log and a tabular description side by side. <!-- src: help/05/2454 -->

### Text and labeling

**Labeling with depth:** Depth values of layer boundaries are placed left of the borehole log. Depth values can be displayed in metres below surface or converted relative to the ground level measurement point (absolute). The decimal places option controls precision (default: one decimal place, e.g., 12.4). The borehole's angle of incline can optionally be taken into account, recalculating depth values using the entered angle from the Scale settings. <!-- src: help/05/3041 -->

**Labeling with layer data:** Layer data descriptions are added on the right side of the borehole log. For layers with component descriptions, you can define whether component labeling occurs at the depth where the component is described. The option "Layer description only once" ensures that a layer split across pages is labelled only once. <!-- src: help/05/3041 -->

**Language selection:** A different language than the input language can be selected for text labeling (requires configured [Standards](#main-layers)). Fill pattern presentation is not affected by language selection. Vertical text orientation and tag line styles can also be configured. <!-- src: help/05/3041 -->

### Graphical view

Controls whether the borehole log is drawn (otherwise only labels are displayed). The data presentation supports multiple country norms — with configured standards and fill patterns, borehole logs can be output in the original language with customary patterns, or in a foreign language with different patterns. In "Automatic" mode, the language and presentation norm from data entry are used. The profile width can be set to "Automatic" or a fixed "Default" value. <!-- src: help/05/3043 -->

### Tabular view

For a tabular (scaled) view of layer data, choose between a classic table or an outline with a rectangle, rounded rectangle, or circle. The special outline formats are suitable only for very short texts, such as soil type symbols. <!-- src: help/05/3045 -->

### Main layers and fill patterns

Borehole log presentation is typically based on main layers. Some object types also support component data entry and display. Main layers can be drawn colored or black-and-white, transparent or opaque. For printouts, the line thickness of fill patterns can be selected. <!-- src: help/05/3049 -->

**Fill pattern mixer:** Select the preferred type of fill pattern mixture. To display a layer header profile, a percentage value must be stored in the dictionary under `Special settings > Graphic > Percentage value`. <!-- src: help/05/3120 -->

**Show symbols:** Controls whether components are displayed as symbols. The size and position of symbols relative to the borehole centre can be configured. <!-- src: help/05/3128 -->

**Show areas:** Controls whether components are displayed as areas, with configurable position relative to the borehole centre. <!-- src: help/05/3129 -->

### Layer query

Instead of using fill patterns from the original petrographic description, the borehole log can be filled with patterns from a layer query result. The calculation runs directly before presentation, so corrections to layer features in the layer data editor are immediately reflected. The presentation can be based on a layer query file or individual conditions. <!-- src: help/05/3142 -->

**Individual conditions:** A single query can fill a borehole log without a layer query file. Layers matching the query are filled with a chosen pattern; non-matching layers remain empty. Select the data field, enter the code to search, and choose a fill pattern. <!-- src: help/05/3145 -->

### Consistency display

Controls the display of consistency, compactness, and groundwater symbols on the right side of the borehole. Options include whether to draw the symbols, whether to show them in the automatic legend, and line type configuration. <!-- src: help/05/3172 -->

### Borehole line display

The borehole can be displayed as a vertical line when "Draw line" is activated. With an active centreline, the intersection between centreline and layer boundary becomes a snap point for constructing layers in cross-sections. When the full borehole is displayed, a horizontal line is drawn at the end depth; this line is omitted when only a partial section is shown. <!-- src: help/05/3275 -->

### Text macros

Four text macro modes are available for layer descriptions: <!-- src: help/05/3286 -->

| Mode | Description |
|---|---|
| **Text** | Pre-defined selection of data fields with text translations of dictionary codes |
| **Norm** | Standard macro definitions for layer descriptions based on the collection standard (e.g., DIN 4023, BS5930). Uses codes from the Standard field in the dictionary. |
| **Coding** | Uses raw database codes for labelling |
| **User** | Fully customizable via the `<Build>` button |

Additional options: <!-- src: help/05/3286 -->
- **Reverse slash:** Interprets `\` as a line break
- **Ignore unknown variable names:** Useful for universal layouts built for multiple object types
- **Join same layers:** Unifies adjacent layers in the borehole log when the content of selected data fields is identical

### Document display settings

When displaying depth-oriented images in the borehole log element: <!-- src: help/05/6816 -->

- **Scale pictures on maximum picture width:** When multiple images are used, scales all images to the width of the broadest one.
- **Scale pictures on picture frame:** Scales images to the width of the image frame element. Use with caution — images may be distorted.
- **Edit horizontal display detail:** Manually adjust the displayed image detail by removing pixels from the left or right margin.
- **Position of the detail within the scope:** When the image element is narrower than needed for undistorted display, select the visible portion using the slide control or pixel position input.
- **Horizontal alignment:** Sets the position of the image column within the graphic element frame.

### Image header settings

A header from the first image (smallest start depth) can be displayed above the image column, provided that upper and lower pixel positions for the header area were defined in the document description. Options include "Draw header", "Repeat on every page", and "Edit header range" to remove undesired margins. <!-- src: help/05/6826 -->
