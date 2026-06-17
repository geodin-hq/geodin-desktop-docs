# Coordinate Systems and EPSG

Every location in GeoDin stores its coordinates together with the coordinate system they belong to. This page covers where that system is selected (the EPSG dictionary), how it is stored on disk, and how to transform an object's coordinates from one EPSG system to another directly in the general data editor.

## Coordinate Systems & EPSG Support

Each location stores coordinates (easting/northing or X/Y) and a coordinate system as part of general data.

Coordinate systems are selected from the `G1 EPSG` dictionary, a list of EPSG-coded coordinate systems (e.g. WGS84).

EPSG dictionary is stored as `G1_EPSG.GSD` in the syslib folder at `C:\ProgramData\GeoDin\System\`.

In GeoDin Onsite, the local coordinate system is configured via EPSG code in the project settings and auto-filled into new forms as a default.

## Transforming coordinates in-mask

GeoDin allows a coordinate transformation to be run directly in the general data editor - without switching to the Maps module or an external GIS tool.

{% stepper %}
{% step %}
#### Step 1: Open the general data editor
Open an object's general data editor (the mask showing X/Y coordinates and EPSG code).
{% endstep %}

{% step %}
#### Step 2: Locate the Coordinate transformation section
In the right panel of the general data editor, locate the **Coordinate transformation** section (crosshair icon).
{% endstep %}

{% step %}
#### Step 3: Confirm the source
The current coordinates and coordinate system are pre-filled as the source.
{% endstep %}

{% step %}
#### Step 4: Choose the target system
Click the question mark next to the **Target system** field and select the desired target EPSG code (e.g. EPSG:25832 for UTM Zone 32N).
{% endstep %}

{% step %}
#### Step 5: Calculate
Click **Calculate** (German: *Berechnen*). GeoDin computes the X/Y values in the target system and displays them in the result fields.
{% endstep %}

{% step %}
#### Step 6: Write the result back
Click **OK** to write the transformed coordinates back to the object's general data fields.
{% endstep %}
{% endstepper %}

{% hint style="warning" %}
GeoDin determines the transformation algorithm internally. No transformation method selection dialog is shown, and no accuracy estimate or warning is displayed. Users who require a specific transformation method - for example NTv2 grid-based transformations between Gauss-Krüger (DHDN) and UTM (ETRS89) - should verify results independently using QGIS or a surveying tool that exposes the transformation method and tolerance.
{% endhint %}

{% hint style="info" %}
The transformation defaults to the last coordinate system used. If you perform the same transformation repeatedly, the target EPSG field will already be pre-populated on the next object.
{% endhint %}

For displaying boreholes on a map and picking coordinates by clicking, see [Map View and Coordinate Picking](map-view-coordinate-picking.md).
