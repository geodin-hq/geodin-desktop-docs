---
description: Structural Changes to Geotechnical Data Types - Versions 9.0.6 and 9.0.7
---

# Versions 9.0.6 and 9.0.7 — Structural Changes

With the release of object type versions **9.0.6** and **9.0.7**, both minor and major adjustments were made to the object type **Geotechnical investigation EN ISO 22475 (2018)** \[ENISO002] and its associated geotechnical data types.

These changes include:

* Adaptations to **DIN 18196 (2023)**
* Adaptations to **DIN 4023 (2023)**
* Structural changes to the geotechnical data types

This page describes **only the structural changes**.\
\
Information on further, [non‑structural adjustments](versions-9.0.6-and-9.0.7-general-adaptations.md) is documented in a separate Help Centre article.

### Structural Changes to the Geotechnical Data Types

To avoid future conflicts with the GeoDin object type **Location \[G1BORLOG]**, the **short names of several geotechnical data types** belonging to the object type _Geotechnical investigation EN ISO 22475 (2018)_ had to be adapted.

***

### Changes to Data Type Short Names

| Data type / Data type group    | New short name | Old short name |
| ------------------------------ | -------------- | -------------- |
| (G) Chemical analysis          | CHA            | CHL            |
| (G) CD‑triaxial                | GCD            | CDT            |
| (G) Laboratory samples         | GLS            | LSM            |
| (G) Oedometer                  | GOT            | OED            |
| Measurement data OE            | XGO            | XOE            |
| (G) Particle size distribution | GPS            | PSD            |
| Measurement data PS            | XGP            | XPS            |
| (G) Shearbox                   | GSB            | SBT            |
| (G) UU‑triaxial                | GUU            | UUT            |
| Measurement data UU            | XHU            | XUU            |

To clean up the GeoDin configuration and correct any affected databases, corresponding routines were implemented in **GeoDin versions 10.1 and 15**.

For this reason, **installation or update** to object type versions **9.0.6 and 9.0.7** is limited to these GeoDin versions.

If the affected data types are used in **layouts and/or queries**, these must be **updated manually** after an object type or database update.

***

### What Happens When Updating to Object Type Version 9.0.7?

To install object type version **9.0.7**, clean up the GeoDin configuration, and correct affected databases if required, **GeoDin version 10.1 or 15** is mandatory.

***

### Determining Your GeoDin Version

To check the GeoDin version currently in use:

* Click the **Info (i)** button in the top‑right corner of the GeoDin user interface
* Select **“Info to GeoDin…”**

### Determining the Object Type Version in Your System

The installed object type version can be checked as follows:

* Open the **System** tab
* Navigate to **System configuration → Object types**
* Select **Geotechnical investigation EN ISO 22475 (2008)**
* Open **Properties**

### Backup Recommendation Before Updating

Before updating the object type, it is strongly recommended to:

* Back up the **Syslib directory**, usually located at:
  * `C:\ProgramData\GeoDin`
  * `C:\ProgramData\Fugro\GeoDin`
* Back up the affected geotechnical data types via:
  * **System → System configuration → Data types**
  * Use the **Export data types** method

### Determining the Object Type Version in Your Database

The object type version registered in a database is displayed **during a database update** in the dialog:

**“Database structure: \[DATABASE NAME]”**

A backup of the relevant database is strongly recommended before updating.

### Cleaning Up the GeoDin Configuration

#### Changes to the System Configuration

#### Case 1

**EN ISO 22475 (2018) version 9.0.5 or older installed**

When updating to version **9.0.7**:

* Short names of affected geotechnical data types are updated automatically
* Self‑created data type parameters are **retained**

#### Case 2

**EN ISO 22475 (2018) version 9.0.5 or older**\
**Location \[G1BORLOG] also installed**

When updating to version **9.0.7**:

* Object type **Location \[G1BORLOG]** and all associated data types are **uninstalled**
* EN ISO 22475 geotechnical data types are uninstalled and re‑added with new short names
* Self‑created data type parameters are **lost**

If the **Location** object type is still required, please contact **support@geodin.com**.

#### Case 3

**EN ISO 22475 (2018) version 9.0.6 installed**\
**Location \[G1BORLOG] may also be installed**

When updating to version **9.0.7**:

* Short name `UUT` of _(G) UU‑triaxial_ is changed to `GUU`
* Short name `XGU` of _Measurement data UU_ is changed to `XHU`
* Self‑created data type parameters are **retained**
* Object type **Location \[G1BORLOG]**, if present, is also retained

### Database Correction During Update

#### Changes to Databases

#### Case 1

**Database with EN ISO 22475 (2018) version 9.0.5 or older**

When updating the database to version **9.0.7**:

* Measurement table names are changed according to the new short names
* Measurement data is written into the new tables

#### Case 2

**Database with EN ISO 22475 (2018) version 9.0.6**

When updating the database to version **9.0.7**:

* Table names for _(G) UU‑triaxial_ and _Measurement data UU_ are adapted
* Measurement data is written into the new tables

#### Case 3

**Database with EN ISO 22475 (2018) version 9.0.5 or older**\
**Location \[G1BORLOG] also registered**

When updating to version **9.0.7**:

* Affected measurement tables are **not corrected automatically**
* Reason: mixture of data type parameters prevents automation

#### Case 4

**Database with EN ISO 22475 (2018) version 9.0.6**\
**Location \[G1BORLOG] also registered**

When updating to version **9.0.7**:

* Table names for _(G) UU‑triaxial_ and _Measurement data UU_ are adapted
* Measurement data is written into the new tables

###
