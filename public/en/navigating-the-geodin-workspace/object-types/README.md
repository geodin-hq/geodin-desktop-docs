# Object Types

GeoDin uses _object types_ to represent various standards for recording drilling data or general geodata.\
\
An object type can be regarded as a data entry schema for the GeoDin database. It includes:

* Predefined database tables
* A predefined set of input forms
* Dictionaries for standardized terminology
* Fill patterns and symbols for standardized representation

These components are tailored to meet relevant standards and configured for specific use cases.

#### Overview of available Object Types

<table><thead><tr><th width="149.111083984375">Object type</th><th>Multilingual</th><th>Layer data</th><th>EPSG</th><th>Samples</th><th>Well design</th><th>Data sequences</th><th>Meta data</th><th>Customisable</th><th>Fugro</th></tr></thead><tbody><tr><td><strong>Standard</strong></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>BS 5930</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td></td><td></td><td></td></tr><tr><td>EN ISO 22475</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td></td><td></td></tr><tr><td>KAS</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td></td><td></td><td></td></tr><tr><td>SEP 1</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td></td><td></td><td></td></tr><tr><td>SEP 3</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td></td><td></td><td></td></tr><tr><td><strong>Environment</strong></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Contaminated site investigation</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td>x</td><td></td><td></td><td></td></tr><tr><td>Climate measurement station</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>x</td></tr><tr><td><strong>Geotechnical</strong></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>UGS</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>GTS</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td>x</td><td></td><td></td><td></td></tr><tr><td>AGS</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td><strong>Water</strong></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Well</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td></td><td></td><td></td></tr><tr><td>Groundwater Well gallery</td><td>x</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td></td><td>x</td><td></td></tr><tr><td>Waterworks</td><td>x</td><td>x</td><td>x</td><td>x</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td><strong>Documents</strong></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Document</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>x</td></tr><tr><td>GeoDIN graphic</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>x</td></tr><tr><td>GeoDIN map</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>x</td></tr><tr><td>GeoDIN map layer</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>x</td></tr><tr><td>Photo</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>x</td></tr><tr><td>Report</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>x</td></tr><tr><td>Image with depth information</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>x</td></tr></tbody></table>

#### **Features**

In GeoDin, the acquisition of drilling data or general geodata is always linked to an **object type**.\
The object type determines:

* Which **input forms** and **dictionaries** are available
* The **fill patterns and symbols** used for visualization
* The **structure of associated tables** in your GeoDin databases

Each object type is configured for specific purposes and based on recognized standards such as **EN ISO 22475**, **ISO 14688/14689**, or **BS 5930:1999**.

#### **Handling Object Types**

<figure><img src="../../.gitbook/assets/image (41).png" alt=""><figcaption></figcaption></figure>

* GeoDin includes predefined object types by default.
* Additional object types can be installed via the **System** tab.
* Installed object types can be updated or removed in the application.
* Files for each object type are stored in the **Syslib** directory.
* Properties (version, dictionaries, input forms, symbols) are visible under **System**.
* Dictionaries can be customized or extended for most object types.

#### **Choosing an Object Type**

* Object types cannot usually be converted - Please note to choose carefully before data acquisition.
* Explore demo databases to check suitability.
* Discuss the choice with clients before starting.
* For corrections or change requests to existing object types, or to discuss a custom object type, please contact **GeoDin Client Success** at geodinclientsuccess@fugro.com
