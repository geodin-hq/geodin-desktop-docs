---
description: Dictionaries and Validation
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Dictionaries and Validation

## Dictionaries

Dictionaries are pre-made lists that populate drop-down fields (marked with a `?` symbol to the right of the field). <!-- src: transcript/forms-templates-customization#dictionaries -->

Dictionary values have two representations: full text (e.g., "Cone Penetration Testing") and short code (e.g., "CPT") — the short code is what GeoDin actually stores in the database. <!-- src: transcript/forms-templates-customization#dictionaries -->

Dictionaries support multi-language translations (e.g., English, Dutch); language switch happens at a setting level and applies to layer descriptions. <!-- src: transcript/forms-templates-customization#dictionaries -->

Every dictionary in GeoDin is stored as a separate file with `.GSD` extension in `C:\ProgramData\GeoDin\System\` (syslib folder), one file per list. <!-- src: transcript/forms-templates-customization#dictionaries -->

Example dictionary files: `G1 Investigation Method`, `BS5930 Walker Secondary Soil Type`, `G1_EPSG.GSD` (coordinate systems), `Sample Type`. <!-- src: transcript/forms-templates-customization#dictionaries -->

Dictionaries are viewable/editable under `System > Dictionaries > [dictionary name]` — double-click to see all entries with short code and language translations. <!-- src: transcript/forms-templates-customization#dictionaries -->

Some dictionaries are context-sensitive — e.g., the secondary soil type dictionary is restricted based on the primary ground type selected (clay+silt vs coarse-grain). <!-- src: transcript/forms-templates-customization#dictionaries -->

Users can add their own terms to dictionaries (new clients, new labs, new soil types). <!-- src: transcript/forms-templates-customization#dictionaries -->

When a user edits a dictionary, a timestamp is recorded and that dictionary becomes "frozen" — GeoDin releases will not overwrite it, preserving user additions. <!-- src: transcript/forms-templates-customization#dictionaries -->

Users should keep a list of dictionaries they have edited so they can request updates from GeoDin support when needed. <!-- src: transcript/forms-templates-customization#dictionaries -->

Low-risk dictionaries (client list, lab names) can be edited freely; higher-risk dictionaries (soil types, field patterns) require more care because losing updates could matter. <!-- src: transcript/forms-templates-customization#dictionaries -->

Some dictionary-backed fields allow free-text entry in addition to dictionary selection — free text does not add the value to the dictionary. <!-- src: transcript/forms-templates-customization#dictionaries -->

Dictionary files live per installation; users on a shared network install share the same dictionary files. <!-- src: transcript/forms-templates-customization#dictionaries -->

When sending data to a client who does not have the same custom dictionaries, the user must also send the GSD dictionary files or the full syslib folder. <!-- src: transcript/forms-templates-customization#dictionaries -->

## Custom Data Types & Validation

Users can create their own custom data types via `System > Data Types > New Data Type`; these live in the user's syslib and are shared across users on the same syslib. <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

Custom data types require a unique 3-character short name that doesn't conflict with existing system data types; the GeoDin team can provide the list of reserved short names. <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

Custom data types support: parameter names, formulas with their own syntax, validations (possibility checks). <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

Custom data types can be used in batch import of values and called in templates like any built-in type. <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

Custom tables should use parameter names that do not collide with existing parameters in other tables (best practice). <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

Custom tables remain local to the user and are NOT overwritten by GeoDin distribution updates. <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

Central GeoDin-distributed tables cannot be edited by users (must remain consistent across installations). <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

Data types contain built-in formulas (e.g., the water content table auto-calculates W from tin mass, wet mass, dry mass inputs); formula cells are displayed in darker blue to indicate auto-populated calculated fields. <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

Each measurement table parameter has both a long name (human-readable) and a short/database field name (used in macros, queries, formulas) — toggle via right-click "short field name". <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

Data type tables are inspectable via `System > Data Types > [table name]` — shows parameter list, long name, database field name, active formulas. <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

**Compulsory fields** appear in a darker purple color in the form — e.g., the `Method` field in general data. <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

Saving a record without a compulsory field triggers an error telling the user which field is required. <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->

External users may not have permission to modify system data types (Data Types under System Configuration is read-only for external users). <!-- src: transcript/forms-templates-customization#custom-data-types-validation -->
