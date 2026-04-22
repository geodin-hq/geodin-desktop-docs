---
description: Text Macros in Reports
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Text Macros in Reports

## Borehole Log Reports

Templates and layouts drive the primary report output: borehole logs, CPT traces, multi-borehole comparison layouts. <!-- src: transcript/reporting-exports#borehole-log-reports -->

Template output can combine borehole description text, layer fill patterns, water levels, borehole design diagrams, data-sequence plots, test result tables, static labels, and dynamic macros. <!-- src: transcript/reporting-exports#borehole-log-reports -->

Borehole element drawing types include Graphic Log, Tabular Log, and Log with Default. <!-- src: transcript/reporting-exports#borehole-log-reports -->

Borehole element can be resized; a red outline indicates insufficient space for the description text. <!-- src: transcript/reporting-exports#borehole-log-reports -->

Borehole scale can be set to fixed ratios (e.g., 1:100, 1:200), to a fixed depth interval (e.g., only show first 10 m), or to "Fit to Page" (dynamic scale per object). <!-- src: transcript/reporting-exports#borehole-log-reports -->

A depth interval setting can force a page break — set end depth to 10 m and the borehole continues on page 2. <!-- src: transcript/reporting-exports#borehole-log-reports -->

Scale, interval, page break, and fit-to-page settings interact and must be balanced together. <!-- src: transcript/reporting-exports#borehole-log-reports -->

Each borehole with measurement data is marked with a small blue sphere icon next to it in the tree view. <!-- src: transcript/reporting-exports#borehole-log-reports -->

## Cross-Section Reports

Cross-section creation workflow runs under the All Objects branch → Cross Section method. <!-- src: transcript/reporting-exports#cross-section-reports -->

Step 1: select objects from the map view (drag-rectangle to select, Remove/Add from list). <!-- src: transcript/reporting-exports#cross-section-reports -->

Step 2: draw a line of section by clicking two points, OR click each borehole sequentially for a polyline. <!-- src: transcript/reporting-exports#cross-section-reports -->

Step 3: option to "project boreholes perpendicular to line of section" (single button) moves boreholes onto the line. <!-- src: transcript/reporting-exports#cross-section-reports -->

Step 4: Scales and Positions — set horizontal/vertical scale; GeoDin auto-picks paper size (A0/A1/A2/A3) to fit, or user can override via Page Layout. <!-- src: transcript/reporting-exports#cross-section-reports -->

Step 5: Cross-Section Scenarios — add graphic elements (borehole log, borehole name, depth scale left/right, samples, data sequence, measurement element, horizontal scale, distance ruler, coordinates, waypoints). <!-- src: transcript/reporting-exports#cross-section-reports -->

Cross-section depth scale divisions are configurable (e.g., 1 m → 5 m main division). <!-- src: transcript/reporting-exports#cross-section-reports -->

Cross-sections can be saved as GLO (template, no data) or GGF (with connected data). <!-- src: transcript/reporting-exports#cross-section-reports -->

GGF cross-sections are stored as graphic files and can be reopened later with their data intact. <!-- src: transcript/reporting-exports#cross-section-reports -->

Cross-sections can be stored in the project's Documents area: New Folder → New Document → choose GGF file → save in database OR link to external file. <!-- src: transcript/reporting-exports#cross-section-reports -->

Cross-section workflow supports both automatic perpendicular projection AND manual per-borehole placement. <!-- src: transcript/reporting-exports#cross-section-reports -->

## Text Macros & Dynamic Fields

Static text fields can be placed anywhere on a template (fixed label text). <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

Dynamic text fields (macros) placed inside the object frame reference GeoDin parameters — e.g., `location_name` macro pulls the current borehole name dynamically. <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

Macros use `$parameter$` syntax (begin and end with `$`). <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

Macros can concatenate multiple parameters into one string, e.g., "Sample [sample_reference] penetration from X to Y meters". <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

Macros can reference parameters from any table — general data, sample table, measurement tables, data sequences. <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

Text macro build supports calculated parameters (e.g., layer thickness). <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

Brackets in text macros `[, ]` act as conditional separators — the bracketed separator is only rendered if the macro inside has a value (avoids stray commas). <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

Text macro options: show depth, show layer data, orientation. <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

Text macro "coding/norm/user" options: for G1 these are mostly equivalent; "user" allows custom plain text + macros. <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

Translation support in text macros: a layout can hold multiple translations; switching the file language in the File menu prints the same template in different languages. <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

For G1 ground description, most info sits inside the single "geological description" macro (unlike other object types which have separate petrography, color macros). <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->

Queries: users can build SQL queries joining tables across different tests (e.g., "show water content only where unit weight is non-zero") and use query results as a data source in templates. <!-- src: transcript/reporting-exports#text-macros-dynamic-fields -->
