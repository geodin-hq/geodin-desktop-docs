---
description: Layer and Stratigraphy
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Layer and Stratigraphy

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
