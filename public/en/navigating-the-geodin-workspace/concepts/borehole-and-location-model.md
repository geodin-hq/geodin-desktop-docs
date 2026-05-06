---
description: GeoDin's General Data model for borehole and location records
---

# Borehole and Location Model

The **General Data** section of a GeoDin object holds the headline record for a borehole or location: identifiers, project context, geometry, and the drilling/sampling metadata that all downstream tables hang off.

For the related concepts, see also:

- [Layer and Stratigraphy](layer-and-stratigraphy.md) — soil/rock layers and ground descriptions attached to a location.
- [Sample and Specimen Model](sample-and-specimen-model.md) — samples taken from a location.
- [Object Types](object-types.md) — G1, AGS, and other object-type families.

## What General Data holds

- **Identifiers and project context:** borehole name, location name, project title, report number, client, method.
- **Geometry:** coordinates, coordinate system, depth, ground level, penetration, recovery.
- **Drilling information:** vessel, drilling method, drilling standard, start time, pressure on instrument, drilling tool type, auger/bit type, diameter.

## Compulsory fields

Compulsory fields (e.g. `Method` in general data) appear in a darker purple colour. Saving a record without a compulsory field triggers a validation error that names the missing field — the record cannot be persisted until the field is supplied.

<!-- src: transcript/data-model-architecture#borehole-location-data-model -->
