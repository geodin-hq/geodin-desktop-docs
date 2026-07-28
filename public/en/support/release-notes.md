---
description: >-
  Version-by-version release history for GeoDin Desktop, with links to the
  documentation and Help Center articles for each released feature.
---

# Release Notes

{% hint style="info" %}
Release announcements are published first on [geodin.com/release-notes](https://www.geodin.com/release-notes). This page is the permanent archive, with links into the documentation for each released feature. German-market deep dives live in the [GeoDin Help Center (Deutsch)](https://support.geodin.com/hc/de).
{% endhint %}

## v15.6.6.125

_Released: 18 June 2026_

**What's New:**

- New object type: **(KA6) Bodenkundlicher Aufschluss**. GeoDin 15.6 introduces the KA6 object type, supporting the 6th edition of the German Soil Survey Guidelines (Bodenkundliche Kartieranleitung), mandatory in Germany since July 2024. It covers diagnostic horizons, revised horizon symbols, the extended substrate system, and new soil types. See [(KA6) Bodenkundlicher Aufschluss](../navigating-the-geodin-workspace/object-types/ka6-bodenkundlicher-aufschluss.md); a detailed article is available in the Help Center: [Bodenkundlicher Aufschluss nach KA6 (Deutsch)](https://support.geodin.com/hc/de/articles/28347769127196-Bodenkundlicher-Aufschluss-nach-KA6).

**Improvements:**

- Updated wording on the license activation screen to reduce confusion when entering Pro license keys.
- Data entry form background colors now adapt to the active UI skin for visual consistency.
- Measurement point display names are now updated during an object type update; previously a full reinstallation was required. (Reported by Arcadis.)
- Fixed layout rendering issues on 4K screens with the German UI.
- Fixed a crash during Excel export of complex data types (e.g. PSD) that contained no rows. (Reported internally by Fugro.)
- The "Break presentation for unmeasured areas" option in data sequence graphics now correctly interrupts the curve when depth entries have no associated measured value; break-range precision increased to 0.001.
- Minor German text and symbol corrections, including a missing ® symbol in the unsupported object type message.

<!-- src: website/geodin-website-company#release-notes -->

## v15.5.0.185

_Released: 13 April 2026_

**What's New:**

- **First beta version of the new user interface**: a modernized, customizable title bar combines the top navigation, layout controls, Help, Info, and the Beta/Classic toggle in a single header. Users can switch between the Beta and Classic design; the Classic design is unchanged.

**Improvements:**

- Fixed the Turkish interface language showing numeric placeholders instead of translated text.
- Excel export of data types with sub-data types (e.g. SPT) now creates valid files that open correctly; simple data types were not affected. See [Excel Export](../data-collection/export/excel.md).
- Fixed an access violation that could occur when closing the Map View while map tiles were still rendering.
- Dragging system queries onto a map no longer fails when connected to a PostgreSQL database.
- GeoDin no longer moves to the background after the welcome screen is closed.
- Fixed the "Import samples" dialog freezing when the Task Manager was open.

<!-- src: website/geodin-website-company#release-notes -->

## v15.4.13.11

_Released: 9 March 2026_

**What's New:**

- Object type install/update now treats system data types as mandatory: new system parameters are applied during updates to keep the system configuration and database structure aligned. See [Installing Object Types](../navigating-the-geodin-workspace/object-types/installing.md).
- Formulas for system data types are refreshed during object type updates to match the source configuration and order.
- Fixed a "Division by 0" error when importing sample data after switching between US customary and SI units.
- **G1 object type v10.2.1**: streamlined system library, refined data entry masks, added parameters and dictionaries for field workflows, expanded AGS export coverage (including CPT groups), improved unit handling, refreshed fill patterns, and updated translation stylesheets and text macros across key standards. See [(G1) Location](../navigating-the-geodin-workspace/object-types/g1-location.md).

<!-- src: website/geodin-website-company#release-notes -->

## v15.4.10.6

_Released: 23 February 2026_

**Improvements:**

- Multiple access violation issues fixed, improving overall stability.

<!-- src: website/geodin-website-company#release-notes -->

## v15.4.7.18

_Released: 9 February 2026_

**What's New:**

- Added an optional Labelling Instruction field (text macro) for the "Table" drawing type in the Data Sequence graphic element. See [Measurement Value Graphics](../data-visualization/layouts/measurement-value-graphics.md).

**Improvements:**

- Closing the Map View window no longer triggers an access violation.
- Corrected German text for Publications in the **System** tab.

<!-- src: website/geodin-website-company#release-notes -->

## v15.4.3.325

_Released: 26 January 2026_

**What's New:**

- Plugins can now run in .NET 10 (GeoDin 15.4 onwards): both the installer and the desktop client can install this dependency, and plugins can now be restricted based on the object type. See [Installing Plug-ins](../plug-ins-and-tools/installing-plug-ins.md).
- **Import and export of AGS 4.0.4 and 4.1.1**: AGS-compliant files can be imported directly into the AGS object type and exported back in full accordance with the standards, for a standardized workflow with partners, clients, and external systems. See [AGS Import](../data-collection/import/ags-import.md), [AGS Export](../data-collection/export/ags-export.md), and the [AGS 4 object type](../navigating-the-geodin-workspace/object-types/ags-4.md).

**Improvements:**

- Fixed the "Discontinuities" data sequence in the US layout not respecting page breaks, which caused rows to overflow and display at incorrect depths.

<!-- src: website/geodin-website-company#release-notes -->

## v15.3.66.28

_Released: 13 November 2025_

**What's New:**

- Data import now supports both dictionary codes and dictionary values. See [CSV and Excel Import](../data-collection/import/csv-and-excel-import.md).

**Improvements:**

- The interface uses a new font with improved kerning for a cleaner, more consistent look.
- A clear visual indicator now appears when a project is open.
- Fixed GeoDin restarting without the regular user's configuration after installation with administrative privileges.
- Fixed missing lines in data sequences generated from queries.

<!-- src: website/geodin-website-company#release-notes -->

## v15.3.58.29

_Released: 15 October 2025_

**What's New:**

- You can now select which data types to include when installing or updating an object type. See [Installing Object Types](../navigating-the-geodin-workspace/object-types/installing.md).

**Improvements:**

- Fixed a licensing problem on Windows 10 Home systems.
- The G1 importer now matches Monitoring Point IDs flexibly when importing measurement data for sample-based data types, even when IDs are formatted slightly differently than in GeoDin. See [(G1) Location](../navigating-the-geodin-workspace/object-types/g1-location.md).
- Adjusted button placement in the delete object query dialog.

<!-- src: website/geodin-website-company#release-notes -->

## v15.3.50.17

_Released: 18 September 2025_

**What's New:**

- GeoDin now shows which data types will be added or updated before you install or update an object type. See [Installing Object Types](../navigating-the-geodin-workspace/object-types/installing.md).

**Improvements:**

- Scrollbars in the measurement and sample editors are now placed outside the data record area, so the last data line is no longer obscured.
- The **Add layout folder** checkbox is now unchecked by default during object type export.

<!-- src: website/geodin-website-company#release-notes -->

## v15.3.39.85

_Released: 11 August 2025_

**What's New:**

- Import data sequences in imperial units: you can specify the unit used to record depth values, and import files can be mapped to predefined data sequences with their units for automatic conversion. See [Data Sequences (CPT, free-format)](../data-collection/import/data-sequences.md).
- The rename function in the General Data section of the Data Sequence Editor is now available for all data sequences, user-defined and pre-configured.
- System databases can now be renamed directly within GeoDin, without manually editing the CON file.
- Layouts are now included when exporting object types via the **System** tab.
- AGS export (G1 Location): CPT AGS groups (SCPT and SCPG) are now deactivated by default for greater control over export content. See [AGS Export](../data-collection/export/ags-export.md).
- New geotechnical standard for Hong Kong, with region-specific fill patterns. See [Ground Description Standards](../configuration/ground-description-standards.md).

**Improvements:**

- Added a validity check and corrected decimal precision for GEF-CPT files during `.gef` import; fixed the **Import** button initially not being selectable.
- Fixed depth interval calculations in the Data Sequence Editor when using feet.
- Various UI fixes across multiple screens.
- Fixed a failure in the GeoDin update process; auto-update is now disabled for users without write permissions in `ProgramData\GeoDin`.
- Clearer error messages during object type export.

<!-- src: website/geodin-website-company#release-notes -->

## v15.3.18.482

_Released: 17 June 2025_

**What's New:**

- GEF files can now be imported into G1, including unit conversion. See [Data Sequences (CPT, free-format)](../data-collection/import/data-sequences.md).

**Improvements:**

- Multiple bug fixes for overall stability.
- Individual licenses can be refreshed without restarting the application; better renewal and validation of expired professional licenses.
- Faster application startup.
- New logging framework for better diagnostics.
- The "Save Documents" dialog no longer pops up with every progress bar update.

<!-- src: website/geodin-website-company#release-notes -->

## v15.2.74.24

_Released: 21 March 2025_

**What's New:**

- Access violation errors can now be reported directly to the GeoDin team, with detailed technical information attached.

**Improvements:**

- Improved German translations in the Save Documents function.
- Fixed the Excel export button in the Graphic Printing and Editing method.
- Resolved a timeout error when connecting to a network license.

<!-- src: website/geodin-website-company#release-notes -->

## v15.2.66.32

_Released: 6 March 2025_

**What's New:**

- Batch printing of borehole and other logs, with direct storage into the document management system. See [Bulk Print and PDF Export](../reporting/bulk-print-and-pdf-export.md).

**Improvements:**

- Updated the DXF export icon. See [DXF Export](../data-collection/export/dxf-export.md).
- The tutorial link now points to the GeoDin YouTube channel.
- Fixed formatting in the delete objects window.

<!-- src: website/geodin-website-company#release-notes -->

## v15.2.59.53

_Released: 3 February 2025_

**Improvements:**

- Fixed GeoDin freezing during license activation.
- Fixed the license having to be entered twice when an administrator installs GeoDin but a regular user runs it.
- Improved the license log for easier error analysis. See [Activate Your License](../installation/activating-your-license.md).

<!-- src: website/geodin-website-company#release-notes -->

## v15.2.53.53

_Released: 13 January 2025_

**What's New:**

- Export GeoDin data to a file that can be imported into Leapfrog. See [Export to Leapfrog Geo](../integrations/leapfrog-geo-export.md).
- The help system can now be printed.

**Improvements:**

- Fixed an access violation during license activation for individual users.
- Timestamps can now be stored in Large Data Model databases.
- GeoDin® is now shown correctly in the desktop window title.

<!-- src: website/geodin-website-company#release-notes -->

## v15.2.48.43

_Released: 11 December 2024_

**What's New:**

- Page breaks are supported for depth-related pictures when using US units in templates.

**Improvements:**

- Updated the gINT converter to version 1.0.3.0. See [gINT Converter](../plug-ins-and-tools/introduction.md).
- Fixed the mechanism to update object types.
- Fixed special characters not displaying correctly in the installer.
- Fixed the "Document Management" button in the General Data Management area.

<!-- src: website/geodin-website-company#release-notes -->

## v15.2.41.20

_Released: 15 October 2024_

**Improvements:**

- Merged the latest developments from GeoDin 10.1 into GeoDin 15 to establish a unified code base.
- Fixed the mouse cursor being perpetually in the "loading" state.

**Known issues:**

- German letters in the installer are not correct (Unicode issues).

<!-- src: website/geodin-website-company#release-notes -->

## v15.2.37.2

_Released: 27 September 2024_

**Improvements:**

- Fixed MySQL database support.

**Known issues:**

- German letters in the installer are not correct (Unicode issues).

<!-- src: website/geodin-website-company#release-notes -->

## v15.2.34.52

_Released: 17 September 2024_

**What's New:**

- New wizard for upgrading from trial to professional (multi-user) licenses.
- GeoDin renamed to GeoDin® for the trademarks.
- All windows and popups are now centered on the desktop.

**Known issues:**

- German letters in the installer are not correct (Unicode issues).

<!-- src: website/geodin-website-company#release-notes -->

## v15.2.20.11

_Released: 2 August 2024_

**What's New:**

- Users can now upgrade from a trial to an individual (single-user) license key.
- Installation fixes: network installation, write permissions, and keeping legacy system configurations.
- General bug fixes across the application.

**Known issues:**

- Vimeo videos are not working.
- German letters in the installer are not correct (Unicode issues).
- Not possible to move from a Trial to a Professional license yet.

<!-- src: website/geodin-website-company#release-notes -->

## v15.2.16.127

_Released: 2 July 2024_

**What's New:**

- License management: trial and individual users no longer require the "license server" component to activate and run GeoDin. See [Activate Your License](../installation/activating-your-license.md).
- DXF export restored, now inside the print preview screen of layouts. See [DXF Export](../data-collection/export/dxf-export.md).
- Support email addresses on the welcome screen are now clickable.
- New Civil3D publication method for exporting GeoDin data to a Civil 3D-compatible file.
- General bug fixes across the application.

**Known issues:**

- Vimeo videos are not working.

<!-- src: website/geodin-website-company#release-notes -->

***

{% hint style="info" %}
The entries below predate GeoDin 15. They come from the internal release-notes database for the GeoDin 9.5 to 10.1 era (2021-2024) and use the build numbers of that time.
{% endhint %}

## GeoDin 10.1 (build G2680524)

_Released: May 2024_

**What's New:**

- General: Full offline mode for data management editor with disabled map preview available.
- Graphic: Columns in the Report graphic element can be hidden depending on data; this now also applies to their headers and footers.
- Graphic: Automatic adjustment for headers and footers in the report element with invisible columns.

**Improvements:**

- Database: Corrected some table and field checking done with lower case for MSSQL and Oracle.
- Data input: Corretly saving the last edited values in the project dialog on exiting with Enter/Return.
- General: Updated the publish and export format from .mdb to .accdb.
- General: Corrected an issue where a license service connection was not saved.
- Maps: DXF-export is available in the Maps module.
- General: Enabled display settings for projects with the object manager.
- General: The method "Calculate formulas" can now correctly be used at an open database with a closed object manager node.
- Graphic: Without ground level data but enabled display setting to Datum for borehole log and well design elements, the values are corrected to NAN (not a number) again.
- Data input: Within the measurement editor Row diagrams are available again.
- Database: Fixed the creation of an index within a schema for oracle databases.
- Graphic: Checkboxes in cross section scenes editor show the correct state.
- Queries: Fixed an issue for queries in GiS and map functions, that could ignore project restrictions and result in all objects of the database.

<!-- src: spec/GeoDin_Release_Notes_legacy -->

## GeoDin 10 (build G2671223)

_Released: December 2023_

**What's New:**

- Data input: Formulas that use map functions have been improved. If a formula does not return a result, the output of the formula is adapted to the target field. In this case, an empty string is returned for string fields and -1 for numeric fields.
- Plugins: Transferal of the name of a plugin from the plugin configuration to the title bar of the plugin window.
- Maps: A database node can be dragged and dropped into the Maps module.
- General: New standard language Lithuanian added for dictionaries.
- General: Object limit of 9998 objects in projects removed. Necessary structural extensions to the system tables in databases are carried out automatically.
- Maps: An option for selecting the coordinate system has been added to the wizard for creating maps.

**Improvements:**

- Maps: Digitising objects within the Maps module generated an access violation. The error has been rectified.
- General: Macro %BEG+OFF for complex data types corrected.
- Maps: Improved loading speed of database layers.
- General: The connection to the license management from the login dialogue is now possible.
- Data input: Using borelog version in the data management editor displays the title data first.
- Maps: Corrected the rectangle selection in the maps module.
- General: Corrected a timout issue on reconnecting with an available license service.
- Data input: Unit conversion while editing G1 layer data fixed.

<!-- src: spec/GeoDin_Release_Notes_legacy -->

## GeoDin 9.6 (build G2660423)

_Released: April 2023_

**What's New:**

- Graphic: Extension of the depth display in the groundwater element to include depth and absolute depth.
- Database: The updating of database dictionaries has been improved.
- Graphic: "Replace" macro introduced.
- General: The print preview can now be cancelled.
- General: The Excel export of a report is now possible directly from the layout overview.

**Improvements:**

- General: Adaptation of the positioning of methods to high-resolution and multiple screens.
- Graphic: Paper unit on the vertical scale is now saved.
- Database: Accelerated structure checks when opening a database.
- Data input: Saving entries of dictionary fields with multiple keys and long name display in the general data grid corrected.
- Maps: An error when saving interpolations as a GRD (grid file) has been corrected.
- Database: When updating a document description, the corresponding table was incorrectly named in the database.
- Graphic: Correction of the signature display of secondary components from 09/2023.

<!-- src: spec/GeoDin_Release_Notes_legacy -->

## GeoDin 9.6 (build G2651022)

_Released: October 2022_

**What's New:**

- Database: Simultaneous opening of projects with the same PRJID in different databases are now possible.
- Graphic: Unit specification on Design Profiles and general data sequences in the legend element.
- Data input: The layer preview in the genral data editor also takes into account the unit systems that have been set.
- Data input: Signatures in the layer preview of the general data editor scale with current monitor settings.

**Improvements:**

- Graphic: The direct Image- File- Export from the graphics is removed. Exports are available at the print preview.
- General: Support for "Solutions" removed.
- Database: Database reference of group objects updated after renaming/ copying a database.
- Maps: Inverting of the Map- Selection has been accelerated.
- Maps: Better support of TileMapServices.
- Configuration: Multiple display in the "Manage methods" in Methods is fixed/remedied.
- Graphic: Display option "Interrupt areas" for Data Sequences is corrected.

<!-- src: spec/GeoDin_Release_Notes_legacy -->

## GeoDin 9.6 (build G2640722)

_Released: July 2022_

**What's New:**

- Graphic: Diagram design also available in site plan diagrams.
- Queries: User-defined queries can be assigned structural information from existing GeODin tables. This makes it possible to access dictionaries, for example.
- Queries: User-defined queries can be used across databases via the additional schema macro ($Schema$).
- Graphic: Absolute and relative coordinates can be mixed in the design of diagrams. Time series example: static line at value 10 over the entire time series can be defined via the points [0 (relative),10 (absolute)] and [1,10].
- Graphic: Settings for PDF export, for example, quality or password.

**Improvements:**

- Graphic: Tag lines in the well design representation for monitoring well (type 18,19) adapted to horizontal displacement.
- Maps: Change to the legend.
- General: Removed automatic COM registration at programme start. Since the User Account Control (UAC) introduction in Windows, this methodology has been listed as obsolete. Windows provides for COM registration to be executed with /regserver by the administrator.
- Graphic: Selections on date fields no longer require checks for NULL.

<!-- src: spec/GeoDin_Release_Notes_legacy -->

## GeoDin 9.6 (build G2630522)

_Released: May 2022_

**Improvements:**

- Graphic: GeODin now contains a print preview where all pages can be viewed, enlarged and sorted. There are also several export options.
- Graphic: Customized view when system fonts are scaled  (e.g. 125% Windows setting).
- Graphic: The print preview shows the output as individual PDF files for each page.
- Graphic: The print preview shows the output as a single PDF file containing all pages.
- Graphic: The print preview shows the output as individual PDF files for each object.
- Graphic: Improved line output in the PDF/printer.
- Maps: Legend.
- Database: Extension of the LOCREG table by ProjectGUID.
- Graphic: Data sequence graphic display in tabular form.

<!-- src: spec/GeoDin_Release_Notes_legacy -->

## GeoDin 9.5 (build G2620222)

_Released: February 2022_

**What's New:**

- General: Fill pattern and symbol files are included when importing or exporting data types.
- General: The layer preview now switches to show the appropriate fill patterns and symbols as defined for each standard in the relevant dictionaries.
- Graphic: Project details available.

**Improvements:**

- Configuration: Copying and pasting layer queries incorporates the relevant IDs.
- General: The positioning of message windows, dialogues and selections has been optimised for multi-monitor usage.
- Graphic: The display of German system variables (e.g. AKTBLATT) has been removed and will be replaced with their international equivalents. Backwards compatibility will be retained for GeODin version 9.
- General: The load times for objects, in particular those G1-based, has been improved by 85%.
- General: Upon calling an EXE-plugin the starting parameters are transferred as a JSON string parameter.

<!-- src: spec/GeoDin_Release_Notes_legacy -->

## GeoDin 9.5 (build G2611121)

_Released: November 2021_

**What's New:**

- Graphic: Multilingual static texts. Switching via user interface language for complete layouts.
- Configuration: Multilingual dictionary entries.
- Configuration: Relative path entry for file-based system databases (e.g. $%GEODINROOT$Databases\db.accdb).
- General: Licensing system with license server.

<!-- src: spec/GeoDin_Release_Notes_legacy -->

## GeoDin 9.5 (build G2600721)

_Released: 21 July 2021_

**What's New:**

- Maps: The simple map view available in the General data editor now allows the current map section to be copied to the clipboard (not the Maps module).
- Maps: Added support for .geojson files in the GeODin maps module.
- Configuration: Additional information on dictionary keys via any web service via dictionary links.
- Graphic: Measurement data in data sequence graphics with customizable depth columns.
- General: Extension of AGS export for freely selectable blocks from the defined layout list.

**Improvements:**

- Database: Reduced memory requirements for large databases.
- Database: Compatibility to uncompressed data sequences.
- Graphic: Visibility of columns in reports.
- General: Layer query results for the ABBR group legend will only be added to this group.

<!-- src: spec/GeoDin_Release_Notes_legacy -->

## GeoDin 9.5 (build G2590621)

_Released: 21 June 2021_

**What's New:**

- Graphic: X-offset for bar graph display of original data in time series.
- Graphic: Optional use of the ion balance in Piper diagrams.
- Graphic: Conversion of date formats also in English.

**Improvements:**

- Graphic: Special texts for the display of groundwater now consistently underneath the first tag line.
- General: Data recognition correction for Date/Time in Excel files when importing measurment data.

<!-- src: spec/GeoDin_Release_Notes_legacy -->

## GeoDin 9.5 (build G2580421)

_Released: April 2021_

**What's New:**

- Graphic: Legend element for pie charts.
- Graphic: Bar graph displaying raw data for time series are now based on Y = 0.

**Improvements:**

- Database: Sorting of exploratory data of the same depth also based on their order.
- General: General change regarding list display from sorted lists to one-time sorting calls. Very significant for data sequences.
- General: Improved recognition of "Date" and "DateTime" when importing from Excel.

<!-- src: spec/GeoDin_Release_Notes_legacy -->
