---
description: Object Types
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Object Types

## Object Types

Object types are viewable under `System > System Configuration > Object Types`. <!-- src: transcript/data-model-architecture#object-types -->

Common object types include Location (also known as "G1"), AGS4 (recently added and published), plus German Step 3, ISO variants, and others depending on the installation. <!-- src: transcript/data-model-architecture#object-types -->

The G1 object type is internally referred to as "G1 Location" (short name "G1 identifier"); in newer/other versions it may simply appear as "Location". <!-- src: transcript/data-model-architecture#object-types -->

G1 is mainly used for boreholes and CPT locations and was built to mimic legacy gINT-style workflows. <!-- src: transcript/data-model-architecture#object-types -->

G1 geological descriptions combine petrography, colour, ground unit, and everything else into one single field, unlike other object types that split these into separate parameters. <!-- src: transcript/data-model-architecture#object-types -->

The AGS object type has a different table structure because it tries to mimic and tailor the groups/headers structure of an AGS file. <!-- src: transcript/data-model-architecture#object-types -->

A single project can contain both G1 location objects and AGS4 objects simultaneously (mixed object types in one project). <!-- src: transcript/data-model-architecture#object-types -->

When mixing object types, duplicate general data (location name, client, coordinates) may need to be entered on both the G1 and AGS4 object for the same physical location. <!-- src: transcript/data-model-architecture#object-types -->

Object types also include German standard (Step 3) and ISO variants with slightly different field definitions. <!-- src: transcript/data-model-architecture#object-types -->

## Custom Data Types

Users can create their own custom data types/tables from scratch with their own parameter names and formulas (e.g. to add cyclic triaxial tests not present in the main distribution) via `System > Data Types > New Data Type`. <!-- src: transcript/data-model-architecture#custom-data-types -->

Custom data types require a unique 3-character short name that does not conflict with existing system data types. <!-- src: transcript/data-model-architecture#custom-data-types -->

Custom data types support: parameter names, formulas with their own syntax, and validations (possibility checks). <!-- src: transcript/data-model-architecture#custom-data-types -->

Custom data types can be used in batch imports and called in templates like any built-in type. <!-- src: transcript/data-model-architecture#custom-data-types -->

Best practice: custom tables should use parameter names that do not collide with existing parameters in other tables. <!-- src: transcript/data-model-architecture#custom-data-types -->

Custom data types remain local to the user (stored in syslib) and are NOT overwritten by GeoDin distribution updates. <!-- src: transcript/data-model-architecture#custom-data-types -->

Central GeoDin-distributed tables cannot be edited by users (they must remain consistent across installations). <!-- src: transcript/data-model-architecture#custom-data-types -->

External users may not have permission to modify system data types (Data Types under System Configuration is read-only for external users), but custom data type creation is always available. <!-- src: transcript/data-model-architecture#custom-data-types -->
