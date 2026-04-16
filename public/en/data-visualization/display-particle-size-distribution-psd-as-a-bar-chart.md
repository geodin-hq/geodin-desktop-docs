# Display Particle Size Distribution (PSD) as a bar chart

This guide explains how to display a **particle size distribution (PSD)** as a **depth‑oriented bar chart** in a GeoDin layout.

The process consists of **three main stages**:

1. Recording sample data
2. Entering particle size distribution data
3. Visualizing the data as a stacked bar chart in a layout

Each stage is required to achieve a correct and depth‑oriented visualization.

### 1. Recording the Sample Data

Before creating any visualization, the **sample data for the particle size analysis** must be entered into GeoDin.

* Open the **Data management** method.
* Create a new sample entry.
* Define:
  * **Depth interval** of the sample

This step ensures that the particle size data can later be linked correctly to depth.

<figure><img src="../.gitbook/assets/image (68).png" alt=""><figcaption></figcaption></figure>

### 2. Recording the Particle Size Distribution

Once the sample data exists, the **particle size distribution values** must be entered.

* Open the **Measurement data** method.
* Select the measuring point type **samples (geot. borehole)**.
* Navigate to the data type **(G1) PSD.**
* Enter the particle size analysis values for the sample.

At this stage, GeoDin stores the PSD values that will later be visualized in the layout.

<figure><img src="../.gitbook/assets/image (69).png" alt=""><figcaption></figcaption></figure>

### 3. Depth‑Oriented Visualization in the Layout

To display the particle size distribution as a **bar chart aligned to depth**, a specific layout element is required.

#### 3.1 Creating Series for Particle Size Components

* Open the **Graphic printing and editing** option from the **Methods** column.
* Create an object frame within the new layout as mentioned [here](https://docs.geodin.com/navigating-the-geodin-workspace/user-interface) in Section 3 by selecting **Layout Overview** icon.
* Drag the **Data sequence** element into the object frame (blue box shown in the picture below) of your GeoDin layout using the corresponding tool.

<figure><img src="../.gitbook/assets/image (71).png" alt=""><figcaption></figcaption></figure>

* Create a new series for each particle size component using the **plus (+) button**.

{% hint style="info" %}
Each **series** represents **one component** of the particle size distribution.
{% endhint %}

<figure><img src="../.gitbook/assets/image (72).png" alt=""><figcaption></figcaption></figure>

* Select the particle size component for each series under **Parameter.**

<figure><img src="../.gitbook/assets/image (74).png" alt=""><figcaption></figcaption></figure>

* Then define the depth interval (start and end depth / recovery) of your sample.

<figure><img src="../.gitbook/assets/image (75).png" alt=""><figcaption></figcaption></figure>

#### 3.2 Defining Fill Patterns and Colors

To visually distinguish the particle size components, configure the fill pattern and color.

1. Navigate to the corresponding series (e.g. `PSD:CLAY`).
2. Open the **Fill pattern** branch.
3. Select:
   * **Vector** option
   * Appropriate fill pattern (e.g. clay fill pattern according to **GEOT1ENG**).
4. Switch to the **Colour / Transparency** branch.
5. Select:
   * Desired color, or
   * Default color of the selected fill pattern.

This ensures standardized and clear visual representation.

<figure><img src="../.gitbook/assets/image (77).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../.gitbook/assets/image (78).png" alt=""><figcaption></figcaption></figure>

#### 3.3 Configuring the Parameter Axis

Because particle size distributions always total **100%**, the axis must be configured accordingly.

**Steps**

* Navigate to the **Axis range** branch.
* Activate **user‑defined display** of the parameter axis.
* Set the axis interval to:
  * **0 to 100**

{% hint style="danger" %}
This step is essential for correct proportional representation.
{% endhint %}

<figure><img src="../.gitbook/assets/image (79).png" alt=""><figcaption></figcaption></figure>

#### 3.4 Stacking and Normalizing the Series

To create a proper stacked bar chart:

**Steps**

* Navigate to the **Series** branch.
* Select diagram type **Stack series**.
* Activate the option **Recalculate to 100%**.

This ensures all components together form a complete particle size distribution.&#x20;

<figure><img src="../.gitbook/assets/image (87).png" alt=""><figcaption></figcaption></figure>

#### 3.5 Adjusting Series Order and Heading

**Series Order**

* Open the **Series definitions** branch.
* Use the **blue arrows** to change the order.
* The **lowest entry** in the list is displayed on the **left-hand side** of the bar chart.

<figure><img src="../.gitbook/assets/image (82).png" alt=""><figcaption></figcaption></figure>

**Diagram Heading**

* The diagram heading is defined by the **first series**.
* You can assign a **custom heading** that differs from the parameter name.

This allows better control over layout readability and labeling.&#x20;

<figure><img src="../.gitbook/assets/image (85).png" alt=""><figcaption></figcaption></figure>

### Result

The final result is a **depth‑oriented stacked bar chart** that clearly displays the **particle size distribution** for each sample across depth.

This visualization supports:

* Clear interpretation of soil composition
* Standardized reporting
* Depth‑related geotechnical analysis
*

    <figure><img src="../.gitbook/assets/image (86).png" alt=""><figcaption></figcaption></figure>
