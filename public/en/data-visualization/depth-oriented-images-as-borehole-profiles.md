# Page 1

#### **Requirements**

* Image files in **BMP, JPG, PNG, or TIF** format.
* Document object type **`(DOC) Depth-oriented image [DOC_DEPT]`** installed in GeoDin and registered in the database.

#### **Steps**

**1. Check Object Type Installation**

* Verify that **`(DOC) Depth-oriented image [DOC_DEPT]`** is installed in your GeoDin system.
* If not, install it (see Installing Object Types).

**2. Prepare and Attach Images**

* Name image files clearly (e.g., drill core sections) for easy depth assignment.
* Add images as documents to the borehole.
* Register the document description **`(DOC) Depth-oriented image [DOC_DEPT]`** in the database if needed.
* Enter depth values for each image under the **Dimensions** tab.
* **Tip:** Place all core photos in one folder (e.g., `core photos`) for easier display later.



<div align="center"><figure><img src="../.gitbook/assets/image (42).png" alt=""><figcaption></figcaption></figure></div>

**3. Display Images in Layout**

* Use a reference graphic element based on the borehole’s vertical scale (e.g., borehole log, well design, samples).
* Add a **borehole log** element next to the reference element.
* In the borehole log’s **object properties**, set the data source to **Documents**.
* Click **Browse Documents** and select the folder containing the depth-oriented images.
* GeoDin will automatically stitch images at the correct depths based on the **Dimensions** tab values.

<figure><img src="../.gitbook/assets/image (43).png" alt=""><figcaption></figcaption></figure>

#### **Optional Settings for Image Display**

* **Pixel position from/to:** Defines which pixel lines correspond to depth values.\
  &#xNAN;_(Top margin = pixel position 0)_
* **Pixel position left/right:** Crop unwanted margins by specifying pixel positions.
* **Pixel position header from/to:** Define a header area to display above the image column.\
  &#xNAN;_(Enable “Draw header” in object properties under Properties → Document settings → Header)_
* **Rotation angle:** Rotate the image before mosaicking.
