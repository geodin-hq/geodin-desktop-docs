
# Data Sequences and CPT

Data sequences are the measurement-value series held against a data type in GeoDin - the per-row records the measurement editor reads and writes. This page is the reference for the data-sequence operations and the data-type structure dialogs you work with around them: inserting and removing rows, resolving data-type creation errors, comparing data-type structures across databases, and the parameter overview and parameter-property editors.

For the measurement-data editor itself, see [Working with Measurement Data](../measurement-values/working-with-measurement-data.md).

***

## Reference: Insert line

An empty data set is inserted above the current row. After entering data and reloading the view the data set is sorted in the correct row position.

## Reference: Remove line

The current row will be deleted from the database after confirming a query. _WARNING:_\*\* _This action cannot be undone! You may delete several data sets using the keyborad shortcut Ctrl+Del._

## Reference: Error creating the datatype

The table could not be created because of a syntax error in the definition of the table structure.

These syntax errors are reported by the database. The behaviour can vary - a definition can work in one database and fail in another.

The most common syntax errors are

a) wrong field names

b) too many data fields

c) wrong field types

### Wrong field names

For data types (measurement values) structures can be defined. Beside the field type also a long and a short name are entered for a parameter. If the datamodel is SDM the short parameter names are also used to describe the table columns. In the LDM (large data model) this is not the case because the structure always remains the same.

If a command to create a table in the database is executed it is possible that the database does not accept a column name. Which column names are affected depends on the specific database and its version. Hence, a comprehensive documentation is not available. Generally names which are part of SQL commands can not be used.

Known names which can not be used as field names:

AS

DATE

EXTRACT

IN

INTERVAL

KEY

MATCH

POSITION

TAG

TEXT

TIME

### Too many data fields

The number of data fields (columns) in a database table is usually limited and depends on the type of datbase. If this error occurs it my be better to choose the LDM format, because for each measured value a row in the table is created and the number of columns is small (see also [Data model](../data-types.md))

### Incorrect Field types

Some types of data fields are realised differently in different database systems. This is especially true for Blob and Memo fields.

In the GeoDin database configuration, the appropriate settings can be made. If the configuration for the database is incorrect (e.g. not known to the database system), the database cannot create the table and will display an error dialogue.

Example for an Oracle database:

DDL\_BLOB=IMAGE

DDL\_MEMO=MEMO

(see also **Configuration**)

## Reference: Datatype comparison

When tranfering objects into another database, e.g., using the methodes **"Add objects"** or **"Copy project"**, a comparison of the structures of the data types is made. This is done to ensure a complete and correct transfer of the data, which is particularly important for measurement data.

Differences detected are first displayed in a table for information purposes. Missing data types and parameters will be added to the target database by default. However other differences may not allow copying of the data (e.g. differences in measurement units or field formats, which would cause an incorrect data transfer).

The following differences in the structure of the data types will be displayed:

**The data type/parameter is missing in the target database**

This message is informative. The missing data type will be automatically added into the target database. GeoDin uses the measurement parameters as they are defined in the source database. If it is not wished to add the missing data types or parameters, you can easily disable this function by removing the checkmark option. In this case existing measurement values of that data types or parameters will NOT be transferred into the target database. With the additional option 'Skip data types without measurement values' you can define whether a missing data type will only be added to the target database if measurement values for this data type are present.

**The long name of parameters vary**

This difference will be displayed if varying long names exist for identical parameters (by data field name). For example, if there is a data field REMARKS, which in one of the databases the long description is "Comment" and in the other is "Comments". In such cases please check if it is really the same parameter, which in this example is highly likely. Data transfer is not be prevented if the parameter names vary, when the data field name is identical.

**Measurement units of the parameter vary**

The properties of the measurement units or field formats in both databases vary. It is not possible to copy the data from one database into another database because there will be no conversion of the measurement values during transfer. For instance, if a parameter was recorded in grams one database and in kilograms in the other, the values of one database must be converted before copying the data into the other database. Furthermore, the specification of the units must be matched up. The [Calculation](../../data-analysis/calculation-engine/data-checks-and-validations.md) can be executed with the utilisation of formulae within the measurement editor of GeoDin.

The transfer of the same parameters but with differing field formats (date, character, numeric)is also not possible. In addition the field length will be checked. For instance there could be a parameter REMARKS with a field length of 30 characters in \[database\_1] and the same parameter with a field length of 40 in \[database\_2]. Before it is possible to copy values of this parameter from \[database\_2] into \[database\_1] you must expand the field length in \[database\_1] up to 40. Otherwise there is a risk that text entries with more than 30 characters will be truncated.

## Reference: Parameters

The parameter overview for a data type shows all the available parameter for a data type. Here you can choose which parameters are to be available in the current database, set their order and edit their properties. In addition there is information on the measurement values in the database.

Following tools are available:

\*\*'\*\*Open all nodes'

Opens the complete node structure to display the parameters.

\*\* 'Close all nodes'

Closes the displayed node parameter structure completely.

\*\* 'Determine number of measured values'

Calculates the number of measurement values in the database per parameter. This information is displayed in the column "Number of Values".

\*\* 'Edit parameter properties'

Opens a window to [Edit parameter properties](data-sequences-and-cpt.md) This function is only available for parameters that are in use in the current database.

\*\*'Display order'

This function allows you to set the display orderof chemical groups and parameters in the method [Measurement data](working-with-measurement-data.md) Choose the data type branch in the first line to edit the display order of the chemical groups. To edit the parameter order in the data collection grid, choose the branch of the chemical group for which you wish to edit the display order.

_**Note:**_ _To make quickly finding parameters easier you can sort them according to your own criteria. The structured display of the parameters in the Data Type Manager overview always shows the original order of chemical groups and parameters from the system configuration. The display order for subsequent data collection is only viewable in the Data Type Manager using this function._

**Filtering the displayed parameters**

To quickly find parameters you can use the following filter:

[Measurement program](working-with-measurement-data.md)

Where measurement programs (parameter combinations) for the data type exist in the system configuration, these can be used to reduce the number of parameters displayed.

**Filter**

A collection of filters which reduce the displayed number of parameters that have certain properties. For instance the filter "parameters used without measurement values" allows you to quickly remove unwanted parameters from the database. Many other filters are available.

**Search**

Reduces the parameters displayed to those whose parameter or data field name matches the search term.

**Adding and removing parameters**

Parameters can be added to the database by marking the appropriate check boxes. By removing these check mark the parameters are also deleted from the database. This can be done for several parameters at once by choosing the parent check box. By default the affected parameters are shown in an overview when such a selection change is made. Here the addition and removal of parameters can be checked before proceeding and if need be canceled. If you wish to speed up this process, there is the option to activate **Add or remove individual parameters without confirmation** so that one or several parameters can be edited in succession. Activating this causes the action chosen to be carried out immediately without requiring a further confirmation. An exception is the deleting of parameters where measurement values are present - since these would be removed from the database a confirmation is always required before proceeding.

Important note: The parameters with the symbol are in the current database but NOT in the system configuration. If such a parameter is deleted from the database it cannot be subsequently added again, because only parameters known to the system configuration can be added. It is however possible to add such parameters to the system configuration by double-clicking the parameter or clicking the button . Here you have the possibility to add parameters to the system configuration.

**Differences in parameter properties to the system configuration**

The parameters shown with the symbol properties that differ from those in the system configuration. This is not cause for concern since parameter properties are independent of the database. For instance the default value entered automatically for every data record could be =10 in the system configuration and =15 in the current database. Hence these differences are perfectly legitimate. However differences in the data filed type are more critical (e.g. in the system configuration type = Text and in the database = Number). These differences may cause problems when data are to be subsequently transferred from one database to another, where the same parameter has different data field types. Such a data transfer is not possible and will be refused. You can edit the [Edit parameter properties](data-sequences-and-cpt.md) to alleviate these differences.

## Reference: Edit parameter properties

The overview displays the properties of a parameter in the current database and in the system configuration.

Where the parameter property has the symbol there is a discrepancy. You may transfer the parameter property from the system configuration to the current database by selecting with the mouse and dragging and dropping from the system configuration column to the database column.

Changes that affect the data field type of the parameter cause a structural change in the relevant data type table, as long as the data type is in the **S**mall-**D**ata-**M**odel (SDM) structure. GeoDin makes these changes as long as no measurement values exist for this parameter. If measurement values are present, then the length of a text field may be increased but not decreased. If a structural change is not possible a message will appear. The syntax of the SQL-command to change a table column differs between database types. GeoDin tries to automatically recognize the database format and use the appropriate syntax. If the automatic recognition is not possible and the SQL command fails (shown by an error message), the syntax of the SQL command can also be configured. Further information is available in the chapter **Configuration**

In addition to transferring the parameter properties from the system configuration to the current database, you may also edit the parameter properties of the system configuration. To do so just double-click the required property. Please note that changes made to parameter properties will be the new default settings when adding parameters to future databases.

A detailed description of parameter properties can be found in the Chapter **Edit parameter**

## Related topics

- Shared measurement/data-type reference content now lives in the measurement-data editor reference ([Working with Measurement Data](../measurement-values/working-with-measurement-data.md))
