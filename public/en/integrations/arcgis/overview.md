---
description: End-to-end workflows for integrating GeoDin geotechnical data with ArcGIS Pro and ArcGIS Online
---

<!--
**Content status:** Polished from Loom how-to videos
**Source quality:** A (step-by-step video walkthroughs with screenshots)
**Needs:** screenshots from Loom videos, editorial review
-->

# ArcGIS Integration

GeoDin integrates with ArcGIS Pro and ArcGIS Online through Excel-based data exchange. This section covers the complete workflow from planning borehole locations in ArcGIS, through data collection and report generation in GeoDin, to publishing results back to ArcGIS Online.

## Workflow overview

The integration follows a five-step sequence:

| Step | Direction | What happens |
|---|---|---|
| 1. [Plan and export to GeoDin](plan-and-export-to-geodin.md) | ArcGIS Pro → GeoDin | Create borehole locations in ArcGIS Pro, export as Excel, import into GeoDin |
| 2. [Export to ArcGIS Pro](export-to-arcgis-pro.md) | GeoDin → ArcGIS Pro | After field data collection, export enriched data back to ArcGIS as feature classes |
| 3. [Generate reports](generate-reports.md) | GeoDin | Generate borehole log and CPT reports, export as PDF |
| 4. [Attach reports to features](attach-reports.md) | ArcGIS Pro | Attach GeoDin PDF reports to the corresponding ArcGIS feature class points |
| 5. [Publish to ArcGIS Online](publish-to-arcgis-online.md) | ArcGIS Pro → ArcGIS Online | Publish feature layers with attached reports for web-based access |

## Prerequisites

- GeoDin with an active database and project
- ArcGIS Pro with a geodatabase (GDB)
- ArcGIS Online account (for step 5)

## Video tutorials

Each page in this section includes timestamped links to the corresponding Loom video walkthrough. These videos show the exact steps with real GeoDin and ArcGIS Pro screens.
