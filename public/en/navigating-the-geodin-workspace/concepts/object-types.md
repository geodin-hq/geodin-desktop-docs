---
description: >-
  GeoDin object types - the data-entry schemas (G1, AGS4, German Step 3, ISO,
  and others) behind boreholes, locations, and custom tables.
---

# Object Types

## Available object types

Object types are viewable under `System > System Configuration > Object Types`.

Common object types include Location (also known as "G1"), AGS4 (recently added and published), plus German Step 3, ISO variants, and others depending on the installation.

Object types also include German standard (Step 3) and ISO variants with slightly different field definitions.

## The G1 object type

The G1 object type is internally referred to as "G1 Location" (short name "G1 identifier"); in newer/other versions it may simply appear as "Location".

G1 is mainly used for boreholes and CPT locations and was built to mimic legacy gINT-style workflows.

G1 geological descriptions combine petrography, colour, ground unit, and everything else into one single field, unlike other object types that split these into separate parameters.

## The AGS object type

The AGS object type has a different table structure because it tries to mimic and tailor the groups/headers structure of an AGS file.

## Mixing object types

A single project can contain both G1 location objects and AGS4 objects simultaneously (mixed object types in one project).

When mixing object types, duplicate general data (location name, client, coordinates) may need to be entered on both the G1 and AGS4 object for the same physical location.

## Custom Data Types

Users can create their own custom data types/tables from scratch with their own parameter names and formulas (e.g. to add cyclic triaxial tests not present in the main distribution) via `System > Data Types > New Data Type`.

Custom data types require a unique 3-character short name that does not conflict with existing system data types.

Custom data types support: parameter names, formulas with their own syntax, and validations (possibility checks).

Custom data types can be used in batch imports and called in templates like any built-in type.

Best practice: custom tables should use parameter names that do not collide with existing parameters in other tables.

Custom data types remain local to the user (stored in syslib) and are NOT overwritten by GeoDin distribution updates.

Central GeoDin-distributed tables cannot be edited by users (they must remain consistent across installations).

External users may not have permission to modify system data types (Data Types under System Configuration is read-only for external users), but custom data type creation is always available.
