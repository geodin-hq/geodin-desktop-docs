---
description: Fixes for GeoDin import failures - KSYS coordinate-code errors on SEP data, SEP1 to SEP3 conversion, and AGS imports into SQL databases.
---

# Import and data exchange problems

Symptom-first fixes for data imports that fail or silently drop objects. For
the general import how-tos, see [Importing data](../../data-collection/import.md)
and the [supported data formats](../../data-collection/supported-formats.md)
matrix.

## SEP import fails with "'GK3' is not a valid floating point value"

<!-- src: support/ksys-bereinigen#sep1 -->

Legacy SEP data (SEP1 objects, or SEP3 from older deliveries) can carry
alphanumeric coordinate-system codes such as `GK3` in the KSYS field, where
current versions expect a numeric EPSG code. Importing or copying such objects
fails with this message - or, with SEP 3.5.X, objects are silently not copied.

<!-- src: support/ksys-bereinigen#sep3 -->

The fix is a KSYS cleanup publication that maps the legacy codes to EPSG
(originals are backed up to the object's notes field). Download the matching
`.GPC` file from the German support articles, place it in your installation's
CONFIG folder, and run it via **Publish and Export**:

* SEP1 objects: [Altdaten der SEP1-Objektarten uebernehmen (KSYS bereinigen)](https://support.geodin.com/hc/de/articles/360012769899-Altdaten-der-SEP1-Objektarten-%C3%BCbernehmen-KSYS-bereinigen)
* SEP3 boreholes: [SEP3-Bohrungen in ein anderes Projekt uebernehmen (KSYS bereinigen)](https://support.geodin.com/hc/de/articles/115003069829-SEP3-Bohrungen-in-ein-anderes-Projekt-%C3%BCbernehmen-KSYS-bereinigen)

{% hint style="warning" %}
Back up your database before running the cleanup publication.
{% endhint %}

## Converting SEP1 objects to SEP3

<!-- src: support/sep1-nach-sep3#conversion -->

To convert the SEP1 object types (Benutzeraufschluss, Komplettaufschluss
DIN 4022/4023, Komplettaufschluss and Standardaufschluss SEP-kompatibel) to
the SEP3 object type "Aufschluss Bohrdatenbank SEP3" `[ABDBSEP3]`:

1. Download the conversion configuration
   [ABDBSEP3.ZIP](https://resources.geodin.com/objecttypes/Convert/ABDBSEP3.ZIP)
   and copy it into your installation's configuration folder. It contains
   translation instructions for general, well-design, and layer data.
2. Create or select the target project and start the **Add objects** method.
3. Drag the objects to convert into the object list.
4. Under **Settings**, choose the conversion option **SEP1 -> SEP3** and
   confirm with **OK**.
5. Verify the converted layer data - the original entries are preserved in the
   notes field.

{% hint style="danger" %}
SEP 3.2, 3.2.1, and 3.3 contain a bug that can lose sounding data. Update to a
newer SEP3 version before converting.
{% endhint %}

## AGS import into an SQL database fails

<!-- src: transcript/ags-sql#dummy-object -->

In client/server (SQL) databases the AGS table structure must exist before an
AGS file can be imported. Create a dummy object of the AGS object type first -
this creates the tables - then run the import. See
[AGS import](../../data-collection/import/ags-import.md).
