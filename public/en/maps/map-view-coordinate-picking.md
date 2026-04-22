---
description: Map View Coordinate Picking
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** C (Thin (limited source material))
**Needs:** editorial review
-->

# Map View Coordinate Picking

## Coordinate Systems & EPSG Support

Each location stores coordinates (easting/northing or X/Y) and a coordinate system as part of general data. <!-- src: transcript/maps-gis-integration#coordinate-systems-epsg-support -->

Coordinate systems are selected from the `G1 EPSG` dictionary, a list of EPSG-coded coordinate systems (e.g. WGS84). <!-- src: transcript/maps-gis-integration#coordinate-systems-epsg-support -->

EPSG dictionary is stored as `G1_EPSG.GSD` in the syslib folder at `C:\ProgramData\GeoDin\System\`. <!-- src: transcript/maps-gis-integration#coordinate-systems-epsg-support -->

In GeoDin Onsite, the local coordinate system is configured via EPSG code in the project settings and auto-filled into new forms as a default. <!-- src: transcript/maps-gis-integration#coordinate-systems-epsg-support -->

## Map View & Coordinate Picking

Once coordinates and a coordinate system are entered, a borehole can be displayed on a map via the map preview button in the right-hand ribbon. <!-- src: transcript/maps-gis-integration#map-view-coordinate-picking -->

The map view supports picking coordinates by clicking: the `Draw` tool lets users click on the map to capture local easting/northing values back into the coordinate fields. <!-- src: transcript/maps-gis-integration#map-view-coordinate-picking -->

Coordinate picking on the map is useful for establishing tentative borehole locations before precise survey data is available. <!-- src: transcript/maps-gis-integration#map-view-coordinate-picking -->

The cross-section method includes a top-down map view for spatially selecting boreholes via drag-rectangle selection. <!-- src: transcript/maps-gis-integration#map-view-coordinate-picking -->
