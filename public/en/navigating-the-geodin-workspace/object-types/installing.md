---
description: 'GeoDin allows you to install object types in three different ways:'
---

# Installing Object Types

GeoDin can install object types in three different ways: directly from the GeoDin website, from a ZIP archive, or from a folder. All three use the same **Install object type** dialog on the **System** tab — the methods differ only in which source you choose in Step 4.

## Method 1: Installation from the GeoDin Website

Current object types can be installed directly from GeoDin’s server:

{% stepper %}
{% step %}
#### Step 1: Open the System tab

Switch to the **System** tab at the top left of the GeoDin user interface.
{% endstep %}
{% step %}
#### Step 2: Select the Object Types node

Open **System Configuration** and select the **Object Types** node.
{% endstep %}
{% step %}
#### Step 3: Start the Install method

Start the **Install** method from this node.
{% endstep %}
{% step %}
#### Step 4: Choose the source

Under the third option **\[From the GeoDin website]**, click the button with the three dots.
{% endstep %}
{% step %}
#### Step 5: Select the object types

Select the object types to install by ticking the box in front of each.
{% endstep %}
{% step %}
#### Step 6: Install

Click **Install**.
{% endstep %}
{% step %}
#### Step 7: Close the dialog

To exit, click **Close**.
{% endstep %}
{% endstepper %}

<figure><img src="../../.gitbook/assets/image (44).png" alt=""><figcaption>The Install object type dialog opened from the System tab. The numbered callouts trace the procedure: System tab (1), Object Types node (2), Install method (3), the "From the GeoDin website" source field with the three-dots button (4), Install (5), and Close (6). The object types are listed by category (Standards, Environment, Geotechnical, Documents, Diverse) to tick before installing.</figcaption></figure>

## Method 2: Installation from a ZIP Archive

If GeoDin is not connected to the Internet:

* Download updated object types manually from:\
  [http://update.geodin.com/objecttypes/](http://update.geodin.com/objecttypes/)\
  &#xNAN;_(Note: Do NOT use the_ [_ObjectTypesAll.zip archive from `/8_save/`_](http://update.geodin.com/objecttypes/8_save/) _for this manual procedure.)_
* Follow the same steps as mentioned in **Section 1** above but select the ZIP archive via the second option in Step 4.

<div align="center"><figure><img src="../../.gitbook/assets/image (45).png" alt=""><figcaption>The same Install object type dialog with the second source field selected — the path to a downloaded ZIP archive is shown, and the contained object types (here under 3_Geotechnical) are listed for ticking before Install.</figcaption></figure></div>

## Method 3: Installation from a Folder

You can also use object types from other GeoDin installations or a shared **SYSLIB** system folder:

* Follow the steps in **Section 1**, but select the corresponding folder (e.g., **SYSLIB**) as the source using the first option in Step 4.

<div align="center"><figure><img src="../../.gitbook/assets/image (46).png" alt=""><figcaption>The Install object type dialog with the first source field selected — a folder path (here a SYSLIB folder under ProgramData) is shown, and the folder's object types are listed by identifier code (e.g. [DOC], [SEP1], [UGS], [BNI]) for ticking before Install.</figcaption></figure></div>

## Update object types

If newer object type definitions are available in the system than in the database, the database structure can be updated here.

In this step, formulas can be executed again. For this, all object types in the database must be updated.

1. Execute formulas activated, all formulas are recalculated.

Existing data is never deleted, even if fields no longer exist in the target structure.
