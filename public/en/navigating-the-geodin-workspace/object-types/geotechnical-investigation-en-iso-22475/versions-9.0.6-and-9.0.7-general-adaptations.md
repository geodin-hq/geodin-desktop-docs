---
description: General Adaptations - Versions 9.0.6 and 9.0.7
---

# Versions 9.0.6 and 9.0.7 - General Adaptations

With the release of object type versions **9.0.6** and **9.0.7**, both major and minor adjustments were made to the object type **Geotechnical Investigation EN ISO 22475 (2018)** \[ENISO002] and its associated geotechnical data types.

These changes include:

* Adaptations to **DIN 18196 (2023)**
* Adaptations to **DIN 4023 (2023)**
* Improvements to dictionaries, layouts, visualization, data input, and output formats

This page describes the **general adaptations** to the object type.\
\
[Structural changes to geotechnical data types](versions-9.0.6-and-9.0.7-structural-changes.md) are documented separately and should be reviewed **before updating**.

### Corrections

#### Adjustment of the Output for System Variables

The output of the system variables:

* `$TRPLUS` (+ / and)
* `$TRMINUS` (− / to)

is now displayed **without inverted commas**.

***

### Discontinuities

* Multiple keys can now be entered in the field **Roughness (TF\_RAUIG)**

**Screenshot placeholder:**\
`E2_discontinuities_roughness.png`

* The default value for the input field **Type of structure (TYP\_TF)** has been removed\
  This enables the deletion of an existing layer.

<figure><img src="../../../.gitbook/assets/image (88).png" alt=""><figcaption></figcaption></figure>

### Adaptation to DIN 18196 (2023)

#### Soil Groups

Three new soil groups according to **DIN 18169 (2023)** have been added to the dictionary:

**Dictionary:** `(E2) Soil group` \[E2BOHGR]

* Large boulders (BG)
* Boulders (BL)
* Cobbles (BS)

***

### Adaptation to DIN 4023 (2023)

#### Adaptation of Dictionaries for Major and Secondary Components

**Major Components**

**Dictionary:** `(E2) Major components` \[E2PSTYPE]

The following changes were implemented:

* Added entries:
  * _coarse silt_
  * _large boulder_
* Standard text for **organic soil \[EN ISO]** changed from `OR` to `O`\
  (only for the standard **DIN EN ISO (deutsch)**)
* English translation for **DIN EN ISO (deutsch)** adapted\
  (previously displayed in capital letters)

![](<../../../.gitbook/assets/image (89).png>)

***

**Secondary Components**

**Dictionary:** `(E2) Secondary components` \[E2SSTYPE]

The following changes were implemented:

* Added entry:
  * _coarse silty_
* Standard text changes (only for **DIN EN ISO (deutsch)**):
  * _organic \[DIN]_: `h` → `o`
  * _organic \[EN ISO]_: `h` → `o`

***

### Adaptation of Fill Patterns

Fill patterns have been adapted to match the **colour values defined in DIN 4023**.

For the standard **DIN EN ISO (deutsch)**, fill patterns were updated for the following dictionaries:

* `(E2) Major components` \[E2PSTYPE]
* `(E2) Secondary components` \[E2SSTYPE]
* `(E2) Genesis` \[E2GENESE]
* `(E2) Well design – back fill` \[E2ASBVER]
* `(E2) Well design – casing` \[E2ROHEL]

<figure><img src="../../../.gitbook/assets/image (90).png" alt=""><figcaption></figcaption></figure>

***

### Adaptation of the Display for WRT Cutting Conditions

New visualisations were introduced for the following conditions:

* _Highly jointed_ / _Very highly jointed_ (graphic type 46)
* _Liquid_ (graphic type 45)

This was achieved by adapting the dictionary:

**Dictionary:** `(E2) Condition WRT cuttings` \[E2BOHGUT]

<figure><img src="../../../.gitbook/assets/image (91).png" alt=""><figcaption></figcaption></figure>

***

### Adaptation of the Display for Weathering Grade

A new visualisation was introduced for the weathering stage **Residual soil** (graphic type 43) for the standard **DIN EN ISO (German)**.

**Dictionary:** `(E2) Weathering grades` \[E2VERWIT]

For visualisation, the graphic element **Special symbol** with the special symbol type **Weathering grade** can be used.

<figure><img src="../../../.gitbook/assets/image (92).png" alt=""><figcaption></figcaption></figure>

***

### Adaptation of Sample Visualisation

Samples of **category A–E** are now displayed **uniformly in full colour** for the standards:

* DIN EN ISO (deutsch)
* INT (english)

**Exception:** Water samples

**Screenshot placeholder:**\
`E2_samples_categoy_A-E.png`

<figure><img src="../../../.gitbook/assets/image (93).png" alt=""><figcaption></figcaption></figure>

***

### Further General Adaptations

#### New Fields / Parameters

**Layer Data \[E2LAYER]**

* Ground unit (`GROUNDUNIT`)

**Well Design Data – Casing \[E2WDCAS]**

* Diameter nominal (`ELDNWIDE`)

***

#### Adjustment of Field Lengths

**General Data \[E2GENER]**

* Reference (`AKTENZ`): 20 → 40 characters
* Borehole number / short name (`SHORTNAME`): 15 → 25 characters
* Functional supervision (`SUPVIS`): 50 → 100 characters
* Name of borehole (`LONGNAME`): 40 → 50 characters

**Layer Data \[E2LAYER]**

* Additional comments / layer comments (`NOTELAYER`): 100 → 254 characters

### Adjustment of Output Formats

#### Well Design Data

**Data types:**\
`E2WDCAS`, `E2WDHOLE`, `E2WDSPCL`, `E2WDGEN`, `E2WDBCKF`

The display format in the data management method has been adjusted from **0 to 2 decimal places** for all of the following parameters:

* Diameters
* Slit widths
* Slit lengths
* Wall thicknesses

***

### Adjustment of Long Texts

#### Layer Data

**Data type:** `E2LAYER`

* The long text for the field **GROUP** has been renamed from **“group”** to **“soil group”**

***

### Adjustment of Dictionaries

#### Organic Components

**Dictionary:** `(E2) Organic components` \[E2ORGMAT]

* A gradation has been added for the key **humous**:
  * 2 – slightly
  * 4 – very
* Translations have been added for:
  * _slightly_ (`$TRCODE2B`)
  * _very_ (`$TRCODE4B`)

<figure><img src="../../../.gitbook/assets/image (94).png" alt=""><figcaption></figcaption></figure>

***

#### Sample Type

**Dictionary:** `(E2) Sample type` \[E2PROBAR]

* Code **`wlf`** has been added for **thermal conductivity test**

***

### Adaptation of Data Input Masks

#### General

* Parameter descriptions have been added

#### Layer Data

**Data type:** `E2LAYER`

* The field **Ground unit (`GROUNDUNIT`)** has been added to:
  * the **Layer data** tab
  * the **Rock description** tab

***

### Adaptation of the Standard Text in Layouts

_(Object Type Variables)_

In the graphic element **Well design**, the default display has been adjusted for the standard **DIN EN ISO (deutsch)**:

* Borehole diameter (`BLWIDE`) is displayed **without decimal places**
* Internal casing diameter (`ELWIDEI`) is displayed **without decimal places**
* Hole diameter / slit width for casings (`ELPERWID`) is displayed **with two decimal places**

**New text macro:**<br>

<figure><img src="../../../.gitbook/assets/image (95).png" alt=""><figcaption></figcaption></figure>

**Old text macro:**<br>

<figure><img src="../../../.gitbook/assets/image (96).png" alt=""><figcaption></figcaption></figure>
