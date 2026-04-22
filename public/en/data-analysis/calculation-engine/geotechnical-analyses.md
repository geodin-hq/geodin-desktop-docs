---
description: Geotechnical Analyses
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Geotechnical Analyses

### Piper diagram

The Piper diagram after PIPER (1944) is one of the most common methods to display hydrogeochemical analyses.

In two three component diagrams the ratio of the molar equivalent concentration of the anions and cations and in a combined rhombus diagram the ratio between (Na+K)/(Ca+Mg+Fe) and (HCO3+CO3)/(SO4+Cl+NO3) is shown.

Classification after the Piper diagram is based in contrary to the method after Valjaschko on the predominant solution contents, the major ions.

To display an analysis in a Piper diagram the main ingredients have to be analyzed (Ca, Mg, Na, K, HCO3+CO3, SO4, Cl), hence a not analyzed ingredient can be calculated using the ion balance. Nitrate is, if analyzed, added to the sulfate, iron to the calcium.

The calculation/estimation via the [Ion balance](geotechnical-analyses.md) is activated by default.

To display the original molar equivalent concentrations without ion balance, this option can be deactivated.

GeoDin interprets all special values (-99, -88 etc.) as 0 and all other negative values (under the detection limit) as absolute values.

If the parameters Fe or NO3 are defined as empty in the parameter definition, they are also removed from the diagram labelling. <!-- src: help/05/638 -->

### Particle sizes

The settings for the grain size analyses can be edited here.


**Hydrometer**

Here the hydrometers available are defined. The hydrometers can be selected later for each analysis. The necessary data can be found in the calibration protocol for the hydrometer.


**Readout times**

Here, the standard readout times for the hydrometer analysis are defined. The default set of readout times will be used to generate the datasets when creating new hydrometer analyses.


**Dispersant**

Here, the dispersants are defined which can be selected when entering data. For each dispersant, a formula for calculating density and viscosity is needed. These are temperature-dependent values. For defining the temperature, use \$T\$.


**Sieve sets/Koehn sieve sets**

The sieve sets available for the analyses are defined here by entering the mesh width into the data grid.


**Definitions for the soil identification**

The definitions necessary for calculating the soil type can be entered here. The calculation of the component list can then be made, beginning with the largest fraction.

A component list like the one calculated should not be taken as a soil classification, but as an overview about the general composition.

A definition is composed of several parts without gap. It is best to enter the \"to\" values first, as the \"from\" value is filled automatically when moving the cursor down.

Special signs for values smaller or greater than specific values can also be defined here.


**Area curves**

Here, the area curves can be defined which shall be displayed in the diagram. Enter the areas which shall be drawn, each area is defined by the grain size (x-axis) and a \"from\" and a \"to\" value. The polygon is created as the sum of the areas. The method by which the areas are connected is defined by the selected -curve type-. The curve quality controls the number of interpolated points, with a higher number resulting in a smooother curve. <!-- src: help/10/6318 -->

### Evaluate SEP3 layer colors

This transformation analyses and generates contents from the SEP3 field Colour (Farbe) for the BML format (Borehole Markup Language).

Process notes (after Arns-Krogmann/Wiechmann):

The colour components from the SEP3 field are separated and sorted. The keys are then typed.

1.  For the output **Farbe** (colour) only the code of the the type **Farbe_G** are considered.

<!-- -->

1.  For the output **Farbmixture** (colour mixture) only the codes oft he type **Farbe_rein** are considered.

The keys are then compared with the referenced key list. The first match in the key list is used as the overall result of the transformation. <!-- src: help/10/8581 -->

### Stiff diagram

A Stiff diagram is a graphical representation of chemical analyses A polygonal shape is created from several parallel horizontal axes extending on either side of a vertical zero axis. Cations are plotted in milliequivalents per liter on the left side of the zero axis, one to each horizontal axis, and anions are plotted on the right side.

Stiff diagrams are useful for hydrogeologists and geochemists by displaying the major ion composition of a water sample and hence allowing rapid visual comparisons between water from different sources to be made. <!-- src: help/05/10784 -->

### Engineer

In GeoDin the following geotechnical analysis methods are available:

 **[Particle size distribution analysis](../../data-visualization/display-particle-size-distribution-psd-as-a-bar-chart.md)*Note:*** *To use the grain size analysis tools, a configuration file \"GrainConf.dxc\" must be available in the GeoDin\\config folder. In this file, the system settings for the grain sizes are saved. A standard configuration can be found at \<http://update.GeoDin.com/GeoDin/\> as GrainConf.zip. In the system settings, the configuration can be edited at [Particle sizes](../../data-visualization/display-particle-size-distribution-psd-as-a-bar-chart.md).*

In addition, the data type \"Sieve and Hydrometer Analysis (G78)\" must be registered in your database.

This is done with the [Datatype Manager](../../navigating-the-geodin-workspace/data-types.md).

1\) Go to the Databases tab at the top left of the GeoDin user interface.

2\) Open the desired database and select it.

3\) Start the **\"Data type manager\"** method.

4\) Click on the \<Add data type\> button .

5\) Then select the data type \"Sieve and slurry analysis\" from the list.

6\) Click on the \<Next\> button and follow the further instructions.

As this data type is a \"system data type\" (i.e. it is managed by the GeoDin system), it cannot be changed by the user and therefore does not appear on the GeoDin system page. <!-- src: help/10/11404 -->
