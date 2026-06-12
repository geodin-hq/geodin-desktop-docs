# Depth-Oriented Images as Borehole Profiles

### Requirements

* Image files in **BMP, JPG, PNG, or TIF** format.
* Document object type **`(DOC) Depth-oriented image [DOC_DEPT]`** installed in GeoDin and registered in the database.

### Step 1: Check object type installation

Verify that `(DOC) Depth-oriented image [DOC_DEPT]` is installed in your GeoDin system. If not, install it (see [Installing Object Types](../navigating-the-geodin-workspace/object-types/installing.md)).

### Step 2: Prepare and attach images

Name your image files clearly (e.g., by drill core section) for easy depth assignment. Add the images as documents to the borehole and register the document description `(DOC) Depth-oriented image [DOC_DEPT]` in the database if needed. For each image, enter depth values under the **Dimensions** tab.

{% hint style="info" %}
Place all core photos in one folder (e.g., `core photos`) for easier display later.
{% endhint %}

<div align="center"><figure><img src="../.gitbook/assets/image (42).png" alt=""><figcaption></figcaption></figure></div>

### Step 3: Display images in a layout

1. Use a reference graphic element based on the borehole's vertical scale (e.g., borehole log, well design, samples).
2. Add a **borehole log** element next to the reference element.
3. In the borehole log's **object properties**, set the data source to **Documents**.
4. Click **Browse Documents** and select the folder containing the depth-oriented images.
5. GeoDin will automatically stitch images at the correct depths based on the **Dimensions** tab values.

<figure><img src="../.gitbook/assets/image (43).png" alt=""><figcaption></figcaption></figure>

### Optional image display settings

* **Pixel position from/to:** Defines which pixel lines correspond to the depth values. Top margin equals pixel position 0.
* **Pixel position left/right:** Crop unwanted left and right margins by specifying pixel positions.
* **Pixel position header from/to:** Define a header area to display above the image column. Enable "Draw header" in object properties under `Properties > Document settings > Header`.
* **Rotation angle:** Rotate the image before mosaicking into the profile.

***

Detailed borehole-log element reference: [Borehole Elements](layouts/borehole-elements.md).
