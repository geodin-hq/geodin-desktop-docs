---
description: Dictionaries
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Dictionaries

### Configuration

The system configuration contains all global (project independent) settings in GeoDin. Under the index card \"System\" you can access system configuration. These include dictionaries (Keylists), signature tables, fill patterns, data types etc.

Settings or changes in the system configuration may affect the display of all graphics.

**Example:**

If you change the signature for the key fS (fine sand) in the dictionary \"Petrography\", the fine sand layers of all boreholes will be displayed with the new signature in all graphics from now on.

If you change the appearance of a signature, all surfaces (also older graphics) that are filled with this signature will be displayed with the new signature. This is due to the fact that in the GeoDin graphics for a filled surface only the name of the signature table and the number of the signature are stored and not the appearance of the signature itself.

These examples show that in multi-user environments it is advisable that not everybody should have the rights to change the system configuration to avoid unwanted changes. In GeoDin this is controlled as described in the chapter

**Edit**. <!-- src: help/10/1744 -->

### Dictionaries

All codes, which can be used for the data input in the GeoDin system, are contained in dictionaries. The dictionaries are connected with their particular input fields and comprise lists of codes or text strings, which are allowed as valid inputs or serve as a guide for inputting data.

In addition to input control, the dictionaries are also responsible for the type of graphic display (e.g. which fill pattern is used for granite) and contain various foreign language translations.

All installed dictionaries are displayed in the GeoDin object manager. Each dictionary identifier is preceded by an identifier in round brackets. These identifiers are used to distinguish which object type the dictionary belongs to. This is particularly relevant for dictionaries that exist with the same name for different object types. For example, there will be a dictionary for entering petrography in many object types.

 <!-- src: help/10/1754 -->

### Refresh

With the method **\"Update object type\"** changes to dictionaries and masks can be incorporated in an existing object type. This can be carried out either from the current GeoDin-CD or from a client who provides you with a new set of files.

You can do this from a current GeoDin DVD or our website or you can get a new set of object type files from a third party (e.g. client). In this case, select the directory or zip archive that contains the current files and perform the update.\
When updating, the files with the most recent date are always saved/received. So if you have made changes to your masks or added entries to your dictionaries, they will be preserved as long as the files you want to update with are not even more current than your changes.

**Example**:

You have added an entry to your dictionary on 15.3.2016. The dictionary file to be updated with is from 04.01.1997. Your dictionary file from 15.03.2016 with your entries will be preserved and not \"updated\" with the older file. Conversely, you last edited a dictionary on 02.02.2005, but the file to be updated with is from 06.07.2010. In this case your dictionary file will be overwritten with the one from 06.07.2010.

Please restart GeoDin after the update, e.g. because the mask files are only reloaded when GeoDin is started.

The updated object type only affects dictionaries, masks or internal object type functions, but not the table structure (data fields) of the object type in existing databases.

There are various options for adapting existing databases in your table structure to extensions of the object type:

**1. New database**

1.1 Create a new database.\
1.2 After updating the object type on the system side (see above), create the new table structure in the database by creating a (dummy) object of the updated object type in the new database. This object can then be deleted directly.\
1.3 Now copy the desired objects of the old database into the new database using one of the methods [Copy all projects](../navigating-the-geodin-workspace/projects/copying-and-transferring-projects.md), [Copy project](../navigating-the-geodin-workspace/projects/copying-and-transferring-projects.md) or **Add objects**

**2. Run a publication to customize standard object types** *(only Access databases tested so far)*

2.1 Download the required **Publications** (\<standard object types\> or \<MP surface water\>) and save the \*.GPC file in the CONFIG folder of your GeoDin installation.\
2.2 Open and select the relevant database in GeoDin.\
2.3 Now start the method **\"Publish and Export\"**, select the corresponding publication and execute it.

The object types that can be updated using the publication \"Update standard object types_in_Access-DB\_\" are the following:

\<Abwasser\>

\<Altwasseraufschluss\>

\<Altwasseraufschluss benutzerdefiniert\>

\<Aufschluss Hydrogeologie\>

\<Benutzeraufschluss SEP-kompatibel\>

\<Bodenkundlicher Aufschluss nach KA5\>

\<Bohrung/Sondierung AREAbas-kompatibel\>

\<Brunnen\>

\<Brunnengalerie\>

\<Container\>

\<General borehole log\>

\<Geotechnische Erkundung EN ISO 22475\>

\<Klimamessstation\>

\<Komplettaufschluss DIN 4022 / DIN 4023\>

\<Lagerbereich\>

\<Messpunkt allgemein\>

\<Messpunkt Limnologie\>

\<ÖNORM B4400-1 und -2\>

\<Produktionsanlage\>

\<Sanierungsanlage\>

\<Standardaufschluss gemäß ÖNORM\>

\<Standardaufschluss SEP-kompatibel\>

\<Wasserwerk\>

Publication \"MP_Oberflächenwasser_in_Access-DB_aktualisieren\":

\<Messpunkt Oberflächenwasser\>

The object type

\<Komplettaufschluss SEP-kompatibel\> cannot be updated (not even with the methods mentioned under 1. or 3.).

**3. Update a C/S database using SQL script (recommended only for database administrators)**\
3.1 To update C/S databases, we have provided various SQL scripts for you to download directly from the database for selected object types at http://download.GeoDin.com/SQL_DB-Update_SEP1/ for updating C/S databases. <!-- src: help/10/2194 -->

### Properties

The **\"Properties\"** method displays information about the configuration of the selected object type. This includes the lists of the associated dictionaries, entry masks and signature standards as well as the properties and structures of the associated GeoDin tables. All properties shown are unchangeable for the user in the window. The information serves the purpose of further understanding the object-type-specific data storage and requires further knowledge of the structure and structure of GeoDin object types.

*\[Object type can be created\]*

If this box is ticked, the creation of new objects is permitted in the object type called up. If the tick is removed, existing objects can be viewed and edited, but no new objects can be created, e.g. by mistake.

*\[Allow simultaneous creation of data type structures\]*

The activated option \<**Allow simultaneous creation of data type structures**\> activates the simultaneous creation of data types on the dialogue for the creation of a GeoDin object ([Create object](../navigating-the-geodin-workspace/objects/creating-objects.md)). This way data types can be created optionally, when an object of an object type is created for the first time, if a standard measurement program has been defined for this type (GeoDinHelpLink:\<**Measurement program\>**CLASS_HLP_Conf_DatType_Messprograms#). <!-- src: help/10/2199 -->

### Standards

The GeoDin dictionaries can be managed **multilingually and for multiple standards**, i.e. for each key of a dictionary

1.  the plain text translation of the key - multilingual

2.  the signature intensity, signature type and standard text - multiple standards

can be stored.

Translations of the keys can be entered in the long texts via . These are then used in the interface and graphics depending on the set UI language.

Different signatures or similar can be managed in a dictionary using additional standards .

The display type and/or the translation type can be selected for the graphical display of the drilling columns, expansion plans, variable text elements, etc. This makes it possible, for example, to display a drilling column that has been entered with the DIN abbreviations, both with Dutch labelling and with the corresponding signatures of the NEN standard.

However, the multilingualism of the GeoDin dictionaries can also be used for different interpretations of one and the same key. For these purposes, for example, the \"languages\" USER1 to USER4 can be used to define different signatures or plain texts while retaining the originals.

Each dictionary initially has a **predefined standard** that cannot be changed. When a dictionary is opened, the standard is displayed as the first column in the grid, followed by all other existing standards.

To add a new standard, use the **language / standard** button  in the top toolbar. To add the standard, click on the icon  **Add language / standard** and select the desired standard in the dialogue that opens and close the dialogue by clicking on \<OK\>.

The back translations for the respective keys in the various languages can be entered directly in the plain text columns. The desired signature can also be set individually for each standard for the key. The signature table used for this is the signature table set for the standard.

The following signature tables are assigned to the standards:

**Standard Signature table**

DIN (german) DIN4023

FRE (french) INTFRE

NEN (nederlands) NENNORM

UIS (german) UISNORM

ÖNORM (austrian) OENORM

INT (english) INTENG

USER 1 USERSGN1

USER 2 USERSGN2

USER 3 USERSGN3

USER 4 USERSGN4

***Note:*** *The installation of the GeoDin system does not contain all of the signature tables listed above, as there are no defaults for tables USERSGN1 to USERSGN4, for example. If this is the case, the error message \"File \...GeoDin\\SYSLIB\\USERSGN1.SGN does not exist\" appears when the corresponding standard is selected. To create a signature table USERSGN1.SGN, for example, copy one of the files in the SOURCE folder, e.g. the file DIN4023.SGA, to the name USERSGN1.SGA. The signature table now appears in the Object Manager below the signatures and can be opened using the* ***\"Edit\"*** *method. Select the* ***Create*** *button. The file USERSGN1.SGN is created.*

**Example:**

For the key \*M (metamorphite) in the dictionary \"(SSG) Petrography\", the translation \"METAMORPHIC ROCK\" was entered for the language \"English\". In addition, the corresponding signature from the INTENG signature table was entered:

For example, the following options are available for the graphic and textual representation.

Fig. 1 - Display of the signature and text in accordance with DIN

Fig. 2 - Display of the signature in accordance with DIN, labelling in English

Fig. 3 - Representation of the signature in accordance with British Standards, labelling in English

 <!-- src: help/10/3180 -->

---

## Reference: Comparison lists
<!-- src: help/H0000008081 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

A comparison list (also called a limit list) contains a set of parameters with reference values and units, used for checking measured data against regulatory or project-specific thresholds. Each list must have a unique name within its data type.

**Exporting comparison lists:** Open the List Manager, select a list, and click **Edit list**. In the editor, use the export button to save the list as a text file. The file uses the keyword `[COMPLIST]` followed by the list group name, list name, status, and date. From line 6 onward, parameters are listed as `FIELDNAME=value[unit]` (e.g. `ARS=2.000[µg/l]`). This file can be edited externally and re-imported.

**Importing comparison lists:** In the List Manager, create a new list group if needed, then add a new list using the **Add** button. In the editor, use the **Import** button to read a previously exported text file. The file contents populate the list name and parameters automatically. Lists with duplicate names within the same group are not permitted.

---

## Reference: Comparison parameter properties
<!-- src: help/H0000008095 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

- **Field name** — The parameter to compare against. Once created, the parameter selection is locked; only the value and unit can be edited afterward. Delete and re-add to change the parameter.
- **Value** — The exceedance threshold. When a measured value exceeds this value, the exceedance is flagged in the report.
- **Unit** — The unit of measurement for the comparison value. If the measured value uses a different unit, GeoDin performs automatic unit conversion during comparison.

---

## Reference: Code transformation for XML/dictionary export
<!-- src: help/H0000005585, help/H0000008494 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

When exporting dictionary-coded data to XML, field codes can be transformed to target codes required by the export format.

**With code transformation:** Define a source table and macro, then map source codes to target codes. For example, SEP3 drilling-method codes (HB, HDB, HSB, HSPB, BS) can all be mapped to the XML export code "HK". Two mapping methods are available:

- **Simple transformation list** — Enter source/target code pairs directly in an attached list.
- **Transformation table from a database** — Read the mapping from an Access database table (see Code list database below).

**Code list database properties:**

- **Database** — An Access database containing code transformation definitions.
- **Table** — The table within the database holding the mappings.
- **Field name (source code)** — Column containing the dictionary source codes to transform.
- **Field name (target code)** — Column containing the target codes.
- **Field name (list name)** — Column identifying which code list the mapping belongs to, used as a node restriction during export configuration.

---

## Reference: Linked additional information
<!-- src: help/H0000011315 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

Each dictionary key can link to external information via a web service URL. The link is composed of a **base URL** (defined on the dictionary) and an auto-generated parameter block specifying the dictionary name and key code. Linked information appears as a clickable link in the Dictionary Search dialog.

Example: Base URL `https://www.example.com/` + parameter block `DictionaryItemInfo?Dictionary=S3EPSG&Code=0` produces the full URL `https://www.example.com/DictionaryItemInfo?Dictionary=S3EPSG&Code=0`.

---

## Reference: Search common parent nodes
<!-- src: help/H0000008595 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

This transformation searches for a common superior node in a hierarchical (tree-structured) dictionary.

- **Macro** — A text macro whose return value provides the input codes (e.g. `{$STRAT@C$|$STRATO@C[,]$$STRATU@C$}`).
- **Separators** — The character used to split the macro result into individual components (e.g. `,` for comma-separated values, or `-` for SEP3 code transitions).
- **Dictionary** — Select a tree-structured dictionary whose hierarchy is used to find superior terms.
- **Code list** — An optional code list to translate individual components before the hierarchy lookup.

---

## Reference: Compare elements
<!-- src: help/H0000009029 -->

{% hint style="warning" %}
The following reference content is from legacy product documentation and may describe older interface elements. Verify against the current version of GeoDin.
{% endhint %}

The comparison window shows differences between two versions of a configuration item (e.g. a data type formula vs. an import file's formula). The left side shows the target, the right side the source. Items are colour-coded:

| Colour | Meaning |
|---|---|
| **Green** | Identical items |
| **Red** | Similar items with differing properties |
| **Blue** | Item exists only on this side |
| **Grey** | Item is absent on this side |

Use **Display options** to filter the view. The **Details** buttons in the centre column reveal property-level differences (shown in red). The **Apply** area provides buttons to transfer source properties to the target or delete extra target items.
