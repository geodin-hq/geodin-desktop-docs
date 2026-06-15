---
description: GeoDin's Layer Data model — soil/rock layers, ground descriptions, and coding
---

# Layer and Stratigraphy

The Layer Data section stores soil/rock layers with their descriptions.

## Building a layered borehole log

Layers in G1 must be entered by hand — layer by layer via "Add Ground Description".

Each layer requires selection of a Ground Description Standard (e.g. BS5930 Walker, ASTM) from a dictionary of available standards.

Once a standard is chosen, the user can "Explode" the selection to move into Borehole Log + Layers entry mode.

New layers are added via right-side buttons; each new layer adds one level below, and layer depth is entered as Depth 2 (final depth), which becomes Depth 1 of the next layer.

Sublayers can be created inside a parent layer with their own from/to boundaries, rendered as a small break in the main fill pattern with an additional from/to line in the description.

## Describing a layer

Inside a layer, ground type is selected from categories: fine-grain cohesive soil, cohesionless coarse-grain, peat, soft rock, rock.

After ground type selection, the Data Collection Standard dropdown controls field patterns (e.g. "Geotechnical English" vs other local configurations).

Primary soil type, secondary soil type, and minor constituents are each chosen from their own dictionaries, followed by plasticity, strength, and consistency.

Transition notation: a minus sign denotes a transition between two components (e.g. `silty - gravelly`), rendered with an additional vertical band in the fill pattern.

Compound terms such as "medium silty" or "fine and gravelly sand" can be created by chaining dictionary terms.

## How layer descriptions are generated

Layer descriptions are auto-generated as a text field from the selected properties; users can override with free-text edits.

The "Generate Layer Description" button regenerates the sentence from the underlying parameters, overriding any user edits.

Layer Data parameters include "dev to" (depth to / bottom depth), ground unit, and geological description.

## Switching ground description standards

Changing the ground description standard on an existing layered borehole will delete the layers (meaning is not preserved across standards); the workaround is to add a second ground description in the new standard and copy layers across via Copy Borehole Log Properties.

When saving, GeoDin warns about layer properties valid in one standard but not the target standard (e.g. BS phrasing that does not translate to ASTM), flagging the specific soil property.

## Copying layers between boreholes

Borehole log properties (layer data) can be copied from one borehole to another, even across databases, via `Copy Borehole Log` — layers transfer, but some standard-specific codes may not translate automatically.

## Further reference

GeoDin ships a PDF guide explaining ground description standards, codewords, transition conventions, and how to build custom ground descriptions.
