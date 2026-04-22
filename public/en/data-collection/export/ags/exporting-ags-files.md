# Exporting AGS Files (G1 Location)

## Introduction

GeoDin enables you to export AGS files in compliance with the AGS 4.0.4 and AGS 4.1.1 standards. We support AGS exports from the Geotechnical object type _G1 Location_.

### Supported AGS Groups

We currently support the following AGS groups:

| **Group** | **Description**                                            |
| --------- | ---------------------------------------------------------- |
| ABBR      | Abbreviation Definitions                                   |
| CONG      | Consolidation Tests - General                              |
| CONS      | Consolidation Tests - Data                                 |
| CORE      | Coring Information                                         |
| DETL      | Stratum Detail Descriptions                                |
| DICT      | User Defined Groups and Headings                           |
| ESCG      | Effective Stress Consolidation Tests - General             |
| ESCT      | Effective Stress Consolidation Tests - Data                |
| GCHM      | Geotechnical Chemistry Testing                             |
| GEOL      | Field Geological Descriptions                              |
| GRAG      | Particle Size Distribution Analysis - General              |
| GRAT      | Particle Size Distribution Analysis - Data                 |
| ISPT      | Standard Penetration Test Results                          |
| IVAN      | In Situ Vane Tests                                         |
| LDEN      | Density Tests                                              |
| LLPL      | Liquid and Plastic Limit Tests                             |
| LNMC      | Water/Moisture Content Tests                               |
| LOCA      | Location Details                                           |
| LPDN      | Particle Density Tests                                     |
| LPEN      | Laboratory Hand Penetrometer Tests                         |
| LRES      | Laboratory Resistivity Tests                               |
| LSLT      | Shrinkage Limit Tests                                      |
| LVAN      | Laboratory Vane Tests                                      |
| PROJ      | Project Information                                        |
| PTST      | Laboratory Permeability Tests                              |
| RDEN      | Rock Porosity and Density Tests                            |
| RELD      | Relative Density Tests                                     |
| RPLT      | Point Load Testing                                         |
| RUCS      | Rock Uniaxial Compressive Strength and Deformability Tests |
| SAMP      | Sample Information                                         |
| SHBG      | Shear Box Testing - General                                |
| SHBT      | Shear Box Testing - Data                                   |
| TYPE      | Definition of Data Types                                   |
| TREG      | Triaxial Tests - Effective Stress - General                |
| TRET      | Triaxial Tests - Effective Stress - Data                   |
| TRIG      | Triaxial Tests - Total Stress - General                    |
| TRIT      | Triaxial Tests - Total Stress - Data                       |
| UNIT      | Definition of Units                                        |

## Step-by-Step Guide

### 1. Select Boreholes for Export

Begin by selecting the boreholes you wish to export. You can choose from:

* **All objects**
* **Location**
* **A group**
* **A query**

### 2. Open the Publish and Export Method

After selecting the boreholes, navigate to the _Publish and Export_ method.

### 3. Choose Export to AGS-format

Within the _Publish and Export_ method, select the _Export to AGS-format_ option.

### 4. Define the AGS Standard

In the export area, select the AGS standard you want to use by choosing the corresponding AED file.

### 5. Provide Details for AGS Group "TRAN"

In the _TRAN_ section, enter all necessary details for the AGS group _TRAN_.

### 6. User defined groups

To exclude specific groups from the AGS export, check the _User defined groups_ option.

### 7. Execute the Export

Once you have made your selections, click the _Execute_ button to perform the AGS export.

## Additional Options

### Export Object to separate AGS files

By selecting this option, an AGS file will be created for each object.

### Select coding standard

If you need to export according to a specific coding standard, choose your desired standard from the drop-down menu. Ensure that a lithological description according to the selected coding standard is available within the object. By default, the first encountered coding standard will be used.
