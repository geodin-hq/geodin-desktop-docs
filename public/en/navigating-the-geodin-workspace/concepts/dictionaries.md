---
description: Dictionaries
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** C (Thin (limited source material))
**Needs:** editorial review
-->

# Dictionaries

## Dictionaries

Dictionaries are pre-made lists that populate drop-down fields (marked with a `?` symbol to the right of the field). <!-- src: transcript/data-model-architecture#dictionaries -->

Dictionary values have two representations: full text (e.g. "Cone Penetration Testing") and short code (e.g. "CPT") — the short code is what GeoDin actually stores in the database. <!-- src: transcript/data-model-architecture#dictionaries -->

Dictionaries support multi-language translations (e.g. English, Dutch); language switch happens at a setting level and applies to layer descriptions. <!-- src: transcript/data-model-architecture#dictionaries -->

Every dictionary is stored as a separate file with a `.GSD` extension in the syslib folder (`C:\ProgramData\GeoDin\System\`). <!-- src: transcript/data-model-architecture#dictionaries -->

Example dictionary files: `G1_Investigation_Method`, `BS5930_Walker_Secondary_Soil_Type`, `G1_EPSG` (coordinate systems), `Sample_Type`. <!-- src: transcript/data-model-architecture#dictionaries -->

Dictionaries are viewable/editable via `System > Dictionaries > [dictionary name]` — double-click to see all entries with short code and language translations. <!-- src: transcript/data-model-architecture#dictionaries -->

Some dictionaries are context-sensitive — e.g. the secondary soil type dictionary is restricted based on the primary ground type (clay+silt vs coarse-grain). <!-- src: transcript/data-model-architecture#dictionaries -->

Users can add their own terms to dictionaries (new clients, new labs, new soil types). <!-- src: transcript/data-model-architecture#dictionaries -->

When a user edits a dictionary, a timestamp is recorded and that dictionary becomes "frozen" — GeoDin distribution updates will no longer overwrite it, preserving user changes. <!-- src: transcript/data-model-architecture#dictionaries -->

Users should keep a list of dictionaries they have edited so they can request updates from GeoDin support when needed. <!-- src: transcript/data-model-architecture#dictionaries -->

Low-risk dictionaries (clients list, lab names) can be edited freely; higher-risk dictionaries (soil types, field patterns) require more care because missing distribution updates could matter. <!-- src: transcript/data-model-architecture#dictionaries -->

Some dictionary-backed fields allow free-text entry in addition to dictionary selection; free text does not add the value to the dictionary. <!-- src: transcript/data-model-architecture#dictionaries -->

When sending data to a client without the same custom dictionaries, the user must also send the `.GSD` dictionary files or the full syslib folder. <!-- src: transcript/data-model-architecture#dictionaries -->
