# Migration Gaps (internal)

Known feature gaps that affect migration from competitor tools. Tracked internally, **not** published to docs.geodin.com.

## gINT — Excel-based layer-data import

**Gap:** gINT users historically populated layer (stratigraphy) data in Excel and imported it into gINT. There is no equivalent Excel-based layer import in GeoDin for the **G1 / Location** object type. This is a flagged critical feature request.

**Context:**

- The gINT `.mdb` object type was mainly for boreholes and CPT locations. GeoDin's G1 object type was built to mimic this workflow.
- GeoDin's **AGS** object type was built to mimic the AGS group/header structure. Importing AGS files "saves you this part of the job" because ground descriptions come through the importer automatically, unlike the manual-entry workflow required for G1 with non-AGS data.
- This means migrating gINT users with non-AGS layer data must currently re-enter layer descriptions manually.

**Status:** acknowledged internally as "a topic that's been discussed" and "a felt issue we need to deal with at some point". The commercial team tracks feature requests internally and ranks this one near the top.

<!-- src: transcript/data-import-migration#gint-migration-layer-data-import-gap -->
