---
description: Borehole and Location Model
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Borehole and Location Model

## Borehole / Location Data Model

The General Data section holds borehole metadata: borehole name, location name, project title, report number, client, method, coordinates, coordinate system, depth, ground level, penetration, recovery. <!-- src: transcript/data-model-architecture#borehole-location-data-model -->

Drilling information captured in General Data includes vessel, drilling method, drilling standard, start time, pressure on instrument, drilling tool type, auger/bit type, and diameter. <!-- src: transcript/data-model-architecture#borehole-location-data-model -->

Compulsory fields (e.g. `Method` in general data) appear in a darker purple colour; saving a record without a compulsory field triggers an error identifying the missing field. <!-- src: transcript/data-model-architecture#borehole-location-data-model -->

## Layer & Stratigraphy Model

The Layer Data section stores soil/rock layers with their descriptions. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Layers in G1 must be entered by hand — layer by layer via "Add Ground Description". <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Each layer requires selection of a Ground Description Standard (e.g. BS5930 Walker, ASTM) from a dictionary of available standards. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Once a standard is chosen, the user can "Explode" the selection to move into Borehole Log + Layers entry mode. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

New layers are added via right-side buttons; each new layer adds one level below, and layer depth is entered as Depth 2 (final depth), which becomes Depth 1 of the next layer. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Sublayers can be created inside a parent layer with their own from/to boundaries, rendered as a small break in the main fill pattern with an additional from/to line in the description. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Inside a layer, ground type is selected from categories: fine-grain cohesive soil, cohesionless coarse-grain, peat, soft rock, rock. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

After ground type selection, the Data Collection Standard dropdown controls field patterns (e.g. "Geotechnical English" vs other local configurations). <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Primary soil type, secondary soil type, and minor constituents are each chosen from their own dictionaries, followed by plasticity, strength, and consistency. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Transition notation: a minus sign denotes a transition between two components (e.g. `silty - gravelly`), rendered with an additional vertical band in the fill pattern. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Compound terms such as "medium silty" or "fine and gravelly sand" can be created by chaining dictionary terms. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Layer descriptions are auto-generated as a text field from the selected properties; users can override with free-text edits. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

The "Generate Layer Description" button regenerates the sentence from the underlying parameters, overriding any user edits. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Layer Data parameters include "dev to" (depth to / bottom depth), ground unit, and geological description. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Changing the ground description standard on an existing layered borehole will delete the layers (meaning is not preserved across standards); the workaround is to add a second ground description in the new standard and copy layers across via Copy Borehole Log Properties. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

When saving, GeoDin warns about layer properties valid in one standard but not the target standard (e.g. BS phrasing that does not translate to ASTM), flagging the specific soil property. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

GeoDin ships a PDF guide explaining ground description standards, codewords, transition conventions, and how to build custom ground descriptions. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

Borehole log properties (layer data) can be copied from one borehole to another, even across databases, via `Copy Borehole Log` — layers transfer, but some standard-specific codes may not translate automatically. <!-- src: transcript/data-model-architecture#layer-stratigraphy-model -->

## Sample & Specimen Model

The Sample Data section holds all samples for a location. <!-- src: transcript/data-model-architecture#sample-specimen-model -->

Each sample has a sample reference (sample name, often just a number) and a from/to depth. <!-- src: transcript/data-model-architecture#sample-specimen-model -->

Sample fields include sample reference (user-defined, advised to be unique), recovery from/to depth, penetration from/to depth, sample condition (e.g. disturbed/undisturbed, from dictionary), sampling method (from dictionary, e.g. grab sample, auger), sample type (from dictionary, e.g. bag), date, comments, and blow count. <!-- src: transcript/data-model-architecture#sample-specimen-model -->

Parent sample reference: subsamples/specimens can reference their parent sample via the `Parent Sample Reference` column for hierarchical sample tracking. <!-- src: transcript/data-model-architecture#sample-specimen-model -->

Sample condition for specific tests (e.g. undisturbed, remoulded on UU) is stored inside the test parameters, not directly on the sample record. <!-- src: transcript/data-model-architecture#sample-specimen-model -->

In Onsite, the sample workflow on a drilling form is: select sampling method (e.g. liner tube 4-inch), condition (e.g. undisturbed), recovery percentage (e.g. 95%+), sample type, depth reference, then print a QR-coded label that can be stuck on the physical sample. <!-- src: transcript/data-model-architecture#sample-specimen-model -->

Onsite assigns each soil sample a unique ID structured as: 1 fixed prefix letter (configurable) + 6 characters encoding a timestamp + 4 random characters. If the prefix is extended to 2 or 3 characters, the random section shrinks so that prefix + random is always 5 characters total. <!-- src: transcript/data-model-architecture#sample-specimen-model -->

The timestamp portion of the Onsite sample ID changes every second, so collisions only happen if more than ~20–100 samples are generated in the exact same second. <!-- src: transcript/data-model-architecture#sample-specimen-model -->

## Layouts & Templates (Data Model Integration)

Templates pull data from any GeoDin table (general data, sample table, measurement tables, data sequences) via macros that reference parameters by short field name. <!-- src: transcript/data-model-architecture#layouts-templates-data-model-integration -->

Object types use different parameter names in templates — e.g. for AGS SCPT, the parameters are `SCPT_RES` (friction resistance) and `SCPT_FRR` (friction ratio); G1 uses different names for the same data. <!-- src: transcript/data-model-architecture#layouts-templates-data-model-integration -->

Two file formats for saved layouts: **GLO (GeoDin Layout)** = template with no data connection, and **GGF (GeoDin Graphic Format)** = layout plus connected data (e.g. a specific cross-section with 10 boreholes baked in). <!-- src: transcript/data-model-architecture#layouts-templates-data-model-integration -->

Queries: users can build SQL queries that join tables across different tests (e.g. "show water content only where unit weight is non-zero") and use the query result as a template data source. <!-- src: transcript/data-model-architecture#layouts-templates-data-model-integration -->
