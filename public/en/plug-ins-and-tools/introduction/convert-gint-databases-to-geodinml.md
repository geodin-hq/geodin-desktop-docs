# Convert gINT Database to GeoDinML

## Introduction

This tutorial will guide you through the process of converting gINT database files into GeoDinML. The gINT converter will convert the groups **PROJECT**, **LITHOLOGY**, **POINT**, and **SAMPLING** into GeoDinML format. If any groups or parameters are missing, adjustments must be made to the gINT database file before conversion.

## Conversion Process

* Open the gINT Converter
* Choose your gINT database. It can be either a gINT database (.gpj) or a Microsoft Access database (.mdb or .accdb)
* The conversion process will begin automatically. The gINT converter will convert the groups **PROJECT**, **LITHOLOGY**, **POINT**, and **SAMPLING** into GeoDinML format.
* Once the conversion is complete, save the GeoDinML file to the desired location

## Troubleshooting

If the uploaded gINT database does not match the mapping schema, the gINT converter will provide information indicating which mandatory groups or parameters are missing.

You can then adjust the corresponding tables and parameters within the gINT database file either directly in gINT or by renaming the file extension to `.mdb` or `.accdb` and making the necessary changes in Microsoft Access.

## Mandatory Groups and Parameters

The following gINT groups and parameters are mandatory for the conversion:

| **Group**     | **Parameters**           |
| ------------- | ------------------------ |
| **PROJECT**   | Name                     |
|               | Manager                  |
|               | City                     |
|               | Country                  |
|               | Location                 |
|               | Number                   |
|               | Input\_Units             |
| **POINT**     | PointID                  |
|               | ShortName                |
|               | East                     |
|               | North                    |
|               | CoordSys                 |
|               | HoleDepth                |
|               | Hole\_Diameter           |
|               | Elevation                |
|               | Drilling\_Company        |
|               | Driller                  |
|               | Start\_Date              |
|               | End\_Date                |
|               | Drilling\_Method         |
|               | Drilling\_RigType        |
|               | Logger                   |
|               | Location                 |
|               | Water\_Initial           |
|               | Water\_Liqu              |
|               | Water\_Static            |
|               | CPT\_AreaRatio           |
|               | CPT\_File                |
|               | CPT\_Dir                 |
|               | Expl\_Dir                |
|               | Station\_Number          |
| **LITHOLOGY** | PointID                  |
|               | Material\_Description    |
|               | Material\_Graphic        |
|               | Depth                    |
|               | Layer\_Bottom            |
|               | Comment                  |
|               | Line\_Type               |
|               | Additional\_Descriptions |
| **SAMPLING**  | PointID                  |
|               | Sample\_Number           |
|               | Depth                    |
|               | Bottom\_Depth            |
|               | Recovered\_Length        |
|               | Driven\_Length           |
|               | Sample\_Type             |
|               | Sample\_Diameter         |

***

## gINT Migration & Layer Data Import Gap

gINT users historically populated layer data in Excel and imported to gINT — this Excel-based layer import is an explicit gap in GeoDin for the G1/Location object type and is a flagged critical feature request.

The gINT `.mdb` object type was mainly for boreholes and CPT locations — GeoDin's G1 object type was built to mimic this workflow.

GeoDin's AGS object type was built to mimic AGS group/header structure; importing AGS files "saves you this part of the job" because ground descriptions come through the importer automatically, unlike the manual-entry workflow required for G1 with non-AGS data.

The layer-data import gap is acknowledged internally as "a topic that's been discussed" and "a felt issue we need to deal with at some point"; the commercial team tracks feature requests internally and ranks this one near the top.
