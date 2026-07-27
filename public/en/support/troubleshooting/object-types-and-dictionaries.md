---
description: Fixes for GeoDin object type and dictionary errors - missing object types, dictionaries that fail to load, and standard-change hazards.
---

# Object type and dictionary problems

Symptom-first fixes for errors caused by missing or mismatched object types,
dictionaries, and data types - most common when opening a database received
from a third party. Background: [Object types](../../navigating-the-geodin-workspace/object-types.md)
and [Dictionaries](../../configuration/dictionaries.md).

## "Object type [XYZ] not installed"

<!-- src: support/objektart-nicht-installiert#fix -->

The database references an object type your installation does not have. If it
is a standard object type and you are online, click **Install** in the message
to add it in its standard-delivery state.

Databases received from third parties often carry modified dictionaries or
signatures, so the standard install may still not match. Best practice: ask
the database provider for their system files as well - either their SYSLIB
folder or the exported object type. With their SYSLIB you can either install
the missing object type from it, or keep a second, parallel GeoDin
installation that uses their SYSLIB unchanged (copy your installation folder,
rename it, and swap in the provided SYSLIB), switching installations per
database instead of reinstalling object types each time.

## "The required dictionary [XYZ] could not be loaded"

<!-- src: support/woerterbuch-nicht-geladen#fix -->

Usually caused by missing data-type dictionaries. Click **OK** - the database
and project still open, but edits to fields whose dictionaries are missing
will not save.

Often the culprits are data types that are registered in the database but not
actually used. To remove them:

1. Open the database and confirm the message with **OK**.
2. Start the **Datatype Manager** from the method list.
3. Click **Determine number of records**.
4. Select the data types showing 0 records and remove them with
   **Remove data type**.

If the message persists, ask the database provider for their SYSLIB folder or
exported object type and data types, as with the missing-object-type error
above.

## Data-type conflicts after the EN ISO 22475 9.0.6/9.0.7 update

<!-- src: support/eniso-strukturelle-aenderungen#conflict -->

The 9.0.6/9.0.7 releases of the EN ISO 22475 object type renamed the
geotechnical data-type short names (PSD, OED, UUT, and others) to avoid
clashes with the Location `[G1BORLOG]` object type, and require GeoDin 10.1 or
15.

{% hint style="warning" %}
Back up your SYSLIB and data types before this update. If your database also
uses Location `[G1BORLOG]`, custom parameters can be lost and the database
correction is not automated for mixed cases - contact
[support](../get-support.md) first. Layouts and queries that reference renamed
data types must be adjusted afterwards.
{% endhint %}

## Changing the ground description standard on existing logs

<!-- src: transcript/standard-change#layer-loss -->

{% hint style="danger" %}
Switching the ground description standard on an object that already has layer
data can regenerate the description and remove layer entries below the change.
Back up before changing the standard on existing logs, and verify the layer
data afterwards. If you need to migrate logs between standards, contact
[support](../get-support.md) for the recommended route.
{% endhint %}
