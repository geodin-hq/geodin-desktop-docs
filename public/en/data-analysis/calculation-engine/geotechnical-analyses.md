---
description: Reference for GeoDin's geotechnical and hydrogeochemical analysis methods - Piper and Stiff diagrams, grain size analysis entry, Kf values and particle size settings.
---

# Geotechnical Analyses

GeoDin provides several geotechnical and hydrogeochemical analysis methods, each with its own diagram type or settings. This page is the reference for the available methods - the **Piper diagram** and **Stiff diagram** for hydrogeochemical analyses, the **Particle sizes** settings for grain size analysis, the **Evaluate SEP3 layer colors** transformation, and the **Engineer** method for registering and running the grain size analysis tools. The final sections cover entering a grain size analysis in the measurement editor: the sieve and hydrometer input masks, the analysis preferences, and the additional information tab.

## Reference: Piper diagram

The Piper diagram after PIPER (1944) is one of the most common methods to display hydrogeochemical analyses.

In two three component diagrams the ratio of the molar equivalent concentration of the anions and cations and in a combined rhombus diagram the ratio between (Na+K)/(Ca+Mg+Fe) and (HCO3+CO3)/(SO4+Cl+NO3) is shown.

Classification after the Piper diagram is based in contrary to the method after Valjaschko on the predominant solution contents, the major ions.

To display an analysis in a Piper diagram the main ingredients have to be analyzed (Ca, Mg, Na, K, HCO3+CO3, SO4, Cl), hence a not analyzed ingredient can be calculated using the ion balance. Nitrate is, if analyzed, added to the sulfate, iron to the calcium.

The calculation/estimation via the **Ion balance** is activated by default.

To display the original molar equivalent concentrations without ion balance, this option can be deactivated.

GeoDin interprets all special values (-99, -88 etc.) as 0 and all other negative values (under the detection limit) as absolute values.

If the parameters Fe or NO3 are defined as empty in the parameter definition, they are also removed from the diagram labelling.

## Reference: Stiff diagram

A Stiff diagram is a graphical representation of chemical analyses A polygonal shape is created from several parallel horizontal axes extending on either side of a vertical zero axis. Cations are plotted in milliequivalents per liter on the left side of the zero axis, one to each horizontal axis, and anions are plotted on the right side.

Stiff diagrams are useful for hydrogeologists and geochemists by displaying the major ion composition of a water sample and hence allowing rapid visual comparisons between water from different sources to be made.

## Reference: Particle sizes

The settings for the grain size analyses can be edited here.

### Hydrometer

Here the hydrometers available are defined. The hydrometers can be selected later for each analysis. The necessary data can be found in the calibration protocol for the hydrometer.

### Readout times

Here, the standard readout times for the hydrometer analysis are defined. The default set of readout times will be used to generate the datasets when creating new hydrometer analyses.

### Dispersant

Here, the dispersants are defined which can be selected when entering data. For each dispersant, a formula for calculating density and viscosity is needed. These are temperature-dependent values. For defining the temperature, use \$T\$.

### Sieve sets/Koehn sieve sets

The sieve sets available for the analyses are defined here by entering the mesh width into the data grid.

### Definitions for the soil identification

The definitions necessary for calculating the soil type can be entered here. The calculation of the component list can then be made, beginning with the largest fraction.

A component list like the one calculated should not be taken as a soil classification, but as an overview about the general composition.

A definition is composed of several parts without gap. It is best to enter the \"to\" values first, as the \"from\" value is filled automatically when moving the cursor down.

Special signs for values smaller or greater than specific values can also be defined here.

### Area curves

Here, the area curves can be defined which shall be displayed in the diagram. Enter the areas which shall be drawn, each area is defined by the grain size (x-axis) and a \"from\" and a \"to\" value. The polygon is created as the sum of the areas. The method by which the areas are connected is defined by the selected -curve type-. The curve quality controls the number of interpolated points, with a higher number resulting in a smooother curve.

## Reference: Evaluate SEP3 layer colors

This transformation analyses and generates contents from the SEP3 field Colour (Farbe) for the BML format (Borehole Markup Language).

Process notes (after Arns-Krogmann/Wiechmann):

The colour components from the SEP3 field are separated and sorted. The keys are then typed.

1.  For the output **Farbe** (colour) only the code of the the type **Farbe_G** are considered.

2.  For the output **Farbmixture** (colour mixture) only the codes oft he type **Farbe_rein** are considered.

The keys are then compared with the referenced key list. The first match in the key list is used as the overall result of the transformation.

***

## Engineer

In GeoDin the following geotechnical analysis methods are available:

**[Particle size distribution analysis](../../data-visualization/display-particle-size-distribution-psd-as-a-bar-chart.md)**

{% hint style="info" %}
To use the grain size analysis tools, a configuration file \"GrainConf.dxc\" must be available in the GeoDin\\config folder. In this file, the system settings for the grain sizes are saved. A standard configuration can be found at \<http://update.GeoDin.com/GeoDin/\> as GrainConf.zip. In the system settings, the configuration can be edited under **Particle sizes** (see the [Reference: Particle sizes](#reference-particle-sizes) section above).
{% endhint %}

In addition, the data type \"Sieve and Hydrometer Analysis (G78)\" must be registered in your database. This is done with the **Data type manager** (see the [Data Types](../../navigating-the-geodin-workspace/data-types.md) overview for the full list of registrable data types):

{% stepper %}
{% step %}
#### Step 1: Open the Databases tab

Go to the Databases tab at the top left of the GeoDin user interface.
{% endstep %}
{% step %}
#### Step 2: Select the database

Open the desired database and select it.
{% endstep %}
{% step %}
#### Step 3: Start the Data type manager

Start the **\"Data type manager\"** method.
{% endstep %}
{% step %}
#### Step 4: Add a data type

Click on the \<Add data type\> button .
{% endstep %}
{% step %}
#### Step 5: Select the data type

Then select the data type \"Sieve and slurry analysis\" from the list.
{% endstep %}
{% step %}
#### Step 6: Confirm

Click on the \<Next\> button and follow the further instructions.
{% endstep %}
{% endstepper %}

As this data type is a \"system data type\" (i.e. it is managed by the GeoDin system), it cannot be changed by the user and therefore does not appear on the GeoDin system page.

## Entering a grain size analysis

<!-- src: help/H0000007760#general-data -->
<!-- src: help/H0000011409#general-data -->

The general data for a grain size analysis is entered in the measurement data editor. Each grain size analysis is assigned to a sample of an object, and there can only be one grain size analysis for each sample.

Before entering an analysis, an object and its sample data must exist in the project. Select a sample in the GeoDin content directory (at the **Measurement points/samples** node) and start the measurement editor, then enter the master data for the grain size analysis. First select an analysis type in order to add the performed analysis types to the tree.

The component list (partial list) can be calculated to get a better overview of the distribution of the individual fractions. Which calculation method is used is defined under the analysis preferences - see [Reference: Grain size analysis preferences](#reference-grain-size-analysis-preferences) below.

### Kf values

<!-- src: help/H0000007760#kf-values -->
<!-- src: help/H0000011409#kf-values -->

Kf values (hydraulic conductivity) are calculated only if the conditions below apply. `U` is the uniformity coefficient, `D10` and `D50` are the grain diameters at 10% and 50% passing.

```
Beyer (after HERTH & ARNDTS 1973):
  if 1 < U < 20 and U, C <> 0 and 0.06 < D10 < 0.6
  then Kf = C * D10^2

Beyer dependent on compactness:
  if 1 < U < 20 and U, C <> 0 and 0.06 < D10 < 0.6
  then Kf = 100 * (A / (U + B) + C) * D10^2
  with A, B, C dependent on compactness

Hazen:
  if U < 5 and U <> 0 and 0.1 < D10 < 3
  then Kf = 0.0116 * D10^2

Seelheim:
  if D50 <> 0
  then Kf = 0.00357 * D50^2
```

***

## Reference: Sieve analysis input mask

<!-- src: help/H0000007771#sieve-input-mask -->
<!-- src: help/H0000011420#sieve-input-mask -->

The input mask for sieving analysis data is structured as follows.

### Mass input

The fields **wet mass** and **water content** are optional. If data is entered, the total mass is calculated. The fraction is always calculated from the data of the last sieve. The formula for calculating dry mass:

```
dry weight = wet weight / (1 + water content * 100)
```

### Sieve sets

Here the sieve sets can be selected which have been defined in the grain size configuration (see [Reference: Particle sizes](#reference-particle-sizes) above).

The sieve sets are saved with the sample. This way, former sieve sets can be displayed, but not selected.

{% hint style="danger" %}
If a sieve set is changed, all sieve data is lost.
{% endhint %}

### Data grid

Here the sieve residual in the single sieves can be entered. Data can be entered in absolute or cumulated form. The percentages of the grain fractions are calculated.

The sieves are listed according to the selected sieve set; the bowl is always added.

### Sieve loss / maximum grain size

The shown values **residue**, **sieving loss** and **maximum grain size** are calculated values, which are calculated from the entered values in the data grid.

## Reference: Hydrometer analysis input mask

<!-- src: help/H0000007773#hydrometer-input-mask -->
<!-- src: help/H0000011423#hydrometer-input-mask -->

The input mask for elutriation analysis data is structured as follows.

### Hydrometer

Here the hydrometers which have been defined in the grain size configuration can be selected (see [Reference: Particle sizes](#reference-particle-sizes) above).

The hydrometers are saved with the sample. This way, former hydrometers that are not in the config file anymore can be displayed, but not selected.

### Single sample

For the combined sieve and elutriation analysis, it can be selected whether a single sample or two separate samples have been analyzed. For the single sample, the mass values from the sieve analysis are used and the input fields for the dry mass are disabled.

### Determination of dry mass

Three methods are available:

* **by drying without providing wet mass** - the dry mass is provided directly.
* **by drying with providing wet mass** - the dry mass is calculated from the wet mass.
* **by underwater weighing** - the dry mass is calculated from the underwater weighing.

### Grain density and starting time

The **grain density** is necessary for the calculation of the grain diameter.

The **starting time** is adopted from the general data of the analysis. It is used as the basic time for the metering times in the data grid.

### Data grid

Based on the starting time, the standard metering times which have been defined in the grain size configuration are automatically entered. If nothing was defined, they must be added by hand.

To delete rows you can set the metering time to 0. While saving or refreshing, such data is deleted automatically.

The white data fields can be edited: metering time, hydrometer value and temperature. All other values are computed.

For a combined measurement it can be selected above the grid that the resulting curve is fitted to the last sieve. This changes the fraction of the total sample and can lead to a smoothed curve.

{% hint style="warning" %}
Fitting the curve to the last sieve is not DIN compliant.
{% endhint %}

## Reference: Grain size analysis preferences

<!-- src: help/H0000007777#analysis-preferences -->
<!-- src: help/H0000011428#analysis-preferences -->

The general settings for the analysis are made here.

### Precision of the computations

Also labeled **Accuracy of the calculations**. This value determines how many decimal places are used in the computations. It should not be less than 4. It influences only the precision of the calculation, not the way the calculated values are displayed.

### Calculation method for soil type determination

Also labeled **Rules of the soil identification**. Here a method for the calculation of the soil type can be selected from those defined in the grain size configuration (see [Reference: Particle sizes](#reference-particle-sizes) above).

The methods are saved with the sample. This way, outdated or imported methods can be displayed, but not selected. Based on these methods it is possible to calculate a proposed soil type as an approximation (suggestion).

### Storage of the k value for the calculation by Beyer

The calculation is performed by:

```
k = c * d10^2
```

where `c` is determined as a function of `U` and storage (compactness).

### Area curves

If this item is selected, an area curve can be selected which has been defined in the grain size configuration. The area curves are saved with the sample, so that outdated or imported area curves can be displayed, but not selected. The selected area curve is displayed in the grain size diagram.

{% hint style="warning" %}
Only the area curve of the first data series (sample) is displayed. An area curve can also be specified directly in the diagram settings.
{% endhint %}

### Curve type

Here you can select the way the displayed points are connected. For curves, the curve quality can be set: this value determines how many interpolated points are calculated and has a considerable influence on the duration of the calculations.

## Reference: Additional information

<!-- src: help/H0000007782#gravel-grain-size-dvgw -->
<!-- src: help/H0000011433#gravel-grain-size-dvgw -->

Additional specifications for the analysis are managed on the **Additional information** tab.

### Gravel grain size determination after DVGW MB W 113

Data for the relevant (standard) grain diameter **Dg** and the filter factor **Fg** can be calculated automatically by clicking the exclamation mark button in the respective input field. In special cases, the values can also be entered manually.

The calculation of Dg after W 113 is performed according to the grain distribution method, i.e. it uses the arithmetic mean of the maximum of the distribution and the mesh size of the next larger sieve. The calculated value should only be used as a template, because any calculation depends enormously on the chosen interpolations.

The bulk (backfill) grain diameter **Ds** is always calculated from the two values above and does not need to be entered. In this context, the grain category is determined after DIN 4924, but it can be changed manually in special cases.

### Categorization after DIN 18196

<!-- src: help/H0000007782#din-18196 -->
<!-- src: help/H0000011433#din-18196 -->

Only limited automated specifications can be made with the data of the grain size analysis, so the calculated values can be completely overwritten.

The following classification can be calculated:

* **Coarse grained soils** - classified without restriction.
* **Mixed grained soils** - no clear statement of clay/silt is possible. This is displayed accordingly in the resulting calculation.
* **Fine grained soils** - additional specifications of plastic limit and liquid limit are required. If the values are available, they can be entered accordingly and are used in the calculation.
