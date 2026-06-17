# Display Particle Size Distribution (PSD) as a bar chart

This page explains how to display a **particle size distribution (PSD)** as a **depth-oriented bar chart** in a GeoDin layout. The workflow has three stages: recording sample data, entering PSD values, and configuring the layout element. All three stages are required.

## Walkthrough

{% stepper %}
{% step %}
#### Step 1: Record the sample data

Before creating any visualization, the **sample data for the particle size analysis** must be entered into GeoDin.

* Open the **Data management** method.
* Create a new sample entry.
* Define the **depth interval** of the sample.

This step ensures that the particle size data can later be linked correctly to depth.

<figure><img src="../.gitbook/assets/image (68).png" alt=""><figcaption>A sample entry in the Data management method - the depth interval fields are visible at the top of the form.</figcaption></figure>
{% endstep %}
{% step %}
#### Step 2: Record the particle size distribution

Once the sample data exists, the **particle size distribution values** must be entered.

* Open the **Measurement data** method.
* Select the measuring point type **samples (geot. borehole)**.
* Navigate to the data type **(G1) PSD**.
* Enter the particle size analysis values for the sample.

GeoDin stores the PSD values that will be visualized in the layout in the next steps.

<figure><img src="../.gitbook/assets/image (69).png" alt=""><figcaption>The Measurement data method with (G1) PSD selected - particle size values are entered in the table on the right.</figcaption></figure>
{% endstep %}
{% step %}
#### Step 3: Add a data sequence element to the layout

* Open the **Graphic printing and editing** option from the **Methods** column.
* Create an object frame within the new layout as described in the [Layout Overview](https://docs.geodin.com/navigating-the-geodin-workspace/user-interface) section.
* Drag the **Data sequence** element into the object frame (blue box) of your GeoDin layout using the corresponding tool.

<figure><img src="../.gitbook/assets/image (71).png" alt=""><figcaption>The layout with the object frame (blue box) ready to receive the Data sequence element.</figcaption></figure>

* Create a new series for each particle size component using the **plus (+) button**.

{% hint style="info" %}
Each **series** represents **one component** of the particle size distribution.
{% endhint %}

<figure><img src="../.gitbook/assets/image (72).png" alt=""><figcaption>The series list after adding multiple components - each row corresponds to one particle size fraction.</figcaption></figure>

* Select the particle size component for each series under **Parameter**.

<figure><img src="../.gitbook/assets/image (74).png" alt=""><figcaption>The Parameter field for a series - use this to assign the correct PSD fraction (e.g. clay, silt, sand) to each series.</figcaption></figure>

* Define the depth interval (start and end depth / recovery) of your sample.

<figure><img src="../.gitbook/assets/image (75).png" alt=""><figcaption>Depth interval settings for the series - the start and end depth fields link the bar chart to the correct sample depth.</figcaption></figure>
{% endstep %}
{% step %}
#### Step 4: Define fill patterns and colors

To visually distinguish the particle size components, configure the fill pattern and color for each series.

1. Navigate to the corresponding series (e.g. `PSD:CLAY`).
2. Open the **Fill pattern** branch.
3. Select the **Vector** option and an appropriate fill pattern (e.g. clay fill pattern according to **GEOT1ENG**).
4. Switch to the **Colour / Transparency** branch.
5. Select the desired color, or use the default color of the selected fill pattern.

<figure><img src="../.gitbook/assets/image (77).png" alt=""><figcaption>The Fill pattern branch - Vector is selected and a standardized GEOT1ENG clay pattern is applied.</figcaption></figure>

<figure><img src="../.gitbook/assets/image (78).png" alt=""><figcaption>The Colour / Transparency branch - the color can be set independently or inherited from the fill pattern.</figcaption></figure>
{% endstep %}
{% step %}
#### Step 5: Configure the parameter axis

Because particle size distributions always total **100%**, the axis must be configured accordingly.

* Navigate to the **Axis range** branch.
* Activate **user-defined display** of the parameter axis.
* Set the axis interval to **0 to 100**.

{% hint style="warning" %}
Setting the axis to 0-100 is required for correct proportional representation. An incorrect range will distort the bar chart.
{% endhint %}

<figure><img src="../.gitbook/assets/image (79).png" alt=""><figcaption>The Axis range branch with user-defined display active and the interval set to 0-100.</figcaption></figure>
{% endstep %}
{% step %}
#### Step 6: Stack and normalize the series

To create a proper stacked bar chart:

* Navigate to the **Series** branch.
* Select diagram type **Stack series**.
* Activate the option **Recalculate to 100%**.

This ensures all components together form a complete particle size distribution.

<figure><img src="../.gitbook/assets/image (87).png" alt=""><figcaption>The Series branch with Stack series selected and Recalculate to 100% active - this produces a fully normalized stacked bar chart.</figcaption></figure>
{% endstep %}
{% step %}
#### Step 7: Adjust series order and heading

**Series order**

* Open the **Series definitions** branch.
* Use the **blue arrows** to change the order.
* The **lowest entry** in the list is displayed on the **left-hand side** of the bar chart.

<figure><img src="../.gitbook/assets/image (82).png" alt=""><figcaption>The Series definitions branch - the blue arrows reorder the series; the bottom entry appears on the left of the bar chart.</figcaption></figure>

**Diagram heading**

* The diagram heading is defined by the **first series**.
* Assign a **custom heading** that differs from the parameter name if needed for layout readability.

<figure><img src="../.gitbook/assets/image (85).png" alt=""><figcaption>The heading field for the first series - entering a custom name here controls the diagram title shown in the layout.</figcaption></figure>
{% endstep %}
{% endstepper %}

The result is a **depth-oriented stacked bar chart** that displays the particle size distribution for each sample across depth, supporting soil composition interpretation, standardized reporting, and depth-related geotechnical analysis.

<figure><img src="../.gitbook/assets/image (86).png" alt=""><figcaption>The completed depth-oriented PSD bar chart - each patterned or colored bar segment represents one particle size fraction, stacked to 100% at each sample depth.</figcaption></figure>
