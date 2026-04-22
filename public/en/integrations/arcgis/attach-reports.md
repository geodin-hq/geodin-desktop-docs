---
description: How to attach GeoDin PDF reports to ArcGIS Pro feature class points using the geoprocessing Add Attachments tool
---

<!--
**Content status:** Polished from Loom how-to video, screenshots included
**Source quality:** A (step-by-step video walkthrough)
**Needs:** editorial review
**Video:** https://loom.com/share/8c9cb05e6c98430c83c33aa418361704
-->

# Attach GeoDin Reports to ArcGIS Features

This workflow shows how to attach GeoDin-generated PDF reports to the corresponding borehole points in ArcGIS Pro, so that each feature carries its geotechnical report as an attachment.

## Step 1: Prepare the feature class

Open ArcGIS Pro and identify the feature class containing the borehole points you want to attach reports to. <!-- src: loom/attach-geodin-report#step-1 -->

![Feature class with borehole points in ArcGIS Pro](images/attach-reports-01.jpeg)

## Step 2: Enable attachments

Navigate to the feature class settings and enable the **Attachments** feature for the dataset. This is required before any files can be attached to features. <!-- src: loom/attach-geodin-report#step-2 -->

![Enabling the attachments feature on the dataset](images/attach-reports-02.jpeg)

## Step 3: Review the attribute table

Open the attribute table and locate the borehole name field. This name must match the PDF report filenames exactly for the automated attachment process to work. <!-- src: loom/attach-geodin-report#step-3 -->

![Attribute table showing the borehole name field](images/attach-reports-03.jpeg)

## Step 4: Handle naming discrepancies

Compare the borehole names in the attribute table with the GeoDin report filenames. If there are discrepancies (e.g., slashes `/` in ArcGIS vs. dashes `-` in filenames), you'll need to create a matching key. <!-- src: loom/attach-geodin-report#step-4 -->

![Comparing borehole names against report filenames](images/attach-reports-04.jpeg)

## Step 5: Create an attach key field

Add a new field to the attribute table and use a field calculation to replace any problematic characters (e.g., replace slashes with dashes). This **attach key** field must contain values that exactly match the report PDF filenames (without the `.pdf` extension). <!-- src: loom/attach-geodin-report#step-5 -->

![New attach key field with slashes replaced by dashes](images/attach-reports-05.jpeg)

## Step 6: Verify the attach key

Confirm that the attach key values match the report filenames. Each row should correspond to one PDF report. <!-- src: loom/attach-geodin-report#step-6 -->

![Attach key values matching the report filenames](images/attach-reports-06.jpeg)

## Step 7: Create a match table

Use the **Geoprocessing > Add Table** tool to create a table that maps the attach key to the PDF file paths. Run the process to build the mapping. <!-- src: loom/attach-geodin-report#step-7 -->

![Geoprocessing Add Table tool configuration](images/attach-reports-07.jpeg)

## Step 8: Add attachments

Use the **Geoprocessing > Add Attachments** tool with the match table you just created. Configure the input table, match field (the attach key), and the folder containing the PDF reports. Click **Run** to execute the attachment process. <!-- src: loom/attach-geodin-report#step-8 -->

![Add Attachments tool with input table and match field](images/attach-reports-08.jpeg)

## Step 9: Verify results

Check the results to confirm that attachments have been added successfully. Click on individual borehole points to verify that their PDF reports are accessible as attachments. <!-- src: loom/attach-geodin-report#step-9 -->

![Feature with attached PDF report visible](images/attach-reports-09.jpeg)

---

**Next step:** [Publish the data with attachments to ArcGIS Online](publish-to-arcgis-online.md).

[Watch the full video walkthrough](https://loom.com/share/8c9cb05e6c98430c83c33aa418361704)
