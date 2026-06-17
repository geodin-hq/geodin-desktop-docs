# WMS and Web Tile Layers

Add web map services as base layers in the map view. GeoDin supports two kinds of web layer: **WMS** (Web Map Service) layers and **Web Tile** / **Web Map Tile Service (WMTS)** layers. When you add a WMS layer, GeoDin automatically saves the necessary document files to the folder *Documents/Linked documents*.

## Requirements

{% hint style="warning" %}
This function requires the new international document object types (DOC) with GeoDin 8.1.
{% endhint %}

Please make sure that you have installed this object type and registered it in the database.

Should this not be the case, please [Install](../installation/express-installation.md) on the GeoDin system page **and** [Register document descriptions](../navigating-the-geodin-workspace/documents/document-organization.md) them into the appropriate database before using this function.

***

## Reference: Add WMS layer

Use this button to add a WMS layer (Web Map Service) to your map. Select one of the displayed layers from the service offering, then confirm with the button **Add layer**.

* **Server URL** - Enter the URL (\"Internet address\") of the server on which the service is provided. Please note that the URL must not contain any configuration parameters, i.e. no information on e.g. format or measurements of the layer. If the desired URL contains a question mark and subsequent parameters, delete both from the line.
  * Right: http://*www.address.com*/*geoservices xy*/wms
  * Wrong: http://*www.address.com*/*geoservices xy*/wms?Service=WMS&Version=xy
* **Format** - Enter the image format here.
* **System** - Select one of the coordinate systems provided by the WMS service by selecting the corresponding EPSG code.

## Reference: Add WebTileLayer

Here you can add "Web Tile" layers or "Web Map Tile Service" layers (WMTS) .

Simply choose from the layers offered **Add layer**.

***

Shared reference content for this area lives in [Adding Layers](adding-layers.md).
