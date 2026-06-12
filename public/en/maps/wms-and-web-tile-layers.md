
<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# WMS and Web Tile Layers

### Add WMS layer

Use this button to add a WMS layer (Web Map Service) to your map. GeoDin automatically saves the necessary document files to the folder *Documents/Linked documents*.

***Warning:*** *This function requires the new international document object types (DOC) with GeoDin 8.1.*

Please make sure that you have installed this object type and registered it in the database.

Should this not be the case, please [Install](../installation/express-installation.md) on the GeoDin system page **and** [Register document descriptions](../navigating-the-geodin-workspace/documents/document-organization.md) them into the appropriate database before using this function.

**Server URL:**

Enter the URL (\"Internet address\") of the server on which the service is provided. Please note that the URL must not contain any configuration parameters, i.e. no information on e.g. format or measurements of the layer. If the desired URL contains a question mark and subsequent parameters, delete both from the line.

Right: http://*www.address.com*/*geoservices xy*/wms

Wrong: http://*www.address.com*/*geoservices xy*/wms?Service=WMS&Version=xy

Select one of the displayed layers from the service offering.

**Format**

Enter the image format here.

**System:**

Select one of the coordinate systems provided by the WMS service by selecting the corresponding EPSG code.

Confirm with the button **Add layer**. <!-- src: help/MP/10585 -->

### Add WebTileLayer

Here you can add \"Web Tile\" layers or \"Web Map Tile Service\" layers (WMTS) .

Simply choose from the layers offered **Add layer**. <!-- src: help/MP/10586 -->

Here you can add "Web Tile" layers or "Web Map Tile Service" layers (WMTS) .

Shared reference content for this area lives in [Adding Layers](adding-layers.md).
