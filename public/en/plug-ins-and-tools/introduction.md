---
description: gINT Convertor
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** C (Thin (limited source material))
**Needs:** editorial review
-->

# gINT Convertor

## Easy migration from gINT to GeoDin

GeoDin offers a smooth transition from gINT with its powerful integrated gINT Converter, so you can easily migrate your gINT **PROJECT**, **LITHOLOGY**, **POINT**, and **SAMPLING** data from gINT to GeoDin.

The process consists of two key steps:

1. Convert your gINT database or Access
   database to GeoDinML, which can be imported in GeoDin. The data fields are all checked
   and matched, any anomalies will be highlighted to the user
2. Import the GeoDinML file into GeoDin.

In step 1, if any required elements such as database tables or parameters are missing, GeoDin will provide feedback highlighting the missing mandatory elements.

**Support formats**: .mdb, .gpj, .accdb
**Standards**: ASTM D2487, BS support coming soon

Continue on the next page to follow the steps.

---

## Additional content from product documentation

## gINT Migration & Layer Data Import Gap

gINT users historically populated layer data in Excel and imported to gINT — this Excel-based layer import is an explicit gap in GeoDin for the G1/Location object type and is a flagged critical feature request. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->

The gINT `.mdb` object type was mainly for boreholes and CPT locations — GeoDin's G1 object type was built to mimic this workflow. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->

GeoDin's AGS object type was built to mimic AGS group/header structure; importing AGS files "saves you this part of the job" because ground descriptions come through the importer automatically, unlike the manual-entry workflow required for G1 with non-AGS data. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->

The layer-data import gap is acknowledged internally as "a topic that's been discussed" and "a felt issue we need to deal with at some point"; the commercial team tracks feature requests internally and ranks this one near the top. <!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->
