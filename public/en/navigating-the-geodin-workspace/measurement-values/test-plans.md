---
description: >-
  Configure test plans to split lab work into two roles - one user orders
  sample analyses, the other performs them and may edit only the ordered
  parameters.
---

# Test Plans

The **Configure test plan** method supports concurrent editing of a GeoDin database by two users: one orders analyses of samples, the other performs the analyses and enters the results. The second user can only edit the parameters defined by the first, so both the registration of a lab order and the completion of an analysis happen inside GeoDin.

{% hint style="warning" %}
This method is not normally available in GeoDin. It is added to the application through a special user-rights configuration - contact your GeoDin administrator.
{% endhint %}

## Requirements

* The method enabled through the user-rights configuration (see above).
* The data type entered in the sample management - a sample is always analysed within the frame of one data type.

## Creating a test plan

### Step 1: Select the data type and samples

When a data type is selected, the samples for which this data type was entered in the sample management are displayed with sample name and sample date. Samples can be processed individually or marked as a group.

### Step 2: Add samples (optional)

Any number of samples can be created with **Add samples**:

* **Data type** - fixed to the pre-selected data type; it cannot be changed here.
* **Use parameter of the selected sample** - applies the parameters defined for the selected sample to all newly created samples, so a frequently used parameter combination only has to be created once.
* **Sample collection** - fixed values for sample date and sample collection; the current date is the default.
* **Laboratory** - general data for the new samples: the date of receipt (default: current date), the number of samples to create (default: 10), and a macro for the sample names, where the variable `$SMPNUMBER$` is replaced by a consecutive number starting at the given start number.

### Step 3: Add the parameters to analyse

For the selected sample, the registered parameters are displayed. If no analysis plan was edited yet, the list is empty; registered-and-analysed parameters appear with their measured value, registered-but-not-analysed parameters with the value 0. Parameters not analysed so far (value 0) can be selected and removed.

**Add Parameter** lists the available parameters for the data type:

* **All parameters** - every available parameter in alphabetical order.
* A dropdown of the data type's **parameter groups** limits the list to one group.
* An input field filters the list to parameters containing the search string.
* Alternatively, **measurement programs** for the data type can be used as a selection.

For the added parameters a due date is entered; the default is the current date + 3 days.

### Step 4: Apply

When the configuration is complete, **Apply** adds the data sets to the database. The lab user can then enter results for exactly these parameters.

{% hint style="danger" %}
Changing the data type discards the current settings - a security warning is shown first.
{% endhint %}

<!-- src: help/H0000006938#configure-test-plan -->

***

For entering the analysis results, see [Working with Measurement Data](working-with-measurement-data.md).
