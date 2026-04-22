---
description: Coordinate Systems and EPSG
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** C (Thin (limited source material))
**Needs:** editorial review
-->

# Coordinate Systems and EPSG

## Coordinate Systems & EPSG Support

Each location stores coordinates (easting/northing or X/Y) and a coordinate system as part of general data. <!-- src: transcript/maps-gis-integration#coordinate-systems-epsg-support -->

Coordinate systems are selected from the `G1 EPSG` dictionary, a list of EPSG-coded coordinate systems (e.g. WGS84). <!-- src: transcript/maps-gis-integration#coordinate-systems-epsg-support -->

EPSG dictionary is stored as `G1_EPSG.GSD` in the syslib folder at `C:\ProgramData\GeoDin\System\`. <!-- src: transcript/maps-gis-integration#coordinate-systems-epsg-support -->

In GeoDin Onsite, the local coordinate system is configured via EPSG code in the project settings and auto-filled into new forms as a default. <!-- src: transcript/maps-gis-integration#coordinate-systems-epsg-support -->

## Transforming coordinates in-mask

GeoDin allows a coordinate transformation to be run directly in the general data editor — without switching to the Maps module or an external GIS tool.

**How to use it:**

1. Open an object's general data editor (the mask showing X/Y coordinates and EPSG code).
2. In the right panel of the general data editor, locate the **Coordinate transformation** section (crosshair icon).
3. The current coordinates and coordinate system are pre-filled as the source.
4. Click the question mark next to the **Target system** field and select the desired target EPSG code (e.g. EPSG:25832 for UTM Zone 32N).
5. Click **Calculate** (German: *Berechnen*). GeoDin computes the X/Y values in the target system and displays them in the result fields.
6. Click **OK** to write the transformed coordinates back to the object's general data fields.

{% hint style="warning" %}
GeoDin determines the transformation algorithm internally. No transformation method selection dialog is shown, and no accuracy estimate or warning is displayed. Users who require a specific transformation method — for example NTv2 grid-based transformations between Gauss-Krüger (DHDN) and UTM (ETRS89) — should verify results independently using QGIS or a surveying tool that exposes the transformation method and tolerance.
{% endhint %}

{% hint style="info" %}
The transformation defaults to the last coordinate system used. If you perform the same transformation repeatedly, the target EPSG field will already be pre-populated on the next object.
{% endhint %}

<!-- src: transcript/2026-04-15-in-person-workshop -->

## Map View & Coordinate Picking

Once coordinates and a coordinate system are entered, a borehole can be displayed on a map via the map preview button in the right-hand ribbon. <!-- src: transcript/maps-gis-integration#map-view-coordinate-picking -->

The map view supports picking coordinates by clicking: the `Draw` tool lets users click on the map to capture local easting/northing values back into the coordinate fields. <!-- src: transcript/maps-gis-integration#map-view-coordinate-picking -->

Coordinate picking on the map is useful for establishing tentative borehole locations before precise survey data is available. <!-- src: transcript/maps-gis-integration#map-view-coordinate-picking -->

The cross-section method includes a top-down map view for spatially selecting boreholes via drag-rectangle selection. <!-- src: transcript/maps-gis-integration#map-view-coordinate-picking -->
