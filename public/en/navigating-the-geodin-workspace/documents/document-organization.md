---
description: Document Organization
---

# Document Organization

### Documents

GeoDin document management is an integral part of GeoDin. Any type of document can be integrated within a GeoDin database (Photos, Microsoft Word texts, Microsoft Excel tables, Videos and of course GeoDin graphics).

Documents may be:

1. any files
2. links to websites
3. empty documents

\
The document data can (optionally compressed) either be stored in the database itself (BLOB) or as a link to the documents and viewed within GeoDin (additional software may be required e.g. Microsoft Office) and edited, saved or printed from GeoDin.

Documents are saved:

1. in the database (either in the original format or Zip-compressed)
2. as a link to a file or web page

\
It is also possible to display the documents in GeoDin graphics. Using the graphic element, images may be directly scaled whereas other documents are shown as a symbol and can be viewed in a separate window. The integration and display of documents within a GeoDin graphic is done using **Data source**. This allows templates containing such elements to automatically show the database contents.

The following file formats are displayed directly in GeoDin graphics:

**Bitmaps:** JPEG, BMP, PNG, TIFF, ICO, PCX

**Vector images:** WMF, EMF

**GeoDin formats:** GGF, GLO

Other file formats (e.g. DOC, MPEG, PDF etc.) rely on the appropriate Windows software applications and use Microsoft Internet Explorer for the display.

Documents can be linked to a GeoDin-object i.e. they have a defined relationship to an object in the GeoDin database e.g. borehole or measurement point. However, documents can also be stored in the database without reference to a specific object and then have a reference to a GeoDin node, i.e. to a project or to the GeoDin database itself.

\
The following relationships of documents may be defined:

1. database
2. project
3. object
4. measurement point

Documents that are linked to projects, objects or measuring points and are saved in the GeoDin database only exist in the database as long as the object itself still exists. If, for example, an object with associated documents is deleted, these documents are also deleted from the database. In these cases, a separate confirmation prompt is issued. If only the reference to a file is stored in the GeoDin database for a document, the file is not deleted when the GeoDin object is deleted.

Documents are not only stored in the GeoDin database with their name and, if applicable, the document data, but are also provided with a supplementary description that optionally explains the content or other properties of the document in more detail. GeoDin provides various document description types (with different characteristics) so that, for example, different characteristics can be entered for images than for reports that are available in text form.

### Requirements

The use of document management within GeoDin requires the following

**1. Database**

The document management is available in Microsoft Access databases and in all "real" SQL-databases (ORACLE, Microsoft SQL-Server etc.). In file-based projects (on drives) and in dBase databases the document management cannot be used.

\
**2. Database structure**

The document management is only available in so-called OneTableSet databases (this is the standard database setting in GeoDin). Hence if you have not made specialized changes to the GeoDin configuration file, this requirement is always met. If the OneTableSet parameter string for the database is set to zero (= 0) the document management cannot be used.

\
**3. Document description**

To add documents to a GeoDin database the appropriate document descriptions must be installed. If they are not already available you may install these from the GeoDin-DVD via the system tab using the Method [Install](../../installation/express-installation.md). If the international document description types, where the data entry language can be chosen between English, French, German, Russian or Spanish, choose the types with the (DOC) abbreviation.

\
4\. Document management configuration inGeoDin

The use of document management in GeoDin can be configured for entire systems or for special databases. For example, it is possible to define in detail which types of documents can be included in the document management system and how they must be saved..

The configuration is either done directly in the GeoDin.ini or in special configuration files for specific databases. A detailed description can be found in the chapter [Configuration of the document management](document-organization.md).

### Document management

Documents that have been linked to a database, a project, an object or a measurement point are shown in the GeoDin object manager (GOM). Object and measurement points with linked documents are shown with a special symbol. The documents branch can be fully expanded on the object. If databases or projects contain documents, the corresponding branch is automatically displayed.

The following methods are available for documents:

**Manage documents**

This method starts the document management for the selected object.

**Preview**

Opens a preview window for the chosen object. Images and GeoDin graphics are shown in a preview window, which may remain open and is automatically updated when another object is selected.

**Edit graphic**

If the document is a GeoDin-Graphic or -layout, the method **"Edit graphic"** becomes available.

The **"Manage documents"** method is the central entry point for document management in GeoDin. The method is available for the following objects (unless restricted by special configurations):

1. Database
2. Project
3. Object
4. Measurement point

In addition this method is available at every document or folder (as long as the extended view is activated in the GeoDin object manager).

Selecting the desired object in the GeoDin object manager and starting the **"Manage documents"** method also defines the assignment of the new documents to be inserted to a GeoDin object. For example, if you want to add core photos to a borehole, it makes sense to link them to the corresponding borehole. Therefore, select the corresponding borehole in the GeoDin object manager and then start the method. A project report, on the other hand, is not related to an individual borehole, but is better linked to the project itself. Therefore, first select the desired project entry in the GeoDin object manager and then start the method. Assignments of documents to GeoDin objects can also be changed later, so it is not necessary to delete the document and add it again (to the correct object).

Each document that is to be included in the GeoDin database must be provided with a document description. This contains additional information about the document, e.g. author, direction of the photo, notes on the expertise, i.e. information that goes beyond the name and date of the document. Depending on the current configuration of the GeoDin system, different types of document descriptions may be possible. For example, for core photos it is useful to specify the top and bottom edges of the photo, whereas for reports this information is irrelevant.

Document description types are installed like [Install](../../installation/express-installation.md). You may need to contact your GeoDin support agent for more help.

Document description types should not be confused with document types, which refer to the file type as used by Windows Explorer (e.g. \*.doc: Microsoft Word text; \*.jpg: photo; \*.pdf: document etc.). There are many more different file types than document description types so that several document types may share the same description type.

When the **"Manage documents"** method is called up for the first time in a database, you are asked to register the document description types you want to use. This allows you to specify which types of document descriptions you want to use for the specific database. You can add to this selection at any time.

The **"Manage documents"** method displays the name of the current GeoDin object in the title bar. This object is also the main branch of the document folder structure. The first folder 'Documents' is always present and cannot be deleted. However, it is possible to rename this folder. Documents that are inserted in this folder or in folders below it are linked to the current GeoDin object.

The documents of an object can be stored in any folder structure. This is comparable to a folder structure on a hard drive. Any folder can be created, deleted (except the top folder) and (re)named. The folder structure can be manipulated and documents moved to other folders using drag & drop. To do this, click on the desired entry and drag the mouse pointer to the desired location while holding down the left mouse button. Now release the left mouse button to drop the entry at this location.

### Creating and organizing folders

New folders can be added beneath existing ones by selecting an existing folder and clicking the  **New folder** button:

Borehole 01

Documents

New folder

Enter a name and press the **Return** key.

Borehole 01

Documents

Core fotos

To rename a folder left click the name and wait a moment for the selection box before typing. Alternatively use the **F2** key.

**Folder Structure**

You may structure several folders by creating them in the chosen place or afterwards by dragging and dropping them into position. Assumed you have already created the following folders and now you want to distribute the documents into the correspondence with the client and the report. Here is the initial structure:

Borehole 01

Documents

Core fotos

GeoDin grafics

Tender & contact

Invoices & time sheets

First create the folder "Correspondence with client" below the folder Documents.

Borehole 01

Documents

Core fotos

GeoDin grafics

Tender & contact

Invoices & time sheets

Correspondence with clients

Then the "Tender & contract" folder is dragged onto the folder "Correspondence with client" using the left mouse button. After releasing the left mouse button the "Tender & contract" folder is added below the folder "Correspondence with client":

Borehole 01

Documents

Core fotos

GeoDin grafics

Invoices & time sheets

Correspondence with clients

Tender & contact

After adding the folder "Report" and moving the particular folders with the described method, the structure could look like this:

Borehole 01

Documents

Correspondence with clients

Invoices & time sheets

Tender & contract

Report

Core fotos

GeoDin grafics

The order of folders within a branch can also be changed by drag & drop. To move the folder "Core photos" to the second drag the entry "GeoDin grafics" below the folder "Report".

Borehole 01

Documents

Correspondence with clients

Invoices & time sheets

Tender & contract

Report

GeoDin grafics

Core fotos

_**Note:**_ _If you move a folder to another folder that is not the immediate parent folder, you are not changing the order, but the structure of the folders, because in this case the moved folder becomes a subfolder of the target folder._

Upon selecting an object information relevant to the folder or document is shown on the _**Folder / Document**_ tab:

***

Name Typ Größe (KB) Datum More pictures Folder Picture 1 Portable Networks Graphics 78 11.07.2009 13:58 Picture 2 Portable Networks Graphics 79 11.07.2009 14:02 Picture 3 Portable Networks Graphics 83 11.07.2009 14:05

***

By clicking a column the contents can be sorted in either ascending or descending order. A subsequent click reverses the order.

By using drag and drop documents and folders can be moved from the folder overview on the right, into the general overview on the left.

### Add document

To import more than one document to several objects use the method [Import documents](managing-documents.md).

**Step 1**

Choose what type of document you want to add; the following options are available:

**File**

With this option you may add a file that is saved on your hard / network drive or other mounted media.

**Current graphic**

Use this option to add the graphic that is currently displayed in the **"Print and edit graphics"** method as a document. If this method is not currently open, this option is not available.

**Address**

This option adds an Internet address (URL) as a document.

[Without document](document-organization.md)

This option can be used to save a placeholder for a document yet to be added to the database , but where a (provisional) description can already be entered.

\#GeoDinHelpLink: [Create document](managing-documents.md)5922#

With this option you create a new object directly in the GeoDin database.

After adding the document click **Next** to move to Step 2

**Step 2**

In the list above the type of document description can be chosen. This determines what kind of additional information can be stored about the document. All the registered document types for the database are shown.

After choosing a type you continue with

**Step 3**

Here document details may be entered (in some cases there are required entries). The contents of the document description may be edited at a later stage. The document type however cannot be changed once Step 3 has been completed by pressing the **Ready** button. Hence if changes to the description type are made, all entries in step 3 will be lost. On pressing the **Ready** button the document description is saved in the document structure and is automatically the current document.

Renaming a document in the folder structure can be done with the **F2** key or with a click on the entry itself (as in renaming a folder). Similarly moving a document can be done by using drag & drop .

### Deleting documents and folders

To delete documents or folders, select an object and choose **Delete**.

If the object selected is a document the following message appears:

_"Do you really want to delete the document 'Drilling Rig 01' ?"_

If the selected object is a folder, then not only the folder but also all documents contained within will be deleted. In this case the following message appears:

"Do you really want to delete the folder 'Core photos' ?

The folder contains 3 document(s) !

These documents will be lost if you delete this folder.

There is no undo of this command !

Proceed ?"

When you delete a document the contents are removed from the GeoDin database. This means that if you do not have a copy of a selected document saved in another object the contents are no longer recoverable after deletion.

If the document is an alias (i.e. a link to a file stored elsewhere) then after document deletion the file is on the drive and you have to delete it "per hand", if you want to remove it.

### Display of document information

Upon selecting an object information relevant to the folder or document is shown on the _**Folder**\\_ _Document_\*\* tab and the following functions are available:

\
**Function "Show document"**

Use the function **Show document** for documents, whose contents cannot be displayed directly on the **Preview** tab (e.g. Microsoft Word files).

You do not need this function for image files and GeoDin graphics, which are shown automatically,

This function uses Microsoft Internet Explorer to display documents. In case this is not installed or the file type is not supported, no preview will appear. In all other cases the document is shown in a separate window:

\
**Function "Start linked programs"**

This function displays the document with the program that your Windows installation uses to open files of this type. This is analogous to double-clicking a file in Windows Explorer. If the file is a Microsoft Word document, then a text editing window is opened.

If the document is stored in the GeoDin database and you edit the document in the linked program, you will be asked before saving to confirm that these changes are stored also in GeoDin-database.\
\
&#xNAN;_**Attention:**_ _If you choose the option "No" then all edits are lost!_

**Function "Edit graphic"**

If the document is a GeoDin graphic, a GeoDin layout or a GeoDin layout list, then instead of the function **"Start linked program"** the function "**Edit graphic"** opens for editing.

This function opens the document in the **Edit Graphic** window, allowing you to edit the graphic as usual.

_**Note:**_ _The document management window is automatically closed and the graphic window becomes the current window._

The graphic is marked with a special icon on the tab because it is stored in the database and does not exist as a file. Any changes you make to the graphic will be automatically transferred to the database when using the save function, so you don't need to worry about the specific type of storage.

**Function "Save document under"**

This function allows you to save the current document as a file under a new name. This is particularly useful for documents that are stored within the GeoDin database and do not exist as individual files. Using this method these documents can be stored as files.

**Function "Replace document data"**

This function allows you to replace the document in an existing document entry. The current document description will be retained, but it can also be modified if necessary. You can use this function if, for example, you accidentally added the wrong image and now want to replace it with the correct one.

Use this function as well to attach a "real" document to an entry that was previously inserted as an "empty document."

By clicking the button, you access the **"Replace Document Data"** function, which has the same structure and operation as the [Add document](managing-documents.md) function.

### Document preview

The **Preview** tab provides a direct preview for a variety of document types. These include, in particular, image documents (raster and vector formats) as well as GeoDin graphics and layouts.

When the -Refresh Preview- option is enabled, the document data is automatically loaded as soon as the corresponding entry in the folder overview is selected. You can prevent this automatic loading of document data (which may take some time depending on the size of the document and the speed of the database connection) by disabling this option. In this case, a preview of the document will not be displayed.

If a direct display of the document in the preview is not possible, a corresponding message will appear, and the document can be viewed using the [Display of document information](document-organization.md).

### Document description

The **Document description** tab can be used to provide extra information about the file just added. This can be subsequently edited.

After correcting or adding to the entries, they can be saved with the **Apply** button. If you leave the document entry (e.g., in the left document structure) without having saved the changes with the **Apply** button, a prompt will appear asking if you would like to save the changes now.

### Show enclosed objects

After launching the document management for a selected object in the GeoDin Object Manager, this object automatically becomes the main entry in the right overview of folders and documents. Only the documents directly linked to this object are displayed below. To get an overview of all documents, for example, of a project, it is not necessary to select each individual object in the Object Manager and then start the document management. With the option - Display Subordinate Objects -, all objects with documents can be displayed in one step.

Suppose the document management is started on a project entry ("Section 1") in the GeoDin Object Manager, and no documents are assigned to the project itself. By checking the option - Display Subordinate Objects -, you will access the displayed dialog.

In the upper part of the dialog, you define up to which branching depth objects should be examined. In the example where the project is the main object, the - Objects - option is automatically preset, as objects are the next branching depth (a project contains objects). However, you can specify whether the measurement points belonging to an object should also be examined.

Below is an explanation of the GeoDin object hierarchy:

GeoDin database (contains projects)

GeoDin project (contains objects)

GeoDin objects (contains measurement points)

GeoDin measurement points (no further subdivision)

If the document management is started at the GeoDin database level, all projects, objects, measurement points can be searched and the documents be displayed in one operation.

In the lower half of the dialog, you specify which objects should be included in the display. If you only want to include objects that have documents assigned to them, select this option. The option -All Subordinate Objects- includes all GeoDin objects in the display. Use this option if you want to move an already linked document to another GeoDin object that does not yet have any documents. Please note that this option may include many objects in the display, which can take a while depending on the number of subordinate objects.

For all operations described below, use the document management in GeoDin.

For the example of the project "Section 1", displaying the subordinate objects results in the following representation:

Project 1

Documents

Borehole 1

Documents

Correspondence with client

Tender and contract

www.client.com

Tender

Report

GeoDin graphics

Core photos

Since only "Drilling 01" currently has documents assigned to it, only this will be displayed in the overview if the option -Only Objects with Assigned Document Data- was selected.

When selecting the option -All Subordinate Objects-, the following representation appears:

Project 1

Documents

Borehole 1

Documents

MP1

MP2

MP3

MP4

Borehole 2

Documents

P

Borehole 3

Borehole 4

Borehole 5

In addition to "Drilling 01" (which contains documents), all other drillings of the project are also included in the display. Furthermore, all measurement points of the drillings are shown, as the -Measurement Points- option was enabled. If you turn this option off, the measurement points will be hidden:

Project 1

Documents

Borehole 1

Documents

Correspondence with client

Tender and contract

www.client.com

Tender

Report

GeoDin graphics

Core photos

524\_550

550\_577

577\_603

Section 2

Borehole 2

Documents

Borehole 3

In addition to displaying the document hierarchy, you may also move documents or folders containing documents from one object to another.

For example the photo "524\_550" belongs to Borehole 2, but has been linked to Borehole 1 by mistake. First create the folder for Borehole 2:

Project 1

Documents

Borehole 1

Documents

Correspondence with client

Tender and contract

www.client.com

Tender

Report

GeoDin graphics

Core photos

524\_550

550\_577

577\_603

Section 2

Borehole 2

Documents

Report

Core photos

Borehole 3

Borehole 4

Then simply drag & drop the document from the original folder to the one just created:

A warning message appears because the link will be changed by this action:

_"Do you really want to change the link to the chosen document from object: "Borehole 1"_

_to object: "Borehole 2" ?"_

After clicking **Yes** the document is moved:

Project 1

Documents

Borehole 1

Documents

Correspondence with client

Tender and contract

www.client.com

Tender

Report

GeoDin graphics

Core photos

550\_577

577\_603

Section 2

Borehole 2

Documents

Report

Core photos

524\_550

Borehole 3

Borehole 4

Adding documents may also be carried out, without selecting each object individually.

### Register document descriptions

**"Register Document Descriptions"** can be done at any branch of the database, as this registration applies to the entire database.

**Available Document Descriptions:**

This list displays the document descriptions available in your GeoDin installation.

Select the desired entry here and then click the **Register** button. The entry will now also appear in the lower list, and you can use this type of document description in the current database.

If you do not find the entry you need in the list of available document descriptions, you can add additional document description types (= object types) to your GeoDin installation. Use the [Install](../../installation/express-installation.md). This allows you to add additional types from the GeoDin DVD or the GeoDin homepage.

**Registered Document Descriptions:**

This list shows the document descriptions that are already registered in the current database.

If all the document descriptions you need in the current database are displayed in the lower list of registered document descriptions, exit this dialog with **\<Exit>.**

### Using aliases

If you add documents to your database as references because you do not want the document data to be stored in the GeoDin database, or the documents (e.g., videos) are too large to be stored in the database, the reference initially contains a full path to the actual document.

In step 1 of the **File** function, you can see the reference that will be stored in the database (for example, C:\Photos\Cores\550\_577.jpg).

If you want to share the GeoDin database with another user, you must also provide the photo files; otherwise, the other user will not be able to view the photos. However, this user would need to recreate the same directory structure on their hard drive for the files to be found. This may not be possible, for instance, if you are referring to photos on network drives. Furthermore, you might want to change the structure of your directories, or you may have so many photos that you want to move them to another storage medium.

In all these cases, using alias references is the appropriate solution. With these references, you replace specific path names with freely invented identifiers and can change the path names later.

You can access the editing of references with the **Edit link** button.

The buttons on the right allow you to add or remove references. For the first entry, you do not need to use the **Add** button; you can write directly in the input grid.

**Example:**

For instance a folder C:\Photos\Cores\ should be replaced by the words "Drilling".

**Name folder name to replace**

Drilling C:\Photos\Cores\\

After editing and confirming with **OK** you can observe the changes resulting of the alias link in Step 1 of the function **File**.

Saved link: $Drilling$Core 01.jpg

In the GeoDin database the link to the photo is saved as $Drilling$Core 01.jpg and has no device or folder information.

If the folder "Photos" is moved to drive D: into a subfolder "Projects", it is sufficient to change the alias information in the GeoDin database to access the file 'Core 01.jpg' again:

**Name folder name to replace**

Drilling D:\Projects\Photos\Cores\\

Although the saved link remains the same ($Drilling$Core 01.jpg) the image is now searched for in the folder _**D:**\\**Projects**\\**Photos**\\**Cores**\\_

Aliases are valid for the entire database and not object specific. Once defined they apply to various objects added to this folder. GeoDin automatically recognizes, whether documents added to a database belong to a folder with an alias link and replaces the particular connection string automatically. Just notice the display "Saved link" in Step 1 of the function <**Add / Replace document data**>.

### GeoDin graphics as documents

GeoDin graphics can be added to a GeoDin database just like any other document, either as a **File** or as the **Current graphic**.

GeoDin graphics files can however contain links to objects (e.g. boreholes). Because of this there are certain points to bear in mind, when copying projects or objects with linked documents. The following notes only apply to documents of the type GeoDin graphic, which contain links to boreholes. This is the case, the option -Link borehole data- for **Data source** is chosen. The object frame contains a link to the borehole displayed, with the database name, project ID and object ID, which becomes part of the document data when the current graphic is added using the document management method.

When a borehole is copied to another project and/or database a related graphic is also copied, if the option to copy documents was not deactivated.

The link in the graphic would address furthermore a borehole 01 in the source project. GeoDin automatically adjusts these parts of the link information enabling the document to be shown correctly in its new object.

As a result of this automatic correction, when you access this graphic in the target project, the data from Drilling 01 of the target project (i.e., the copy) is correctly loaded and displayed.

The automatic exchange of references within a GeoDin graphic is performed under the following conditions:

1. The GeoDin graphic is a document stored in the database. GeoDin graphics that are merely referenced in the document management are not changed. In this case, both objects (original and copy) share the reference to the GeoDin graphic file. Therefore, avoid references to GeoDin graphics with links to drillings and store them in the database instead.
2. The reference in the GeoDin graphic must match the object being copied. If a graphic contains a reference to an object other than the one being copied, the reference will not be changed or only partially changed. This would be the case, for example, if Drilling 01 contains a graphic that displays Drilling 02. When copying Drilling 01 to another project, the project ID of the reference will be corrected, but since it is unknown whether Drilling 02 will also be copied to the other project, the object ID of this reference cannot be corrected. In practice, this means that the graphic in the copy will either display no drilling or, in the worst case, a different drilling. Therefore, if a GeoDin graphic contains a reference to an object, always add this graphic to the document management of that object and avoid adding it to other objects.

Which of the two methods, linking or embedding drilling data in a graphic, is used depends greatly on the goal of the work. A link is always useful if changes in the drilling data should automatically lead to an updated graphic. Embedded data does not offer this advantage; the graphic is thus a "snapshot" at the time of creation. However, the project and the drilling itself are no longer necessary for displaying the graphic.

The following approach is generally recommended:

1. If the graphic contains the representation of an object (e.g., drilling), a link is appropriate. Always add such a GeoDin graphic to the document management of the represented drilling (and not other objects) and store it in the GeoDin database instead of as a file reference.
2. If the graphic contains the representation of multiple objects (e.g., profile section), embedding the drilling data is more suitable. It is better to add such a GeoDin graphic to the document management of the project rather than a single drilling and store it in the GeoDin database.

### Configuration of the document management

The configurations for document management are done either in the GeoDin configuration file GeoDin.ini or in the configuration file of the desired database connection.

If a standalone configuration file is used for a specific database connection, all sections relevant to or desired for the configuration of the document management must be created in this configuration file.

Sections of GeoDin.ini that pertain to document management will be ignored for this database connection, and the default settings listed below will be used. This makes the configuration parameters more manageable, as they are not mixed from multiple configuration files.

The following items and settings are available:

**Section \[Documents] optionalParameter Enabled**

Status optional

Standard true

**Explanation**

To disable document management set this parameter to =false.

**Parameter MaxDBDocSize**

Status optional

Standard 2048

**Explanation**

Maximum size of documents in KB that can be saved directly in the database. If ZIP-compression is used a comparison is made between the compressed and the original size.

**Example:**

To store 8 MB documents in the database, please add the following line in the \[Documents] section of the GeoDin.INI file:

MaxDBDocSize=8192

**Parameter SmallCompression**

Status optional

Standard 5

**Explanation**

Since compression is not beneficial for all file types (such as formats that already contain compressed data), the percentage reduction of the data is determined after compression is performed. If this reduction is smaller than the specified percentage, a prompt will ask whether the data should actually be stored compressed in the database or in uncompressed form. Since compression requires computation time, uncompressed storage may be more efficient. This is even more applicable to ZIP files, as recompressing them can actually increase the data size.

**Parameter RegisterDocDesc**

Status optional

Standard true

**Explanation**

To disable document type registration set this parameter to =false.

**Parameter EditAliasNames**

Status optional

Standard true

**Explanation**

To disable renaming aliases set this parameter to =false.

**Parameter EditDocument**

Status optional

Standard true

**Explanation**

To disable editing documents via OLE (linked program) or in GeoDin Graph set this parameter to =false.

**Parameter FolderStructureReadOnly**

Status optional

Standard false

**Explanation**

Set this parameter to =true, to prevent changes to folder structure under the document node. This also means that new documents can be added, moved or deleted. Editing exosting documents and their descriptions is possible though.

**Parameter AutoFolderStructure**

Status optional

Standard true

**Explanation**

By missing or defective entries **STRUCDEF** in the table ADC\_STRUC GeoDin tries to create the the necessary file system folders based on the linked documents. This can be prevented by setting this parameter to =false .

**Parameter RootFolderName**

Status optional

Standard empty

**Explanation**

The standard GeoDin setting titles the first folder of a document node depending upon the user interface language (e.g. German "Dokumente", English "Documents"). By using this option a standard name can be defined independently of the chosen language.

**Section \[DocumentLinks] optional**

This section allows the relationships of documents to GeoDin objects to be optimized.

**Parameter Link1 to Linkn**

Status optional

Standard not defined

**Explanation**

List of objects to which documents can be linked:

\
Database\
Project\
Location\
Measurement point\
\
If this section is missing then document management is allowed for all 4 objects. A limitation has the following syntax:

\
\[DocumentLinks]

Link1=Location\
\
In this example documents can only be linked to location points.

**Section \[DocumentTypes] optional**

This section allows the optimal limitation of document types and/or special file type configuration.

**Parameter DocumentType1bis DocumentTypen**

Status optional

Standard Section not defined

**Explanation**

List of files types that may be used - if this section is missing then all file types are available, links to websites and empty documents.

Example:

\[DocumentTypes]\
DocumentType1=JPG\
DocumentType2=PNG\
DocumentType3=DOC

Only the document types listed above may be used.

The following key words define documents that do not exist locally as files:

URL - Placeholder for links to websites

NULL - Placeholder for empty documents

\* - Placeholder for all unlisted file types.

Example:

\[DocumentTypes]

DocumentType1=JPG

DocumentType2=PNG

DocumentType3=DOC

DocumentType4=\*

allows the availability of all document types AND a special configuration of the file types JPG, PNG, DOC und \* (all other file types that are not JPG, PNG or DOC) in separate sections.

**Section \[xxxx] optional**

_xxxx stands for a file or document type, defined in section \[DocumentTypes]._

Example: \[DOC]

This section is for the optimal restriction of document types that can be used and/or special configuration of data types.

**Parameter Compression**

Status optional

Standard empty

**Explanation**

Compression= (empty or not specified)

User chooses whether files are to be compressed before saving in the database.

Compression=true

Files of this type are always saved compressed to the database.

Compression=false

Files of this type are always saved without compression to the database.

**Parameter MaxDBDocSize**

Status optional

Standard Setting in Section\[Documents]

**Explanation**

Sets the maximum size of documents in KB of this type that can be saved directly in the database. Overrides the setting in Section \[Documents]

**Parameter Description**

Status optional

Standard \*

**Explanation**

List of available document type descriptions for the document type. For example this option can be used to prevent Word documents being given an images description type.

\
Example:

Note: the possible items that appear after Description= depend upon the installed document types. These are shown in square brackets for each document type in the document type registration window.

Description=ED\_PHOTO,ED\_GEN

Only document descriptions with the codes listed above can be used for this document type.

Description=\*

All installed descriptions (i.e. document types) may be used.

**Parameter StoreInDB**

Status optional

Standard true

**Explanation**

By setting this parameter to =false the saving of specific document types may be prevented.

**Parameter LinkToFile**

Status optional

Standard true

**Explanation**

By setting this parameter to =false the saving of a document type as link may be prevented i.e. the document can only be saved in the database.

By setting the options StoreDB=true and StoreLink=true the user may choose between both options.

**Parameter EditDocument**

Status optional

Standard If a setting in the \[Documents] Section is present, then this is the standard value; otherwise Standard=true

**Explanation**

Setting this parameter to =false prevents editing documents via OLE (linked program) or in the graphic editor.

**Section on folder structure for document management**

This option allows a predefined folder structure to automatically be generated when documents are added to a specified geo-object. Folder creation, deletion or renaming is then blocked in the document management.

A separate section covers each object type:

\[DataBase\_DocumentTree]

\[Project\_DocumentTree]

\[Location\_DocumentTree]

\[Measurementpoint\_DocumentTree]

If for example documents are only to be added at locations the following section:

\[DocumentLinks]

Link1=Location

requires only the section \[Location\_DocumentTree], to predefine the folder structure.

Section example:

\[Location\_DocumentTree]

Node1=0=Documents

Node2=1=Correspondence with client

Node3=2=Tender & contract

Node4=2=Invoices & time sheets

Node5=1=Report

Node6=5=Core photos

Node7=5=GeoDin graphics

Borehole 10

Documents

Correspondence with client

Tender & contract

Invoices & time sheets

Report

Core photos

GeoDin graphics

The entries for folders are defined with Node1 to NodeN. The counter must be continuous and start with 1. It also serves to identify an entry. After the equal sign, the identifier of the parent folder is specified. This identifier must refer to a valid node number, with the only exception being Node1=0 as the main folder, which does not have a parent folder. After the second equal sign, you can specify the folder name.

Optionally, a physical location can be specified for the folders. To do this, add another equal = - sign, followed by a full path to a physical location. Example:

Node3=2=Core Photos=C:\GeoDin\Core Photos

If a physical location is specified, only a file from the specified location can be added to the document management via a link.

### Database tables of the document management

Documents, their structure and links of a database are stored in the following tables:

ADC\_ADCDATA : documents and document data

ADC\_ADCLINK : document links to objects

ADC\_ADCSTRUC : folder structure and object documents

ADC\_ADCALIAS : Aliases

ADC\_xxxxxxxx : Document descriptions

**Table ADC\_ADCDATAADC\_ID**

Identification number of the document

**ADC\_TYPE**

File type of the document

**ADC\_DESC**

Variable of the document description type; the document descriptions are stored in the table ADC\_xxxxxxxx, hence xxxxxxxx has to be replaced by the variable entered here.

**ADC\_OPT**

LONGINT- direction parameter; Bit 0 = document data are stored compressed in the database Bit 1 = document is writing protected Bit 2 = editing per OLE locked

**ADC\_NAME**

Name of the document

**ADC\_FILE**

File name or address of the document; empty, if the document is stored in the database

**ADC\_TIME**

Last change (Time) of the document; only for documents, which are stored in the database, empty for links

**ADC\_SIZE**

Size (in Byte) of the document data; only for documents, which are stored in the database, empty for links

**ADC\_DATA**

Document data as long binary data (Original copy of the file, eventually compressed)

**Table ADC\_ADCLINKADC\_ID**

Document ID number

**PRJ\_ID**

Document link to: database = fixed entry "DBDEF" project = Project ID object = Project ID measurement point = Project ID

Link of the document to: Database = fix entry "DBDEF" Project = Project identification Object = Project identification Measurement point = Project identification

**INVID**

Link of the document to: Database = fix entry "DATABASE" Project = fix entry "PROJECT" Object = INVID of the object Measurement point = INVID of the measurement point

The tables ADCDATA and ADC\_LINK are linked by ADC\_ID. Although the table structure allows it the GeoDin document management permits that a document is linked to several objects.

**Table ADC\_ADCSTRUCPRJ\_ID**

Link of the document to: Database = fix entry "DBDEF" Project = Project identification Object = Project identification Measurement point = Project identification

**INVID**

Link of the document to: Database = fix entry "DATABASE" Project = fix entry "PROJECT" Object = INVID of the Object Measurement point = INVID of the measurement point

**STRUCDEF**

Long binary data of the tree structure

_**Note:**_ _For each dataset in the table ADC\_ADCLINK there is a dataset with identical PRJ\_ID and INVID in the table ADC\_ADCSTRUC._

**Table ADC\_ADCALIASALIAS\_ID**

Alias ID

**ALIAS\_NAME**

Alias name

**ALIAS\_TEXT**

Folder name to replace

**Table ADC\_xxxxxxxx**

xxxxxxx stands for the variable ADC\_DESC from the table ADCDATA

**ADC\_ID**

Document ID number

**Field1**

Description data field 1

....

**Fieldn**

Description data field n

The tables ADCDATA and ADC\_xxxxxxxx are linked via ADC\_ID.

The definition of the document descriptions table can be studied in the SYS\_LOCSTRS table (because the document description is registered like a object type in the SYS-tables).

### File

First choose the file to be stored via the folder icon **File open**. In the _"Name:"_ field you may either leave the default setting (file name) or enter any other name. This is initially predefined with the name of the file and can also be changed again at a later date.

_**Note:**_ _You can add several files in one step. Therefore mark in the dialogue_ _**Open**_ _the chosen files. Use the key_ _**Ctrl**_ _to select several single files or the_ _**Caps lock**_ _to select entire groups of files. Only select files of the same type (for example several photos of the type .jpg or several Word documents of the type .doc). The document description that you can adjust later on (and the entered content) is used for all added files and can afterwards be changed for single documents. Also the type of storage (in the database type of compression or storage as a link) is performed for equally for all selected files. By choosing several files of a different type an error message is displayed._

In the central part of the dialogue window you may set how the document is to be stored in the database. There are two options:

Storing documents in aGeoDindatabase

By choosing this option the document is copied and stored in a GeoDin database. For instance in a Microsoft Access database the contents of a JPEG are stored in the particular \*.mdb file. In case of an ORACLE database the image would be copied to the database server.

Further use of the document within GeoDin (e.g. preview) uses the copy stored in the database and does not therefore affect the original file. If the database is given to a third party, the documents from the database are useable, without having the original file.

Linking to document data in aGeoDindatabase

By choosing this option a link to the document location is stored in the database and not the data itself. For using the document further within GeoDin opening the file from this location is necessary (e.g. C:\eDemo\Drilling Photos\Drilling rig 01). If the file is deleted, moved or renamed then an appropriate error message is generated in GeoDin and the document cannot be displayed. Similarly if the GeoDin database is given to a third party, the document is only useable, if the original file is also present and in the same location (folder structure).

How you can uses aliases to flexibly store links (without having the folder structure on your hard drive), is described in chapter [Using aliases](document-organization.md).

**Data compression**

The two variations have strongly differing storage requirements in the GeoDin database. An alias takes up only a few bytes whereas saving a document in the database itself takes up as much space as the original file. This variant therefore offers the option of storing the document data in compressed form in the GeoDin database. To do this, choose the option -Save document compressed in the database-.

The compression option allows major space saving possibilities for texts, tables and graphics in the GeoDin database. Other document types (e.g. JPG-Images, Videosequences) already exist in a compressed format so that a further compression may even result the file size being increased. GeoDin provides an efficiency guide for this feature. When the compression rate is slight the following message appears:

"The compressed data is only xx percent smaller than the original. Do you still want to save the data in compressed form?"

Choosing **Yes** saves the document in compressed form; otherwise the original size is used.

### Current graphic

This option is only available when the GeoDin Graph window \<Edit graphic> is open and is in use, for example, to save the graphic representation of an object or any other graphic as a document. By starting the method **"Manage documents"** parallel to the graphic window and choosing **New document**, the current graphic option is available. The currently displayed graphic can now be added as a document. The selection of the type of storage is the same as adding a **File**.

### Address

This option adds an URL (Intranet or Internet link) as a document. Enter the address in the field _"Name:"_, for example:

www.GeoDin.com

The type of storage cannot be selected for this option, because GeoDin anyway stores a link on a document. The address must always refer to a valid target to be displayed.

### Without document

Using this option you add a document entry including a document description, without specifying the document. Later, when the document is available you can add it using the function **"Replace document data"**. In the entry field _"Name:"_ the document name can be entered, for example:

Store invoice here

It is not possible to select the type of storage of the document here, as the document is only inserted later.

### Create document

With this option you add a new document entry including document and document description.

After clicking the icon [Create document](managing-documents.md) you select the type of document to be created.

### Import documents

Use this method to import documents for objects or measuring points.

The documents can be saved either as a link or directly in the database.

_**Attention:**_ _If the documents are stored in the database, enormous amounts of data can be generated. Make sure that the database is able to store these amounts of data._

_Depending on the size and number of documents to be imported, the time required for the import varies._

By default the maximum [Configuration of the document management](document-organization.md) is set to 2 MB.

For general document management information, see [Documents](managing-documents.md).

**How it works:**

The documents (files) are referenced and included using their file names with the entries of a master data field of the objects or the display name of the query.

**Step 1Files:**

Select the folder that contains the documents you want to import and specify the file types of the document files.

The search in subfolders can be activated optionally. The number of documents found is always displayed.

_**Several documents per object:**_

To assign several documents to one object, a [Import formats](../../data-collection/import.md) is required. With an import format, the object name for the object assignment and the suffix for the addition in the document name are extracted from the file name.

With the switch you can define the import formats yourself. They are stored in the file CoreRegEx.cfg in the CONFIG directory.

With the info button you can display the results of the selected import format. With this overview you can check which documents are imported where before the actual import.

_**Drill core photo import:**_

This function offers the possibility to import image files including depth information to display them graphically with the **Data source**. Several documents per object can be imported.

The prerequisite for the automatic transfer of depth information is the installation of the document description type "Depth-oriented image" or "Image with depth information".

After the import, the document name consists of the specified "Document name (if empty \<ObjectName>)\_depth from\_depth to".

**Step 2Measuring point assignment:**_**Master data:**_

\[user-defined]

From the list of master data fields, you must select a field whose data field content corresponds to the file name and can therefore be used as a unique assignment criterion.

_**Automatically:**_

The assignment is made using the display name of the query.

**Step 3Document Properties:**_**Document description type:**_

Here you can select to which document description type the documents to be imported are to be assigned. If no document description types are yet registered in your system, you receive a message. You can make up the registration by clicking the button **Register document descriptions**.

In the next step, decide whether you want to save the document in the database or only the reference to its storage location.

_**Document name:**_

The name of the inserted documents can be entered in the corresponding input field. If the field remains empty, the document is given the file name.

_**Document folder:**_

Furthermore, the document can be inserted into an existing or extended folder structure. To do this, enter the folders in the usual Windows notation.

At least one folder level must be specified in order to execute the import.

Example: _**Subfolder1**\\**Subfolder2**\\**Subfolder3**_

Once all necessary entries have been made, the **OK** switch becomes active and the import can be started.

At the end of execution, a log is displayed listing all actions performed for all objects. The log can be saved.

### Import formats

The import formats are made up of:

_Name_ : \*\*Display name in the selection field during document import

_Regular expression_ : \*\*Expression for evaluating the file

_Example file_ : \*\*Example file name to test the regular expression

_Standard_ : This format will be chosen when the core-photo import is activated.

The following information must be contained in the file name.

There is a difference between general documents and depth related documents:

General documents:

_Object name_ : \*\*Reference to the general data field

_Suffix_ : \*\*Addition to the document name

Depth related documents:

_Object name_ : \*\*Reference to the general data field

_Depth from_ : \*\*Depth information for the document description

_Depth to_ : \*\*Depth information for the document description

To extract this information from the file name a regular expression is needed that defines the file name structure. The following group names are required: **ObjectName**\*,\* **DepthFrom**\*,\* **DepthTo**. Detailed information about the syntax and function of regular expressions can be found here: **http://www.regular-expressions.info/reference.html**_**Example:**_

You have the following files:

Borehole 1\_1.00-2.00 - expected result of the regular expression: ObjectName=Borehole 1 DepthFrom=1.00 DepthTo=2.00

Borehole 1\_2.00-4.00 - expectedd result of the regular expression: ObjectName=Borehole 1 DepthFrom=2.00 DepthTo=4.00

Borehole 1\_4.00-5.00 - expecte result of the regular expression: ObjectName=Borehole 1 DepthFrom=4.00 DepthTo=5.00

An expression that meets this requirement is:

^(?<**ObjectName**>\[^\_]+)\_(?<**DepthFrom**>\d+\\.\*\d\*)-(?<**DepthTo**>\d+\\.\*\d\*)$

The resulting document names are:

Borehole 1\_1.00-2.00

Borehole 1\_2.00-4.00

Borehole 1\_4.00-5.00

The button allows you to preview the effect of using the regular expression on the example file, to check for the expected result.

### RTF texts as documents

RTF text (Rich Text Format) can be edited and printed from GeoDin. In contrast to simple text files, RTF can contain formatting such as fonts, colours etc. The editor in GeoDin offers similar functions to programs such as WordPad from Microsoft®.

You can add a RTF text to the document management either as a **File** or create directly as a [Create document](managing-documents.md). Choose the method **"Edit document"** in the GeoDin object manager to edit the text. The editor can open and edit multiple documents that are shown in separate tabs. Highlight text to apply edits from the upper tool bar.
