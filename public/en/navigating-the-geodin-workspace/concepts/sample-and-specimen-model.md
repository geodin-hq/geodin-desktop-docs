---
description: GeoDin's data model for samples, specimens, and the parent-child relationships between them
---

# Sample and Specimen Model

The **Sample Data** section holds every sample associated with a location. Each sample carries a reference, a depth interval, and the sampling metadata that links it back to the field operation; specimens (subsamples) reference their parent sample for hierarchical tracking.

For the related concepts, see also:

- [Borehole and Location Model](borehole-and-location-model.md) - the location these samples belong to.
- [Layer and Stratigraphy](layer-and-stratigraphy.md) - ground descriptions at the depths these samples cover.

## Sample fields

Each sample has:

- **Sample reference** - sample name, often just a number; user-defined and advised to be unique within a location.
- **Recovery from / to depth** and **penetration from / to depth**.
- **Sample condition** - disturbed / undisturbed / etc., from a dictionary.
- **Sampling method** - grab sample, auger, etc., from a dictionary.
- **Sample type** - bag, etc., from a dictionary.
- **Date, comments, blow count.**

{% hint style="info" %}
**Sample condition for specific tests** (e.g. undisturbed / remoulded on a UU triaxial test) is stored inside the *test parameters*, not directly on the sample record. The sample-record condition refers to the sample as collected; per-test conditions vary across the laboratory program.
{% endhint %}

## Parent samples and specimens

Subsamples and specimens reference their parent sample via the `Parent Sample Reference` column. This produces a clean parent-child structure in the sample table: a single parent (e.g. a 4-inch liner tube) with multiple specimens taken from it for individual lab tests.

## Onsite sample workflow

In GeoDin Onsite, the sample workflow on a drilling form is:

1. Select **sampling method** (e.g. liner tube, 4-inch).
2. Select **condition** (e.g. undisturbed).
3. Enter **recovery percentage** (e.g. 95 %+).
4. Select **sample type**.
5. Set **depth reference**.
6. Print a **QR-coded label** that can be stuck on the physical sample.

## Onsite sample IDs

Onsite assigns each soil sample a unique ID with a fixed structure:

| Component | Length | Notes |
|---|---|---|
| Prefix letter(s) | 1-3 chars | Configurable |
| Timestamp | 6 chars | Encodes the moment of sampling |
| Random | 4 chars (default) | Shrinks if prefix grows so that *prefix + random* always totals 5 chars |

The timestamp portion changes every second, so collisions only happen if more than ~20-100 samples are generated in the exact same second.
