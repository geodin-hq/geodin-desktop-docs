---
description: How to edit GeoDin fill pattern and symbol tables, choose between bitmap and vector fill patterns, and read the fill pattern definition format
---

# Fill Patterns and Symbols

## Editing fill patterns and symbols

All the fill patterns and symbols available in the GeoDin system are displayed in the object manager of the system objects (via the **System** tab).

This is based on the files stored in the SOURCE folder of the GeoDin installation. The folder contains files with the extension:

.SGA - Signature Table

.SYA - Symbol Table

These files contain the definitions of the fill patterns and symbols in text format and can be modified using the  ![Edit](../.gitbook/assets/icons/edit.png) **"Edit"** method.

The drawing definitions can be edited in the \<Instructions> text window.

Using the **Preview** button or the **F4** key, the fill patterns and symbols can be greatly enlarged in the preview bar on the right. If you select a fill pattern or symbol in this bar, it will remain visible as the top entry the next time you activate the preview. Double-clicking on a fill pattern or symbol in the preview list takes you to the first line of the associated definition statement.

To finally apply the changes to the drawing definitions, the **Create** button must be used. The current definition file is then compiled and the result is stored in the SYSLIB folder. The compiled signature tables get the file extension .SGN, while compiled symbol tables get the extension .SYM.

To create a new fill pattern or symbol table, simply copy an existing file or create a new text file with the appropriate extension (.SGA or .SYA) in the SOURCE folder. The new file is now displayed in the object manager of the system objects under [_Fill patterns_](fill-patterns-and-symbols.md) or _**Symbols**_. If GeoDin has not been closed in the meantime, you can update the display by right-clicking and selecting the _**Refresh**_ menu item for the corresponding entries.

_**Attention:**_ _The fill pattern \[Empty#0]\[TYPNULL]\[$00FFFFFF] must be defined as the first available fill pattern in every fill pattern table._\
&#xNAN;_&#x44;epending on the local language version, GeoDin may come with a wide variety of fill pattern tables._

_The fill pattern table INTENG.SGN (Source INTENG.SGA) contains the English version of the BS5930 fill patterns and symbols and is therefore identical with the fill pattern table GEODDEF.SGN (Source GEODDEF.SGA). The graphical representation of boreholes uses the INTENG fill pattern table for English language objects. Hence changes to the GEODDEF fill pattern table do not affect the display of boreholes. When filling polygons and other areas in the layout editor, the signature table depends on the selection in the corresponding fill dialogue._\
&#xNAN;_&#x46;or special object types (for example "Geotechnical borehole" or "Botswana Dep. of Geol. Survey") there are custom made fill pattern files (GEOTECH1 and BOTSWANA)._

<!-- src: adhoc/2026-07-16_website-drift -->

_A Hong Kong-specific fill pattern table is available from GeoDin 15.3.39 (release 15.3.39.85, August 2025), supporting the region's geotechnical standard._

## Fill pattern types

<!-- src: help/H0000000502#fill-pattern-types -->
<!-- src: help/H0000000610#fill-pattern-types -->
<!-- src: help/H0000000715#fill-pattern-types -->
<!-- src: help/H0000000844#fill-pattern-types -->
<!-- src: help/H0000001462#fill-pattern-types -->
<!-- src: help/H0000001620#fill-pattern-types -->
<!-- src: help/H0000006802#fill-pattern-types -->
<!-- src: help/H0000006812#fill-pattern-types -->

GeoDin offers two types of fill pattern. Switch between them with the two icons **Bitmap** and **Vector** in the fill dialog.

| Type | How it is generated | Mixing |
|---|---|---|
| **Bitmap** | Depends on the resolution of the output device. Covers filling with a full color as well as the various point and line patterns. | Not mixable. |
| **Vector** | Developed specifically for GeoDin. The pattern is generated independently of the resolution of the output device. | Up to four components, plus one additional component. |

{% hint style="warning" %}
Bitmap fill patterns other than **Full** (that is, full color) are not supported by the internal GeoDin PDF printer.
{% endhint %}

For vector fill patterns you also select which fill pattern table the dialog draws from, so a fill pattern table you created yourself can be used here as well.

### Mixing vector fill patterns

Select a fill pattern either by name in the list or from the fill pattern grid. To mix vector fill patterns, click one of the icons **1** to **4**, or the additional pattern. The ratio is calculated automatically in steps of 25%. For a ratio of 75% to 25%, choose fill pattern 1 and fill pattern 3.

## Symbols

<!-- src: help/H0000002565#symbol-tables -->

Symbols live in symbol tables (`.SYA` source files, compiled to `.SYM`) and are browsed and edited the same way as fill patterns, under the **System** tab. GeoDin ships with a standard table plus several special-purpose tables:

| Symbol table | Contents |
|---|---|
| `GEODEF` | The standard symbol table - the general-purpose symbol set. |
| `#Consistency` | Special symbols for consistency. |
| `#Sampletypes` | Sample symbols, one per sample type. |
| `#Groundwater` | Groundwater symbols. |

{% hint style="info" %}
For groundwater, the number of the graphic symbol is not the number that defines the graphic type in the dictionary. Groundwater symbols are used in several different standards (BS, DIN, OENORM, NEN), so the dictionary defines only the type of groundwater reading - the graphic that represents it differs per standard.
{% endhint %}

## Dictionary properties

In addition to a list of codes and associated fill patterns there are general settings for each dictionary.

### Numbers are converted into amounts

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

### Codes may be combined

\
With this option it can be selected, that single codes of the dictionary can be combined without a separator while entering. This function is used in the dictionary (SSG) Colour, for example, to make it easier to enter different mixed colours:

**Example:**

In the dictionary color mixtures may be entered using combining individual codes: d (dark) and gr (gray) giving dgr to produce dark gray.

### Recoding during data input

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

### First separator divides categories

From the set of delimiters defined for the current dictionary (in the input line to the right of the list of options), the first character can be defined as a division between categories. For example, the semicolon in the SSG Petrography dictionary is used to separate main and secondary components. This option is mainly used in dictionaries with keys to create signatures, as the main components encoded after the selected separator are excluded from the signature.

\
### Text in apostrophes not allowed

If this option is switched on, it is no longer possible to enter comments in single inverted commas. This prevents plain text descriptions in input fields with key lists, as these also make it more difficult to analyse the otherwise coded entries. If the option is switched on, key and free text in inverted commas can be combined in the input field.

### Separator

In the "Separator" input field, all permitted separators are stored in one input field when entering multiple keys. The separators defined for the dictionary may not be used in any key in the dictionary.

**Example:**

;,-()=

***

## Reference: Fill pattern definition format

<!-- src: help/H0000002560#definition-format -->

GeoDin fill patterns are vector graphics. A fill pattern normally describes an area of 1 cm x 1 cm, although other basis areas can be defined. Combinations of individual fill patterns are mixed by GeoDin and depend on a number of factors.

A fill pattern is described by one or several symbols, and each symbol consists of one or more drawing instructions. The coordinates in the drawing instructions are in tenths of a millimeter. The symbol for topsoil, for example, consists of three drawing instructions - `Line`, `FullCircle`, `Line` - and describes a filled circle between two lines.

To keep the number of drawing instructions low, the whole 1 cm x 1 cm area is not defined for every fill pattern: one symbol is usually enough for GeoDin to generate a complete sand fill.

### The instruction block

Fill patterns are defined in text files (`*.sga`), editable in GeoDin under the **System** tab. A single instruction block describes each fill pattern in a fill pattern table. Its first line carries the basic information:

```
[Fill pattern name#Fill pattern number][Fill pattern type][Fill pattern color][Width X, Height Y][Pen color for fill pattern]
```

| Bracket pair | Required | Meaning |
|---|---|---|
| Name and number | Yes | Name and number separated by a double cross (`#`). The name appears in the fill lists. The number must be unique within the fill pattern table, determines the sort order, and links codes to fill patterns. Numbering does not have to be continuous - gaps are allowed. |
| Type | Yes | The signature type - see the type table below. |
| Fill pattern color | Yes | The standard background color, as a 4-byte hex-coded number. |
| Width X, Height Y | No | An alternative basis area. Used only by type 4 fill patterns and ignored for the other types; a type 4 signature with no area defined uses 100 x 100 units. |
| Pen color | No | The pen color for the fill pattern, also as a 4-byte hex-coded number. The basis-area bracket pair may be left empty if the standard size is wanted. |

Colors are 4-byte hex-coded numbers in which the lower three bytes carry the color intensity for blue, green, and red (RGB model):

| Value | Color |
|---|---|
| `$00FF0000` | Pure blue, highest intensity |
| `$0000FF00` | Pure green |
| `$000000FF` | Pure red |
| `$00000000` | Black |
| `$00FFFFFF` | White |

An instruction block that uses both optional bracket pairs, with the basis area left empty:

```
[Gravel#1][TYP1C][$00D2FFFF][][$00FF00FF]
```

### Worked example

The `GRAVEL#5` fill pattern is a type 1C pattern - three symbols - on a light background:

```
[GRAVEL#5][TYP1C][$00D2FFFF]
Symbol1:
Circle=0,0,6
FullCircle=0,0,1
Symbol2:
Circle=0,0,6
Symbol3:
Circle=0,0,4
```

The coordinates of the drawing instructions refer to the zero point of the symbol in the cm grid.

### Signature types

| Type | Description | Symbol extent |
|---|---|---|
| `TYP1A`, `TYP1B`, `TYP1C` | Up to three symbols (one, two, and three respectively). The cm raster is filled automatically, using twelve defined positions for the single symbols. | Restricted to `-15,-8,15,8` to avoid overlapping |
| `TYP2` | A single symbol drawn four times in the 1 cm x 1 cm grid. | Restricted to `-25,-10,25,10` to avoid overlapping |
| `TYP3A` | One symbol describes the entire 1 cm x 1 cm area and is not mixed with other symbols, although it is scaled for mixtures. | Maximum `0,0,100,100` |
| `TYP3B` | As `TYP3A`, but can be mixed with other symbols (drawn overlapping). Best reserved for special characteristics such as the occurrence of fossils. | Maximum `0,0,100,100` |
| `TYP4A` | One symbol describes the entire basis area, which may be between 10 and 500 units in both X and Y. Not mixed with other symbols, although it is scaled for mixtures. | The defined basis area |
| `TYP4B` | As `TYP4A`, but can be mixed with other symbols (overlapping). | The defined basis area |
| `TYP5A`, `TYP5B` | One or two symbols that GeoDin mixes into other fill patterns automatically, without overlapping. The symbols are drawn into the space between the symbols of a type 1 fill pattern, adding to its twelve symbol positions. | As type 1 |

### Drawing instructions

| Parameters | Instructions | Coordinates |
|---|---|---|
| 3 | `Circle`, `FullCircle` | Center (X,Y) and radius (R) |
| 4 | `Line` | Start and end point (X1,Y1,X2,Y2) |
| 4 | `Rectangle`, `FullRectangle`, `Ellipse`, `FullEllipse` | Upper left corner and lower right corner (X1,Y1,X2,Y2) |
| 8 | `Arc`, `Chord`, `FullChord`, `Pie`, `FullPie` | X1,Y1,X2,Y2,X3,Y3,X4,Y4 |
| up to 32 | `PolyLine`, `FullPolyLine` | Up to 32 turning points (X1,Y1,X2,Y2,...) |

* **Arc** draws a curve along the path of the ellipse enclosed by the given rectangle. (X1,Y1) and (X2,Y2) define that rectangle. The curve begins where the ellipse edge meets the line from the center of the ellipse to the starting point (X3,Y3), and is drawn counter-clockwise up to the point where the ellipse edge cuts the line from the center to the finishing point (X4,Y4).
* **Chord** draws a line connecting two points of the ellipse enclosed in the given rectangle. (X1,Y1) and (X2,Y2) define the enclosing rectangle, (X3,Y3) and (X4,Y4) the start and end of the line.
* **Pie** draws a section of the ellipse enclosed in the rectangle. (X1,Y1) and (X2,Y2) define the enclosing rectangle, (X3,Y3) and (X4,Y4) the end points of the two lines starting from the center of the ellipse.
* **FullPolyLine** automatically connects the starting and finishing point.
