---
description: Fill Patterns and Symbols
---

# Fill Patterns and Symbols

### Fill patterns

All the fill patterns and symbols available in the GeoDin system are displayed in the object manager of the system objects (via the **System** tab).

This is based on the files stored in the SOURCE folder of the GeoDin installation. The folder contains files with the extension:

.SGA - Signature Table

.SYA - Symbol Table

These files contain the definitions of the fill patterns and symbols in text format and can be modified using the  ![Edit](../.gitbook/assets/icons/edit.png) **"Edit"** method.

The formats of the fill pattern and symbol definitions are described in the chapter [Fill patterns](fill-patterns-and-symbols.md)

The drawing definitions can be edited in the \<Instructions> text window.

Using the **Preview** button or the **F4** key, the fill patterns and symbols can be greatly enlarged in the preview bar on the right. If you select a fill pattern or symbol in this bar, it will remain visible as the top entry the next time you activate the preview. Double-clicking on a fill pattern or symbol in the preview list takes you to the first line of the associated definition statement.

To finally apply the changes to the drawing definitions, the **Create** button must be used. The current definition file is then compiled and the result is stored in the SYSLIB folder. The compiled signature tables get the file extension .SGN, while compiled symbol tables get the extension .SYM.

To create a new fill pattern or symbol table, simply copy an existing file or create a new text file with the appropriate extension (.SGA or .SYA) in the SOURCE folder. The new file is now displayed in the object manager of the system objects under [_Fill patterns_](fill-patterns-and-symbols.md) or _**Symbols**_. If GeoDin has not been closed in the meantime, you can update the display by right-clicking and selecting the _**Refresh**_ menu item for the corresponding entries.

_**Attention:**_ _The fill pattern \[Empty#0]\[TYPNULL]\[$00FFFFFF] must be defined as the first available fill pattern in every fill pattern table._\
&#xNAN;_&#x44;epending on the local language version, GeoDin may come with a wide variety of fill pattern tables._

_The fill pattern table INTENG.SGN (Source INTENG.SGA) contains the English version of the BS5930 fill patterns and symbols and is therefore identical with the fill pattern table GEODDEF.SGN (Source GEODDEF.SGA). The graphical representation of boreholes uses the INTENG fill pattern table for English language objects. Hence changes to the GEODDEF fill pattern table do not affect the display of boreholes. When filling polygons and other areas in the layout editor, the signature table depends on the selection in the corresponding fill dialogue._\
&#xNAN;_&#x46;or special object types (for example "Geotechnical borehole" or "Botswana Dep. of Geol. Survey") there are custom made fill pattern files (GEOTECH1 and BOTSWANA)._

### Symbols

All the fill patterns and symbols available in the GeoDin system are displayed in the object manager of the system objects (via the **System** tab).

This is based on the files stored in the SOURCE folder of the GeoDin installation. The folder contains files with the extension:

.SGA - Signature Table

.SYA - Symbol Table

These files contain the definitions of the fill patterns and symbols in text format and can be modified using the **"Edit"** method.

The formats of the fill pattern and symbol definitions are described in the chapter [Fill patterns](fill-patterns-and-symbols.md)

The drawing definitions can be edited in the \<Instructions> text window.

Using the **Preview** button or the **F4** key, the fill patterns and symbols can be greatly enlarged in the preview bar on the right. If you select a fill pattern or symbol in this bar, it will remain visible as the top entry the next time you activate the preview. Double-clicking on a fill pattern or symbol in the preview list takes you to the first line of the associated definition statement.

To finally apply the changes to the drawing definitions, the **Create** button must be used. The current definition file is then compiled and the result is stored in the SYSLIB folder. The compiled signature tables get the file extension .SGN, while compiled symbol tables get the extension .SYM.

To create a new fill pattern or symbol table, simply copy an existing file or create a new text file with the appropriate extension (.SGA or .SYA) in the SOURCE folder. The new file is now displayed in the object manager of the system objects under [_Fill patterns_](fill-patterns-and-symbols.md) or _**Symbols**_. If GeoDin has not been closed in the meantime, you can update the display by right-clicking and selecting the _**Refresh**_ menu item for the corresponding entries.

_**Attention:**_ _The fill pattern \[Empty#0]\[TYPNULL]\[$00FFFFFF] must be defined as the first available fill pattern in every fill pattern table._\
&#xNAN;_&#x44;epending on the local language version, GeoDin may come with a wide variety of fill pattern tables._

_The fill pattern table INTENG.SGN (Source INTENG.SGA) contains the English version of the BS5930 fill patterns and symbols and is therefore identical with the fill pattern table GEODDEF.SGN (Source GEODDEF.SGA). The graphical representation of boreholes uses the INTENG fill pattern table for English language objects. Hence changes to the GEODDEF fill pattern table do not affect the display of boreholes. When filling polygons and other areas in the layout editor, the signature table depends on the selection in the corresponding fill dialogue._\
&#xNAN;_&#x46;or special object types (for example "Geotechnical borehole" or "Botswana Dep. of Geol. Survey") there are custom made fill pattern files (GEOTECH1 and BOTSWANA)._

### Dictionary properties

In addition to a list of codes and associated fill patterns there are general settings for each dictionary.

**Numbers are converted into amounts**

\
This option results, that the used keys can be combined with postpositive numbers. These allow quantification or a qualification of the code.

**Example from the Petrography dictionary (SSG):**

fs fine sandy

If a '2' or '4' are used after a code then this is interpreted as slightly or very in some object type dictionaries

fs2 slightly fine sandy

fs4 very fine sandy

The addition of digits is not automatically permitted for every key, but is also controlled by the properties of the key. If the option -Digits are evaluated as part- is switched off, digits are generally evaluated as part of the key. This setting then applies to all keys in the dictionary.

**Example from the Stratigraphy dictionary (SSG):**

so1 Röt 1

**Codes may be combined**

\
With this option it can be selected, that single codes of the dictionary can be combined without a separator while entering. This function is used in the dictionary (SSG) Colour, for example, to make it easier to enter different mixed colours:

**Example:**

In the dictionary color mixtures may be entered using combining individual codes: d (dark) and gr (gray) giving dgr to produce dark gray.

**Recoding during data input**

This option allows keys to be re-coded during input. This can be useful if you need to use older documents for input where outdated keys have been used. To avoid having to constantly check whether the key is out of date and needs to be replaced with a newer key, you can proceed as follows:

Enable the -Recoding during data input- option and close the dialogue with the \<OK> button. This will display an additional column "DB key" next to the column for the key.

The obsolete key and its plaintext are now entered in the dictionary. In addition, the DB KEY field is filled with the new key.

KEY DB-KEY PLAINTEXT

S\_old S\_new Plaintext for Key

The "S\_old" key can now be used when entering data, but it is automatically replaced by "S\_new" when the entry is saved in the database. All keys that do not have an entry in the DB key field are written directly to the database.

Please note that "S\_new" must also exist as a separate dictionary entry or be newly created in order to avoid the error "Abbreviation could not be found in dictionary" during or after updating the data record.

As soon as you have defined an entry with a DB key, this entry is immediately written to the database as an abbreviation. However, the existing data records remain unaffected and are only "recoded" when the data record is changed manually and saved again.

Calling up the old data record and using the Save function in the shift input does not result in recoding, as the data record has not changed. Recoding is only triggered and the new abbreviation saved once the data record has been changed.

Alternatively, you can also use the [Data checks and calculations](../data-analysis/calculation-engine/data-checks-and-validations.md) method and the Find and Replace function contained therein in shift descriptions to replace old abbreviations.

**First separator divides categories**

From the set of delimiters defined for the current dictionary (in the input line to the right of the list of options), the first character can be defined as a division between categories. For example, the semicolon in the SSG Petrography dictionary is used to separate main and secondary components. This option is mainly used in dictionaries with keys to create signatures, as the main components encoded after the selected separator are excluded from the signature.

\
**Text in apostrophes not allowed**

If this option is switched on, it is no longer possible to enter comments in single inverted commas. This prevents plain text descriptions in input fields with key lists, as these also make it more difficult to analyse the otherwise coded entries. If the option is switched on, key and free text in inverted commas can be combined in the input field.

**Separator**

In the "Separator" input field, all permitted separators are stored in one input field when entering multiple keys. The separators defined for the dictionary may not be used in any key in the dictionary.

**Example:**

;,-()=
