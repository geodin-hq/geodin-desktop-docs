# AGS 4

### 1. Overview

The AGS 4 Standard consists of three different object types developed according to AGS 4.1.1 with additions from AGS 4.0.4. The default settings are AGS 4.1.1.

All three must be installed in GeoDin to ensure full functionality:

1. **AGS 4 \[AGSSTAND]**: Includes general location data, geological layers, samples, well design information, object type tables, and data types.
2. **AGS 4 LBSG - Testing schedule \[AGSLBSG]**: Used to define and manage project-specific testing schedules.
3. **AGS 4 PREM - Project-specific time-related remarks \[AGSPREM]**: Used to record project-specific time-dependent events (e.g., “Heavy rainfall for two days; site flooded”).

<figure><img src="../../.gitbook/assets/image (1) (1) (1).png" alt=""><figcaption></figcaption></figure>

Follow the process outlined [here](https://docs.geodin.com/navigating-the-geodin-workspace/object-types/installing) in Method 1 and select **“AGSSTAND\_Geotechnical Geoenvironmental Standard“** to install all three object types including the associated data types.

<figure><img src="../../.gitbook/assets/Bild.png" alt=""><figcaption></figcaption></figure>

#### 1.1	Missing AGS groups in GeoDin

Some AGS groups are not stored in GeoDin because they are either automatically generated during the AGS export process or are not supported by GeoDin’s data model and therefore cannot be stored within the system.

• ABBR – automatically generated on AGS Export\
• DICT – not part of the GeoDin structure\
• FILE – automatically generated on AGS Export\
• TRAN – not imported into GeoDin; users must complete these values during the AGS Export in Step 4\
• TYPE – automatically generated on AGS Export\
• UNIT – GeoDin provides its own dedicated unit dictionary (PU)\
• STND – not part of the GeoDin structure

#### 1.2	General information for GeoDin

**1.2.1 Parameters and Groups**

Parameters or groups that are only included in AGS 4.1.1 and not in AGS 4.0.4 are marked with the note “(4.1)”.

**Example:**\
CTRG – Cyclic triaxial test \[CTRG] is a new group for AGS 4.1.1.

<figure><img src="../../.gitbook/assets/image (3) (1).png" alt=""><figcaption></figcaption></figure>

**1.2.2 Input Forms**

GeoDin allows users to enter data using input forms (masks). GeoDin provides support for entering parameters. The description of the AGS parameter name can be found below the mask as a note containing the long field name and, in brackets, the short field name.

<figure><img src="../../.gitbook/assets/image (4) (1).png" alt=""><figcaption></figcaption></figure>

**1.2.3 Grid View**

When entering data via the grid view, users can switch between the long field name and the AGS short field name. To do this, the user clicks on the column heading with the right mouse button, and a menu bar appears, as shown in the image. Users can also use this menu bar to switch the unit view on and off.

<figure><img src="../../.gitbook/assets/image (5) (1).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../../.gitbook/assets/image (6) (1).png" alt=""><figcaption></figcaption></figure>

**1.2.4 Dictionaries**

* GeoDin includes comprehensive dictionaries that store all AGS codes from the **AGS 4.1.1** and **AGS 4.0.4** standards.
* The following dictionaries are **exceptions** and are intentionally empty:
  * **(AGS) Layer data: GEOL – Second geology code**
  * **(AGS) Layer data: GEOL – Geology code**\
    These must be populated with **project-specific codes** in accordance with AGS standards.
* Users can **edit GeoDin dictionaries**.
  * Once modified, dictionaries are **not updated during an object type update**, ensuring user changes are retained.
* The following **database-specific dictionaries** must be populated by user input:
  * **(AGS) Testing schedule: LBSG – Schedule reference**, used in data type **LBST**
  * **(AGS) Monitoring installation: PIPE – Pipe reference**, used in data type **MONG**\
    These dictionaries are only usable once the required information has been entered into the database.
*   In contrast to the AGS structure, GeoDin includes an **additional EPSG dictionary** to enable location display in:

    * Map preview
    * GeoDin Maps



    <figure><img src="../../.gitbook/assets/image (7) (1).png" alt=""><figcaption></figcaption></figure>
* The following dictionaries are repeatedly used in GeoDin:
  * **(AGS) Units: UNIT – Unit**, defining all units used for data headings and data records
    * Used multiple times for all AGS types = **PU**
  * **(AGS) Yes or No: YN**
    * Used multiple times for all AGS types = **YN**
* The dictionary **(AGS) Data type: PTST – Type of permeability test** contains **duplicate entries** with different upper- and lower-case letters, reflecting differences between **AGS 4.0** and **AGS 4.1** standards.
* GeoDin does **not allow spaces or colons (:)** in dictionary codes.
  * AGS-standard codes containing spaces are converted to **underscores (\_)** within GeoDin.
  * AGS-standard codes containing colons are converted to **minus (-)** within GeoDin.
  * This conversion is handled automatically by the **importer and exporter**, where it is reversed.
* Users can enter their own **ABBR codes** into GeoDin dictionaries.
  * During export, these codes are written to the **ABBR group** with their corresponding long texts.
  * Such entries are marked with **“GeoDin”** instead of **“AGS4”** in the **ABBR\_LIST** heading.

**1.2.5 Presentation with Fill Patterns**

GeoDin uses fill patterns defined in the AGS dictionaries to visually represent geological layers and backfill materials in drilling logs. This enables clear graphical differentiation of materials and ensures consistent, AGS-compliant visual outputs.

**Dictionaries used:**

* **(AGS) Layer data: GEOL – Legend code**
* **(AGS) Well design: BKFL – Backfill legend**

<figure><img src="../../.gitbook/assets/image (8) (1).png" alt=""><figcaption></figcaption></figure>

### 2. Data structure of the GeoDin object types

The below image shows an extensive data structure for the GeoDin object types:

<figure><img src="../../.gitbook/assets/image (2) (1).png" alt=""><figcaption></figcaption></figure>

### 3. Object type AGS 4 \[AGSSTAND]

The **AGS 4 object type** is the **core structure** for AGS data in GeoDin. It contains:

* General location data
* Geological layer descriptions
* Sampling information
* Well design details
* Supplementary object type tables
* Data types for all groups of the **AGS 4.1.1** and **AGS 4.0.4** standards

<figure><img src="../../.gitbook/assets/AGS4.png" alt=""><figcaption></figcaption></figure>

The user can find the AGS groups and the associated parameters in GeoDin in the following structure:

| General data | Layer data | Samples | Well design | Object type tables |
| ------------ | ---------- | ------- | ----------- | ------------------ |
| LOCA         | GEOL       | SAMP    | HDIA        | CDIA               |
|              | DETL       |         | FLSH        | CHIS               |
|              | DLOG       |         | BKFL        | HDPH               |
|              |            |         | PIPE        | DREM               |
|              |            |         | FILT        | DOBS               |
|              |            |         |             | HORN               |

All AGS groups **except LBSG and PREM** that are **not listed above** are implemented in GeoDin as **data types**. The complete list of AGS data types is provided in **Chapter 6 – Data Types**.

#### 3.1	General data – Location details - LOCA

<figure><img src="../../.gitbook/assets/image (9) (1).png" alt=""><figcaption></figcaption></figure>

#### 3.2	Layer data – GEOL, DETL, DLOG

**3.2.1 Field geological description - GEOL**

<figure><img src="../../.gitbook/assets/image (10) (1).png" alt=""><figcaption></figcaption></figure>

**3.2.2 Stratum detail description - DETL**

<figure><img src="../../.gitbook/assets/image (11) (1).png" alt=""><figcaption></figcaption></figure>

**3.2.3 Driller geological description (4.1) - DLOG**

The DLOG group represents the driller’s geological description according to AGS 4.1.1.

<figure><img src="../../.gitbook/assets/image (12).png" alt=""><figcaption></figcaption></figure>

#### 3.3 Samples - SAMP

<figure><img src="../../.gitbook/assets/image (13).png" alt=""><figcaption></figcaption></figure>

#### 3.4 Well design – HDIA, FLSH, BKFL, PIPE, FILT

**3.4.1 Hole diameter - HDIA**

<figure><img src="../../.gitbook/assets/image (14).png" alt=""><figcaption></figcaption></figure>

**3.4.2 Flushing details - FLSH**

<figure><img src="../../.gitbook/assets/image (15).png" alt=""><figcaption></figcaption></figure>

**3.4.3 Backfill - BKFL**

<figure><img src="../../.gitbook/assets/image (16).png" alt=""><figcaption></figcaption></figure>

**3.4.4 Monitoring installation pipe - PIPE**

The user must create a **Pipe reference entry** in order to make it available in the **Pipe reference dictionary** and to use it for the **Monitoring Installations and Instruments \[MONG]** data type.

<figure><img src="../../.gitbook/assets/image (17).png" alt=""><figcaption></figcaption></figure>

The entries of the dictionary **(AGS) Monitoring installation: PIPE - Pipe reference** are only available, if the user creates an entry in the Monitoring installation pipe. The dictionary is database specific.

<figure><img src="../../.gitbook/assets/image (18).png" alt=""><figcaption></figcaption></figure>

**3.4.5 Filter details - FILT**

Pipe reference in monitoring installation pipe (PIPE group) and in filter details should be identical. Pipe name in filter details is used as the name (monitoring point ID) in the MONG group.

<figure><img src="../../.gitbook/assets/image (19).png" alt=""><figcaption></figcaption></figure>

#### 3.5 Additional object type tables – CDIA, CHIS, HDPH, DREM, DOBS, HORN

Additional object type tables store advanced drilling information that supports detailed project documentation:

1. CDIA – Casing diameter
2. CHIS – Chiseling details
3. HDPH – Depth‑related hole information
4. DREM – Depth related remarks
5. DOBS – Drilling advancement observation and parameters
6. HORN – Hole orientation and inclination

<figure><img src="../../.gitbook/assets/image (20).png" alt=""><figcaption></figcaption></figure>

**3.5.1 Casing diameter - CDIA**

<figure><img src="../../.gitbook/assets/image (21).png" alt=""><figcaption></figcaption></figure>

**3.5.2 Chiseling details - CHIS**

<figure><img src="../../.gitbook/assets/image (22).png" alt=""><figcaption></figcaption></figure>

**3.5.3 Depth related hole information - HDPH**

<figure><img src="../../.gitbook/assets/image (23).png" alt=""><figcaption></figcaption></figure>

**3.5.4 Depth related remarks - DREM**

<figure><img src="../../.gitbook/assets/image (24).png" alt=""><figcaption></figcaption></figure>

**3.5.5 Drilling advancement observation and parameters - DOBS**

<figure><img src="../../.gitbook/assets/image (25).png" alt=""><figcaption></figcaption></figure>

**3.5.6 Hole orientation and inclination - HORN**

<figure><img src="../../.gitbook/assets/image (26).png" alt=""><figcaption></figcaption></figure>

### 4. Object type AGS 4 LBSG - Testing schedule \[AGSLBSG]

#### 4.1	General data - Testing schedule - LBSG

<figure><img src="../../.gitbook/assets/image (28).png" alt=""><figcaption></figcaption></figure>

A **testing schedule object** must be created so that its reference can be used in the **Testing Schedule Details \[LBST]** data type records.

The dictionary **(AGS) Testing schedule: LBSG – Schedule reference** is **database‑specific**. Schedule references are only available if corresponding objects are created in the **AGS 4 LBSG – Testing schedule** object type.

Using the **Add objects** method at the level of the opened database, testing schedule objects can be copied from one database to another. Once copied, they are also available as schedule references for the **Testing Schedule Details \[LBST]** data type.

<figure><img src="../../.gitbook/assets/image (27).png" alt=""><figcaption></figcaption></figure>

### 5. Object Type AGS 4 PREM – Project-Specific Time-Related Remarks \[AGSPREM]

#### 5.1	General data - Project specific time related remarks - PREM

The **AGS 4 PREM object** allows users to document project‑specific, time‑dependent events such as delays, weather events, and site accessibility issues. These records form part of the project’s **AGS‑compliant documentation**.

<figure><img src="../../.gitbook/assets/image (29).png" alt=""><figcaption></figcaption></figure>

### 6.	Data types&#x20;

#### 6.1	General information

There are **three types of measuring points** used in the AGS object type:

* **(AGS) Location \[AGL]**
* **(AGS) Samples \[AGS]**
* **(AGS) Screens / filter \[AGF]**

GeoDin includes **86 AGS data types**, each linked either to:

* **(AGS) Location \[AGL]**, or
* **(AGS) Samples \[AGS]**

<figure><img src="../../.gitbook/assets/image (47).png" alt=""><figcaption></figcaption></figure>

There are currently **no data types** linked to **(AGS) Screens / filter \[AGF]**.

#### Naming Pattern

Each data type follows the naming pattern:

**"(AGS) GROUPNAME"**\
Example: **“(AGS) AAVT”**

Data types may include **first-, second-, and third‑level sub data types**, which provide a more detailed structure for specific measurements.

All data types are listed in the tables below.

#### Short Name Convention

The **short name** of each data type:

* consists of **three letters**
* usually uses the **first three letters** of the AGS group name
* if two groups would have identical short names, the **third letter is replaced by the fourth** to differentiate them

#### Measurement Programs

GeoDin provides **measurement programs** for the AGS data types. These programs correspond to the AGS version in use:

* **AGS 4.1.1** (default)
* **AGS 4.0.4**

If differences exist between AGS 4.1.1 and AGS 4.0.4, GeoDin provides the corresponding version‑specific measurement program.

**6.1.1 Location data types**

A total of **28 data types** are linked to **Locations**, including **18 sub‑data types**.

<table data-header-hidden><thead><tr><th valign="bottom">Data type</th><th valign="bottom">Shortname</th><th width="198" valign="bottom">Longname</th><th valign="bottom">GeoDin   Table</th><th valign="bottom">1. level   sub-data type</th><th valign="bottom">2. level   sub-data type</th></tr></thead><tbody><tr><td valign="bottom"><p> </p><p>(AGS) CORE </p><p> </p></td><td valign="bottom"><p> </p><p>COR</p><p> </p></td><td valign="bottom"><p> </p><p>Coring Information</p><p> </p></td><td valign="bottom"><p> </p><p>CORTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) DISC</p><p> </p></td><td valign="bottom"><p> </p><p>DIS</p><p> </p></td><td valign="bottom"><p> </p><p>Discontinuity Data</p><p> </p></td><td valign="bottom"><p> </p><p>DISTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) DCPG</p><p> </p></td><td valign="bottom"><p> </p><p>DPG</p><p> </p></td><td valign="bottom"><p> </p><p>Dynamic Cone Penetrometer Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>DPGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>DCPT</p><p> </p></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) DPRG</p><p> </p></td><td valign="bottom"><p> </p><p>DRG</p><p> </p></td><td valign="bottom"><p> </p><p>Dynamic Probe Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>DRGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>DPRB</p><p> </p></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) FGHG</p><p> </p></td><td valign="bottom"><p> </p><p><em>FGG</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>Field Geohydraulic Testing - General (4.1)</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>FGGTAB01</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>FGHI</em></p><p> </p><p><em>FGHS</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>FGHT</em></p><p> </p></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) FRAC</p><p> </p></td><td valign="bottom"><p> </p><p>FRA</p><p> </p></td><td valign="bottom"><p> </p><p>Fracture Spacing</p><p> </p></td><td valign="bottom"><p> </p><p>FRATAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ICBR</p><p> </p></td><td valign="bottom"><p> </p><p>ICB</p><p> </p></td><td valign="bottom"><p> </p><p>In Situ California Bearing Ratio Tests</p><p> </p></td><td valign="bottom"><p> </p><p>ICBTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) IDEN</p><p> </p></td><td valign="bottom"><p> </p><p>IDE</p><p> </p></td><td valign="bottom"><p> </p><p>In Situ Density Tests</p><p> </p></td><td valign="bottom"><p> </p><p>IDETAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) IFID</p><p> </p></td><td valign="bottom"><p> </p><p>IFI</p><p> </p></td><td valign="bottom"><p> </p><p>On Site Volatile Headspace Testing Using Flame Ionisation Detector</p><p> </p></td><td valign="bottom"><p> </p><p>IFITAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) IPEN</p><p> </p></td><td valign="bottom"><p> </p><p>IPE</p><p> </p></td><td valign="bottom"><p> </p><p>In Situ Hand Penetrometer Tests</p><p> </p></td><td valign="bottom"><p> </p><p>IPETAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) IPRG*</p><p> </p></td><td valign="bottom"><p> </p><p>IPG</p><p> </p></td><td valign="bottom"><p> </p><p>In Situ Permeability Tests - General (4.0.4)</p><p> </p></td><td valign="bottom"><p> </p><p>IPGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>IPRT*</p><p> </p></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) IRDX</p><p> </p></td><td valign="bottom"><p> </p><p>IRD</p><p> </p></td><td valign="bottom"><p> </p><p>In Situ Redox Tests</p><p> </p></td><td valign="bottom"><p> </p><p>IRDTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) IRES</p><p> </p></td><td valign="bottom"><p> </p><p>IRE</p><p> </p></td><td valign="bottom"><p> </p><p>In Situ Resistivity Tests</p><p> </p></td><td valign="bottom"><p> </p><p>IRETAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ISAG</p><p> </p></td><td valign="bottom"><p> </p><p>ISG</p><p> </p></td><td valign="bottom"><p> </p><p>Soakaway Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>ISGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>ISAT</p><p> </p></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ISPT</p><p> </p></td><td valign="bottom"><p> </p><p>ISP</p><p> </p></td><td valign="bottom"><p> </p><p>Standard Penetration Test Results</p><p> </p></td><td valign="bottom"><p> </p><p>ISPTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) IVAN</p><p> </p></td><td valign="bottom"><p> </p><p>IVA</p><p> </p></td><td valign="bottom"><p> </p><p>In Situ Vane Tests</p><p> </p></td><td valign="bottom"><p> </p><p>IVATAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) MONG</p><p> </p></td><td valign="bottom"><p> </p><p>MOG</p><p> </p></td><td valign="bottom"><p> </p><p>Monitoring Installations and Instruments</p><p> </p></td><td valign="bottom"><p> </p><p>MOGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>MOND</p><p> </p></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) PLTG</p><p> </p></td><td valign="bottom"><p> </p><p>PLG</p><p> </p></td><td valign="bottom"><p> </p><p>Plate Loading Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>PLGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>PLTT</p><p> </p></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) PMTG</p><p> </p></td><td valign="bottom"><p> </p><p>PMG</p><p> </p></td><td valign="bottom"><p> </p><p>Pressuremeter Test Results - General</p><p> </p></td><td valign="bottom"><p> </p><p>PMGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>PMTD</p><p> </p><p>PMTL</p><p> </p></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) PTIM </p><p> </p></td><td valign="bottom"><p> </p><p>PTI</p><p> </p></td><td valign="bottom"><p> </p><p>Boring/Drilling Progress by Time</p><p> </p></td><td valign="bottom"><p> </p><p>PTITAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) PUMG</p><p> </p></td><td valign="bottom"><p> </p><p>PUG</p><p> </p></td><td valign="bottom"><p> </p><p>Pumping Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>PUGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>PUMT</p><p> </p></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) SCPG</p><p> </p></td><td valign="bottom"><p> </p><p>SCG</p><p> </p></td><td valign="bottom"><p> </p><p>Static Cone Penetration Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>SCGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>SCDG</p><p> </p><p>SCPP</p><p> </p><p>SCPT</p><p> </p></td><td valign="bottom"><p> </p><p>SCDT</p><p> </p></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) TREM</p><p> </p></td><td valign="bottom"><p> </p><p>TRE</p><p> </p></td><td valign="bottom"><p> </p><p>Location Specific Time Related Remarks</p><p> </p></td><td valign="bottom"><p> </p><p>TRETAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) WADD</p><p> </p></td><td valign="bottom"><p> </p><p>WAD</p><p> </p></td><td valign="bottom"><p> </p><p>Water Added Records</p><p> </p></td><td valign="bottom"><p> </p><p>WADTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) WETH</p><p> </p></td><td valign="bottom"><p> </p><p>WET</p><p> </p></td><td valign="bottom"><p> </p><p>Weathering</p><p> </p></td><td valign="bottom"><p> </p><p>WETTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) WGPG</p><p> </p></td><td valign="bottom"><p> </p><p><em>WGG</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>Wireline Geophysics - General (4.1)</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>WGGTAB01</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>WGPT</em></p><p> </p></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) WINS</p><p> </p></td><td valign="bottom"><p> </p><p>WIN</p><p> </p></td><td valign="bottom"><p> </p><p>Window or Windowless Sampling Run Details</p><p> </p></td><td valign="bottom"><p> </p><p>WINTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) WSTG</p><p> </p></td><td valign="bottom"><p> </p><p>WSG</p><p> </p></td><td valign="bottom"><p> </p><p>Water Strike - General</p><p> </p></td><td valign="bottom"><p> </p><p>WSGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>WSTD</p><p> </p></td><td valign="bottom"></td></tr></tbody></table>

&#x20;

**6.1.2 Sample data types**

**58 data types** are linked to **Samples**, including **19 sub‑data types**.

<table data-header-hidden><thead><tr><th valign="bottom">Data type</th><th width="89" valign="bottom">Shortname</th><th width="289" valign="bottom">Longname</th><th valign="bottom">GeoDin   Table</th><th valign="bottom">1. level   sub-data type</th><th valign="bottom">2. level   sub-data type</th><th valign="bottom"></th></tr></thead><tbody><tr><td valign="bottom"><p> </p><p>(AGS) AAVT</p><p> </p></td><td valign="bottom"><p> </p><p>AAV</p><p> </p></td><td valign="bottom"><p> </p><p>Aggregate Abrasion Tests</p><p> </p></td><td valign="bottom"><p> </p><p>AAVTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ACVT</p><p> </p></td><td valign="bottom"><p> </p><p>ACV</p><p> </p></td><td valign="bottom"><p> </p><p>Aggregate Crushing Value Tests</p><p> </p></td><td valign="bottom"><p> </p><p>ACVTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) AELO</p><p> </p></td><td valign="bottom"><p> </p><p>AEL</p><p> </p></td><td valign="bottom"><p> </p><p>Aggregate Elongation Index Tests</p><p> </p></td><td valign="bottom"><p> </p><p>AELTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) AFLK</p><p> </p></td><td valign="bottom"><p> </p><p>AFL</p><p> </p></td><td valign="bottom"><p> </p><p>Aggregate Flakiness Tests</p><p> </p></td><td valign="bottom"><p> </p><p>AFLTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) AIVT</p><p> </p></td><td valign="bottom"><p> </p><p>AIV</p><p> </p></td><td valign="bottom"><p> </p><p>Aggregate Impact Value Tests</p><p> </p></td><td valign="bottom"><p> </p><p>AIVTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ALOS</p><p> </p></td><td valign="bottom"><p> </p><p>ALO</p><p> </p></td><td valign="bottom"><p> </p><p>Los Angeles Abrasion Tests</p><p> </p></td><td valign="bottom"><p> </p><p>ALOTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) APSV</p><p> </p></td><td valign="bottom"><p> </p><p>APS</p><p> </p></td><td valign="bottom"><p> </p><p>Aggregate Polished Stone Tests</p><p> </p></td><td valign="bottom"><p> </p><p>APSTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ARTW</p><p> </p></td><td valign="bottom"><p> </p><p>ART</p><p> </p></td><td valign="bottom"><p> </p><p>Aggregate Determination of the Resistance to Wear (micro-Deval)</p><p> </p></td><td valign="bottom"><p> </p><p>ARTTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ASDI</p><p> </p></td><td valign="bottom"><p> </p><p>ASD</p><p> </p></td><td valign="bottom"><p> </p><p>Slake Durability Index Tests</p><p> </p></td><td valign="bottom"><p> </p><p>ASDTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ASNS</p><p> </p></td><td valign="bottom"><p> </p><p>ASN</p><p> </p></td><td valign="bottom"><p> </p><p>Aggregate Soundness Tests</p><p> </p></td><td valign="bottom"><p> </p><p>ASNTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) AWAD</p><p> </p></td><td valign="bottom"><p> </p><p>AWA</p><p> </p></td><td valign="bottom"><p> </p><p>Aggregate Water Absorption Tests</p><p> </p></td><td valign="bottom"><p> </p><p>AWATAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) CBRG</p><p> </p></td><td valign="bottom"><p> </p><p>CBG</p><p> </p></td><td valign="bottom"><p> </p><p>California Bearing Ratio Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>CBGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>CBRT</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) CHOC</p><p> </p></td><td valign="bottom"><p> </p><p>CHO</p><p> </p></td><td valign="bottom"><p> </p><p>Chain of Custody Information</p><p> </p></td><td valign="bottom"><p> </p><p>CHOTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) CMPG</p><p> </p></td><td valign="bottom"><p> </p><p>CMG</p><p> </p></td><td valign="bottom"><p> </p><p>Compaction Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>CMGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>CMPT</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) CONG </p><p> </p></td><td valign="bottom"><p> </p><p>COG</p><p> </p></td><td valign="bottom"><p> </p><p>Consolidation Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>COGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>CONS</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) CTRG</p><p> </p></td><td valign="bottom"><p> </p><p><em>CTG</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>Cyclic Triaxial Tests - General (4.1)</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>CTGTAB01</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>CTRC</em></p><p> </p><p><em>CTRS</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>CTRP</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>CTRD</em></p><p> </p></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ECTN</p><p> </p></td><td valign="bottom"><p> </p><p><em>ECT</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>Sample Container Details (4.1)</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>ECTTAB01</em></p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ELRG</p><p> </p></td><td valign="bottom"><p> </p><p><em>ELR</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>Environmental Laboratory Reporting (4.1)</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>ELRTAB01</em></p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ERES* </p><p> </p></td><td valign="bottom"><p> </p><p>ERE</p><p> </p></td><td valign="bottom"><p> </p><p>Environmental Contaminant Testing (4.0.4)</p><p> </p></td><td valign="bottom"><p> </p><p>ERETAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) ESCG</p><p> </p></td><td valign="bottom"><p> </p><p>ESG</p><p> </p></td><td valign="bottom"><p> </p><p>Effective Stress Consolidation Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>ESGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>ESCT</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) FRST</p><p> </p></td><td valign="bottom"><p> </p><p>FRS</p><p> </p></td><td valign="bottom"><p> </p><p>Frost Susceptibility Tests</p><p> </p></td><td valign="bottom"><p> </p><p>FRSTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) GCHM</p><p> </p></td><td valign="bottom"><p> </p><p>GCM</p><p> </p></td><td valign="bottom"><p> </p><p>Geotechnical Chemistry Testing</p><p> </p></td><td valign="bottom"><p> </p><p>GCMTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) GRAG </p><p> </p></td><td valign="bottom"><p> </p><p>GRG</p><p> </p></td><td valign="bottom"><p> </p><p>Particle Size Distribution Analysis - General</p><p> </p></td><td valign="bottom"><p> </p><p>GRGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>GRAT</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) IPID</p><p> </p></td><td valign="bottom"><p> </p><p>IPI</p><p> </p></td><td valign="bottom"><p> </p><p>On Site Volatile Headspace Testing by Photo Ionisation Detector</p><p> </p></td><td valign="bottom"><p> </p><p>IPITAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LBST</p><p> </p></td><td valign="bottom"><p> </p><p>LBT</p><p> </p></td><td valign="bottom"><p> </p><p>Testing Schedule Details</p><p> </p></td><td valign="bottom"><p> </p><p>LBTTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LDEN</p><p> </p></td><td valign="bottom"><p> </p><p>LDE</p><p> </p></td><td valign="bottom"><p> </p><p>Density Tests</p><p> </p></td><td valign="bottom"><p> </p><p>LDETAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LDYN</p><p> </p></td><td valign="bottom"><p> </p><p>LDY</p><p> </p></td><td valign="bottom"><p> </p><p>Dynamic Testing</p><p> </p></td><td valign="bottom"><p> </p><p>LDYTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p><em>(AGS) LFCN</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>LFC</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>Laboratory Fall Cone Tests (4.1)</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>LFCTAB01</em></p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LLIN</p><p> </p></td><td valign="bottom"><p> </p><p>LLI</p><p> </p></td><td valign="bottom"><p> </p><p>Linear Shrinkage Tests</p><p> </p></td><td valign="bottom"><p> </p><p>LLITAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LLPL</p><p> </p></td><td valign="bottom"><p> </p><p>LLP</p><p> </p></td><td valign="bottom"><p> </p><p>Liquid and Plastic Limit Tests</p><p> </p></td><td valign="bottom"><p> </p><p>LLPTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LNMC</p><p> </p></td><td valign="bottom"><p> </p><p>LNM</p><p> </p></td><td valign="bottom"><p> </p><p>Water/Moisture Content Tests</p><p> </p></td><td valign="bottom"><p> </p><p>LNMTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LPDN</p><p> </p></td><td valign="bottom"><p> </p><p>LPD</p><p> </p></td><td valign="bottom"><p> </p><p>Particle Density Tests</p><p> </p></td><td valign="bottom"><p> </p><p>LPDTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LPEN</p><p> </p></td><td valign="bottom"><p> </p><p>LPE</p><p> </p></td><td valign="bottom"><p> </p><p>Laboratory Hand Penetrometer Tests</p><p> </p></td><td valign="bottom"><p> </p><p>LPETAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LRES</p><p> </p></td><td valign="bottom"><p> </p><p>LRE</p><p> </p></td><td valign="bottom"><p> </p><p>Laboratory Resistivity Tests</p><p> </p></td><td valign="bottom"><p> </p><p>LRETAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LSTG</p><p> </p></td><td valign="bottom"><p> </p><p>LSG</p><p> </p></td><td valign="bottom"><p> </p><p>Initial Consumption of Lime Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>LSGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>LSTT</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LSLT</p><p> </p></td><td valign="bottom"><p> </p><p>LSL</p><p> </p></td><td valign="bottom"><p> </p><p>Shrinkage Limit Tests</p><p> </p></td><td valign="bottom"><p> </p><p>LSLTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LSWL </p><p> </p></td><td valign="bottom"><p> </p><p>LSW</p><p> </p></td><td valign="bottom"><p> </p><p>Swelling Index Testing</p><p> </p></td><td valign="bottom"><p> </p><p>LSWTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p><em>(AGS) LTCH</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>LTC</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>Laboratory Thermal Conductivity (4.1)</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>LTCTAB01</em></p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LUCT</p><p> </p></td><td valign="bottom"><p> </p><p><em>LUC</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>Laboratory Unconfined Compression Test (4.1)</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>LUCTAB01</em></p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) LVAN</p><p> </p></td><td valign="bottom"><p> </p><p>LVA</p><p> </p></td><td valign="bottom"><p> </p><p>Laboratory Vane Tests</p><p> </p></td><td valign="bottom"><p> </p><p>LVATAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) MCVG</p><p> </p></td><td valign="bottom"><p> </p><p>MCG</p><p> </p></td><td valign="bottom"><p> </p><p>MCV Tests - General</p><p> </p></td><td valign="bottom"><p> </p><p>MCGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>MCVT</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) PTST</p><p> </p></td><td valign="bottom"><p> </p><p>PTS</p><p> </p></td><td valign="bottom"><p> </p><p>Laboratory Permeability Tests</p><p> </p></td><td valign="bottom"><p> </p><p>PTSTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RCAG</p><p> </p></td><td valign="bottom"><p> </p><p><em>RAG</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>Rock Abrasiveness Tests - General (4.1)</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>RAGTAB01</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>RCAT</em></p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RESG</p><p> </p></td><td valign="bottom"><p> </p><p><em>RCG</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>Resonant Column Test - General (4.1)</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>RCGTAB01</em></p><p> </p></td><td valign="bottom"><p> </p><p><em>RESC</em></p><p> </p><p><em>RESD</em></p><p> </p><p><em>RESS</em></p><p> </p></td><td valign="bottom"><p> </p><p> </p><p> </p><p><em>RESP</em></p><p> </p></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RCCV</p><p> </p></td><td valign="bottom"><p> </p><p>RCV</p><p> </p></td><td valign="bottom"><p> </p><p>Chalk Crushing Value Tests</p><p> </p></td><td valign="bottom"><p> </p><p>RCVTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RDEN</p><p> </p></td><td valign="bottom"><p> </p><p>RDE</p><p> </p></td><td valign="bottom"><p> </p><p>Rock Porosity and Density Tests</p><p> </p></td><td valign="bottom"><p> </p><p>RDETAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RELD</p><p> </p></td><td valign="bottom"><p> </p><p>REL</p><p> </p></td><td valign="bottom"><p> </p><p>Relative Density Tests</p><p> </p></td><td valign="bottom"><p> </p><p>RELTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RPLT</p><p> </p></td><td valign="bottom"><p> </p><p>RPL</p><p> </p></td><td valign="bottom"><p> </p><p>Point Load Testing</p><p> </p></td><td valign="bottom"><p> </p><p>RPLTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RSCH</p><p> </p></td><td valign="bottom"><p> </p><p>RSC</p><p> </p></td><td valign="bottom"><p> </p><p>Schmidt Rebound Hardness Tests</p><p> </p></td><td valign="bottom"><p> </p><p>RSCTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RSHR</p><p> </p></td><td valign="bottom"><p> </p><p>RSH</p><p> </p></td><td valign="bottom"><p> </p><p>Shore Scleroscope Hardness Tests</p><p> </p></td><td valign="bottom"><p> </p><p>RSHTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RTEN</p><p> </p></td><td valign="bottom"><p> </p><p>RTE</p><p> </p></td><td valign="bottom"><p> </p><p>Tensile Strength Testing</p><p> </p></td><td valign="bottom"><p> </p><p>RTETAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RUCS</p><p> </p></td><td valign="bottom"><p> </p><p>RUC</p><p> </p></td><td valign="bottom"><p> </p><p>Rock Uniaxial Compressive Strength and Deformability Tests</p><p> </p></td><td valign="bottom"><p> </p><p>RUCTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) RWCO</p><p> </p></td><td valign="bottom"><p> </p><p>RWC</p><p> </p></td><td valign="bottom"><p> </p><p>Water Content of Rock Tests</p><p> </p></td><td valign="bottom"><p> </p><p>RWCTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) SHBG</p><p> </p></td><td valign="bottom"><p> </p><p>SHG</p><p> </p></td><td valign="bottom"><p> </p><p>Shear Box Testing - General</p><p> </p></td><td valign="bottom"><p> </p><p>SHGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>SHBT</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) SUCT</p><p> </p></td><td valign="bottom"><p> </p><p>SUC</p><p> </p></td><td valign="bottom"><p> </p><p>Suction Tests</p><p> </p></td><td valign="bottom"><p> </p><p>SUCTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) TREG</p><p> </p></td><td valign="bottom"><p> </p><p>TEG</p><p> </p></td><td valign="bottom"><p> </p><p>Triaxial Tests - Effective Stress - General</p><p> </p></td><td valign="bottom"><p> </p><p>TEGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>TRET</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) TRIG</p><p> </p></td><td valign="bottom"><p> </p><p>TIG</p><p> </p></td><td valign="bottom"><p> </p><p>Triaxial Tests - Total Stress - General</p><p> </p></td><td valign="bottom"><p> </p><p>TIGTAB01</p><p> </p></td><td valign="bottom"><p> </p><p>TRIT</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td></tr><tr><td valign="bottom"><p> </p><p>(AGS) TNPC</p><p> </p></td><td valign="bottom"><p> </p><p>TNP</p><p> </p></td><td valign="bottom"><p> </p><p>Ten Per Cent Fines</p><p> </p></td><td valign="bottom"><p> </p><p>TNPTAB01</p><p> </p></td><td valign="bottom"></td><td valign="bottom"></td><td valign="bottom"></td></tr></tbody></table>

**6.1.3 List of sub-data types**

<table data-header-hidden><thead><tr><th width="109" valign="bottom">Sub-data type</th><th width="247" valign="bottom">Longname</th><th width="239" valign="bottom">Group name</th><th valign="bottom">GeoDin Table</th></tr></thead><tbody><tr><td valign="bottom">CBT</td><td valign="bottom">(CBRT) California Bearing Ratio Tests - Data</td><td valign="bottom">California Bearing Ratio Tests - Data</td><td valign="bottom">CBTTAB01</td></tr><tr><td valign="bottom">CMT</td><td valign="bottom">(CMPT) Compaction Tests - Data</td><td valign="bottom">Compaction Tests - Data</td><td valign="bottom">CMTTAB01</td></tr><tr><td valign="bottom">COS</td><td valign="bottom">(CONS) Consolidation Tests - Data</td><td valign="bottom">Consolidation Tests - Data</td><td valign="bottom">COSTAB01</td></tr><tr><td valign="bottom"><em>CTC</em></td><td valign="bottom"><em>(CTRC) Cyclic Triaxial Tests - Consolidation</em></td><td valign="bottom"><em>Cyclic Triaxial Tests - Consolidation (4.1)</em></td><td valign="bottom"><em>CTCTAB01</em></td></tr><tr><td valign="bottom"><em>CTD</em></td><td valign="bottom"><em>(CTRD) Cyclic Triaxial Tests - Data</em></td><td valign="bottom"><em>Cyclic Triaxial Tests - Data (4.1)</em></td><td valign="bottom"><em>CTDTAB01</em></td></tr><tr><td valign="bottom"><em>CTP</em></td><td valign="bottom"><em>(CTRP) Cyclic Triaxial Tests - Derived Parameters</em></td><td valign="bottom"><em>Cyclic Triaxial Tests - Derived Parameters (4.1)</em></td><td valign="bottom"><em>CTPTAB01</em></td></tr><tr><td valign="bottom"><em>CTS</em></td><td valign="bottom"><em>(CTRS) Cyclic Triaxial Tests - Saturation</em></td><td valign="bottom"><em>Cyclic Triaxial Tests - Saturation (4.1)</em></td><td valign="bottom"><em>CTSTAB01</em></td></tr><tr><td valign="bottom">DPT</td><td valign="bottom">(DCPT) Dynamic Cone Penetrometer Tests - Data</td><td valign="bottom">Dynamic Cone Penetrometer Tests - Data</td><td valign="bottom">DPTTAB01</td></tr><tr><td valign="bottom">DRB</td><td valign="bottom">(DPRB) Dynamic Probe Tests - Data</td><td valign="bottom">Dynamic Probe Tests - Data</td><td valign="bottom">DRBTAB01</td></tr><tr><td valign="bottom">EST</td><td valign="bottom">(ESCT) Effective Stress Consolidation Tests - Data</td><td valign="bottom">Effective Stress Consolidation Tests - Data</td><td valign="bottom">ESTTAB01</td></tr><tr><td valign="bottom"><em>FGI</em></td><td valign="bottom"><em>(FGHI) Field Geohydraulic Testing - Instrumentation Details</em></td><td valign="bottom"><em>Field Geohydraulic Testing - Instrumentation Details (4.1)</em></td><td valign="bottom"><em>FGITAB01</em></td></tr><tr><td valign="bottom"><em>FGS</em></td><td valign="bottom"><em>(FGHS) Field Geohydraulic Testing - Test Results (per stage)</em></td><td valign="bottom"><em>Field Geohydraulic Testing - Test Results (per stage) (4.1)</em></td><td valign="bottom"><em>FGSTAB01</em></td></tr><tr><td valign="bottom"><em>FGT</em></td><td valign="bottom"><em>(FGHT) Field Geohydraulic Testing - Test Results</em></td><td valign="bottom"><em>Field Geohydraulic Testing - Test Results (4.1)</em></td><td valign="bottom"><em>FGTTAB01</em></td></tr><tr><td valign="bottom">GRT</td><td valign="bottom">(GRAT) Particle Size Distribution Analysis - Data</td><td valign="bottom">Particle Size Distribution Analysis - Data</td><td valign="bottom">GRTTAB01</td></tr><tr><td valign="bottom">IPT*</td><td valign="bottom">(IPRT) In Situ Permeability Tests - Data</td><td valign="bottom">In Situ Permeability Tests - Data (4.0.4)</td><td valign="bottom">IPTTAB01</td></tr><tr><td valign="bottom">IST</td><td valign="bottom">(ISAT) Soakaway Tests - Data</td><td valign="bottom">Soakaway Tests - Data</td><td valign="bottom">ISTTAB01</td></tr><tr><td valign="bottom">LST</td><td valign="bottom">(LSTT) Initial Consumption of Lime Tests - Data</td><td valign="bottom">Initial Consumption of Lime Tests - Data</td><td valign="bottom">LSTTAB01</td></tr><tr><td valign="bottom">MCT</td><td valign="bottom">(MCVT) MCV Tests - Data</td><td valign="bottom">MCV Tests - Data</td><td valign="bottom">MCTTAB01</td></tr><tr><td valign="bottom">MOD</td><td valign="bottom">(MOND) Monitoring Readings</td><td valign="bottom">Monitoring Readings</td><td valign="bottom">MODTAB01</td></tr><tr><td valign="bottom">PLT</td><td valign="bottom">(PLTT) Plate Loading Tests - Data</td><td valign="bottom">Plate Loading Tests - Data</td><td valign="bottom">PLTTAB01</td></tr><tr><td valign="bottom">PMD</td><td valign="bottom">(PMTD) Pressuremeter Test - Data</td><td valign="bottom">Pressuremeter Test Results - Data</td><td valign="bottom">PMDTAB01</td></tr><tr><td valign="bottom">PML</td><td valign="bottom">(PMTL) Pressuremeter Test Results - Individual Loops</td><td valign="bottom">Pressuremeter Test Results - Individual Loops</td><td valign="bottom">PMLTAB01</td></tr><tr><td valign="bottom">PUT</td><td valign="bottom">(PUMT) Pumping Tests - Data</td><td valign="bottom">Pumping Tests - Data</td><td valign="bottom">PUTTAB01</td></tr><tr><td valign="bottom"><em>RAT</em></td><td valign="bottom"><em>(RCAT) Rock Abrasiveness Tests - Data</em></td><td valign="bottom"><em>Rock Abrasiveness Tests - Data (4.1)</em></td><td valign="bottom"><em>RATTAB01</em></td></tr><tr><td valign="bottom"><em>RCC</em></td><td valign="bottom"><em>(RESC) Resonant Column Tests - Consolidation</em></td><td valign="bottom"><em>Resonant Column Test - Consolidation (4.1)</em></td><td valign="bottom"><em>RCCTAB01</em></td></tr><tr><td valign="bottom"><em>RCD</em></td><td valign="bottom"><em>(RESD) Resonant Column Tests - Data</em></td><td valign="bottom"><em>Resonant Column Test - Data (4.1)</em></td><td valign="bottom"><em>RCDTAB01</em></td></tr><tr><td valign="bottom"><em>RCP</em></td><td valign="bottom"><em>(RESP) Resonant Column Tests - Derived Parameters</em></td><td valign="bottom"><em>Resonant Column Test - Derived Parameters (4.1)</em></td><td valign="bottom"><em>RCPTAB01</em></td></tr><tr><td valign="bottom"><em>RCS</em></td><td valign="bottom"><em>(RESS) Resonant Column Tests - Saturation</em></td><td valign="bottom"><em>Resonant Column Test - Saturation (4.1)</em></td><td valign="bottom"><em>RCSTAB01</em></td></tr><tr><td valign="bottom">SCP</td><td valign="bottom">(SCPP) Static Cone Penetration Tests - Derived Parameters</td><td valign="bottom">Static Cone Penetration Tests - Derived Parameters</td><td valign="bottom">SCPTAB01</td></tr><tr><td valign="bottom">SCT</td><td valign="bottom">(SCPT) Static Cone Penetration Tests - Data</td><td valign="bottom">Static Cone Penetration Tests - Data</td><td valign="bottom">SCTTAB01</td></tr><tr><td valign="bottom">SDG</td><td valign="bottom">(SCDG) Static Cone Dissipation Tests - General</td><td valign="bottom">Static Cone Dissipation Tests - General</td><td valign="bottom">SDGTAB01</td></tr><tr><td valign="bottom">SDT</td><td valign="bottom">(SCDT) Static Cone Dissipation Tests - Data</td><td valign="bottom">Static Cone Dissipation Tests - Data</td><td valign="bottom">SDTTAB01</td></tr><tr><td valign="bottom">SHT</td><td valign="bottom">(SHBT) Shear Box Testing - Data</td><td valign="bottom">Shear Box Testing - Data</td><td valign="bottom">SHTTAB01</td></tr><tr><td valign="bottom">TET</td><td valign="bottom">(TRET) Triaxial Tests - Effective Stress - Data</td><td valign="bottom">Triaxial Tests - Effective Stress - Data</td><td valign="bottom">TETTAB01</td></tr><tr><td valign="bottom">TIT</td><td valign="bottom">(TRIT) Triaxial Tests - Total Stress - Data</td><td valign="bottom">Triaxial Tests - Total Stress - Data</td><td valign="bottom">TITTAB01</td></tr><tr><td valign="bottom"><em>WGT</em></td><td valign="bottom"><em>(WGPT) Wireline Geophysics - Readings</em></td><td valign="bottom"><em>Wireline Geophysics - Readings (4.1)</em></td><td valign="bottom"><em>WGTTAB01</em></td></tr><tr><td valign="bottom">WSD</td><td valign="bottom">(WSTD) Water Strike - Details</td><td valign="bottom">Water Strike - Details</td><td valign="bottom">WSDTAB01</td></tr></tbody></table>

### 7. Installation of the Plugins for Import and Export of AGS Files

Users can install plugins on the **System** side of GeoDin, as shown below. By pressing the **Connecting** button, GeoDin displays a list of all **available plugins**.

If a plugin is already installed, it appears under **Installed plugins**.

<figure><img src="../../.gitbook/assets/image (48).png" alt=""><figcaption></figcaption></figure>

#### **System Requirements**

* **GeoDin version 15.4 or higher**
* **.NET 8 Desktop Runtime or higher**

Users running **GeoDin versions 15.0 to 15.3** can update **GeoDin** by using the **“Update GeoDin”** function on the **System** page.

<figure><img src="../../.gitbook/assets/image (49).png" alt=""><figcaption></figcaption></figure>

When the AGS plugins are started and the required .NET runtime is not already installed, a message is displayed informing the user that the .NET Desktop Runtime must be downloaded and installed first. If the user confirms the prompt by selecting “Yes”, they are automatically redirected to the official [Microsoft download](https://dotnet.microsoft.com/en-us/download/dotnet) page. From there, the user can download and install the required .NET Desktop Runtime to proceed with the plugin import/export process.

<figure><img src="../../.gitbook/assets/image (50).png" alt=""><figcaption></figcaption></figure>

#### 7.1 General

GeoDin stores dictionary entries as **long texts** in the database. During **import**, the GeoDin dictionaries are checked, and the corresponding long texts are written into the GeoDin database. During **export**, the exporter reviews the database contents and writes the appropriate **codes** into the AGS file.

Some official AGS codes contain **spaces and colons**, which are **not permitted** in GeoDin dictionaries.\
To address this:

* In GeoDin dictionaries, **spaces are replaced with underscores (\_)**.
* In GeoDin dictionaries, **colons are replaced with minus symbol (-)**.
* During **import**, the importer converts AGS codes by replacing spaces with underscores.
* During **export**, the exporter converts underscores **back to spaces** to generate **PA entries** that comply with the AGS standard.

#### 7.2 AGS Importer

<figure><img src="../../.gitbook/assets/image (51).png" alt=""><figcaption></figcaption></figure>

The AGS Importer is available at the level of an open GeoDin database and at the level of a GeoDin project.

{% hint style="danger" %}
Note: The AGS Importer can automatically create the required database tables for AGS object types only when using a **Microsoft Access database** in GeoDin.\
If you are working with a **client–server database** and the AGS object types have not yet been registered, you must first create these tables manually via GeoDin. Ensure that the relevant user has **permission to create tables** in the client–server database.
{% endhint %}

**Creating AGS Database Tables in a Client–Server Database**

1. In GeoDin, Open a project in your client-server database and go to the “Objects“ node. Start the “New object“ method.
2. Select the object type “AGS 4“ \[AGSSTAND] and confirm with “OK“. GeoDin will now create the corresponding tables in your client-server database.   \
   You may cancel the data entry afterwards by clicking the “Cancel edits“ button (prohibition sign).
3. Repeat the process for the following object types to create all necessary AGS tables:
   * “AGS 4 LBSG – Testing schedule” \[AGSLBSG]
   * “AGS 4 PREM – Project specific time related remarks” \[AGSPREM]

These steps only need to be performed once per client-server database.

After all required tables have been created, you can proceed with the AGS import using the AGS Importer.

**The AGS Importer guides users through a four‑step process:**

**Step 1** **– AGS Import configuration:** The user can choose between the standard formats AGS 4.1.1 or AGS 4.0.4. Information about the standard can be found in the TRAN group in the TRAN\_AGS parameter of the AGS import files.

Checkbox: “Update existing data with uploaded AGS.”

* [x] If all key fields are filled in, existing data will be replaced with the current data record.
* [ ] If all key fields are filled in, existing data will NOT be replaced with the current data set.

Empty key fields lead to multiple imports because no comparison can take place.

Checkbox: “Ignore AGS project identifiers.”

* [x] Import the data into the selected project without comparing the PROJ group.

<figure><img src="../../.gitbook/assets/image (52).png" alt=""><figcaption></figcaption></figure>

**Step 2 – File selection:** The user selects the AGS file(s) to be imported. It is possible to import multiple AGS files at the same time.

Importing multiple files for the same object:

1\.     If the data within the AGS files differs, the data from the last file will be written, provided that the checkbox “Update existing data with uploaded AGS” is selected.

2\.     If the checkbox is not selected, the data from the first file will be written to the database. The data from the following files will then no longer be written to the database unless the parameter is not yet assigned.

<figure><img src="../../.gitbook/assets/image (53).png" alt=""><figcaption></figcaption></figure>

**Step 3 – Validation:** Before importing, a validator checks the AGS file and issues warnings if there are any problems. In this case, importing is not possible, and the file must first be modified to comply with the standard and the import process restarted.

<figure><img src="../../.gitbook/assets/image (54).png" alt=""><figcaption></figcaption></figure>

**Step 4 - Import:** The database structure is written during the first import after creating a GeoDin database. Warnings can be output as a list after the import has been completed (e.g. dictionary entry does not exist in GeoDin).

Warning can be saved as a list for review.

<figure><img src="../../.gitbook/assets/image (55).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../../.gitbook/assets/image (56).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../../.gitbook/assets/image (57).png" alt=""><figcaption></figcaption></figure>

#### 7.3	AGS Exporter

The AGS Exporter is available at the level of a GeoDin project. Starting the method you can navigate thru the plugin.

<figure><img src="../../.gitbook/assets/image (58).png" alt=""><figcaption></figcaption></figure>

The AGS Exporter creates a fully validated AGS file.

**Step 1 – Select objects:** The tool is loading all objects from the project. You can select all locations, deselect or filter by the object name. Once selected, the user can go to the next step.

It is important that the user selects not only the LOCA objects, but also the corresponding PREM and LBSG objects for the export.

<figure><img src="../../.gitbook/assets/image (59).png" alt=""><figcaption></figcaption></figure>

**Step 2 – AGS export configuration:** The user must choose the AGS export configuration. The Standards AGS 4.0.4 and AGS 4.1.1 are available. By choosing one standard, all parameters according to the standard are exported. Currently, it is not possible to export user-defined parameters from data types. The user can also choose AGS groups for the export. By default, all groups are exported.

A check mark can be used to remove empty headings if the lines do not contain any data.

<figure><img src="../../.gitbook/assets/image (60).png" alt=""><figcaption></figcaption></figure>

**Step 3 – Project details:** The user must insert mandatory project details for the AGS Export, like project identifier \[PROJ\_ID] (PRJ\_ALIAS in GeoDin) and Project name \[PROJ\_NAME] (PRJ\_NAME in GeoDin and read-only). These fields are marked with a star, read from the GeoDin database and can be changed by the user. All other fields are optional.

The PROJ group must be filled in by the user because most of the data (Headings) are not stored in GeoDin: Location of site \[PROJ\_LOC], Client name \[PROJ\_CLNT], Contractors name \[PROJ\_CONT], Project Engineer \[PROJ\_ENG], General project comments \[PROJ\_MEMO]

<figure><img src="../../.gitbook/assets/image (61).png" alt=""><figcaption></figcaption></figure>

**Step 4 – Transmission details:** In the next, the user must insert the transmission details, like Producer \[TRAN\_PROD], Issue sequence reference \[TRAN\_ISNO], Recipient \[TRAN\_RECV] and Transmission status \[TRAN\_STAT]. The two fields Description \[TRAN\_DESC] and Remarks \[TRAN\_REM] are optional fields. The AGS Edition Reference \[TRAN\_AGS] is read from the Step 2 (AGS export configuration) and can only be changed by the user in Step 2.

The TRAN group must be filled in by the user because the data is not stored in GeoDin. Mandatory fields marked with \* are filled in automatically and can be changed by the user.

By clicking on the Export button, the user must choose the path and the name for the export file.

<figure><img src="../../.gitbook/assets/image (62).png" alt=""><figcaption></figcaption></figure>



<figure><img src="../../.gitbook/assets/image (63).png" alt=""><figcaption></figcaption></figure>

**Step 5 - Export:** The export starts automatically. Once the export has been successfully completed, the user is provided with a link to the AGS export file. Clicking on the link, the file is shown in an editor.

<figure><img src="../../.gitbook/assets/image (64).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../../.gitbook/assets/image (65).png" alt=""><figcaption></figcaption></figure>

During the export, the file is validated. Any deviations from the AGS standard are listed.

<figure><img src="../../.gitbook/assets/image (66).png" alt=""><figcaption></figcaption></figure>

If an error is detected, the export is aborted with the error message: “The export could not be completed.” Example: The database contains data for version 4.1.1 and is exported as format 4.0.4

<figure><img src="../../.gitbook/assets/image (67).png" alt=""><figcaption></figcaption></figure>









