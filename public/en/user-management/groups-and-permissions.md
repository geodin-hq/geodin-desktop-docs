# Groups and Permissions

## Roles, Groups & Method-Level Permissions

Users can be organized into groups (e.g., admin group with full rights, read-only groups, groups with limited write access).

Permissions are managed at the method level: individual methods can be made visible or invisible to specific users or user groups via the "Manage Methods" function.

Example permission scenario: some users can view and add data but cannot delete objects.

<!-- src: help/H0000011354#manage-methods-defaults -->

In the **Manage Methods** dialog the option **-All-** is active by default, which means no restriction applies. Choosing the option **-User groups-** instead releases the item explicitly for certain groups or individual users. The same mechanism covers methods, system databases, and queries.

<!-- src: help/H0000009041#user-rights-defaults -->

When user-rights restrictions are active in the user rights configuration, using and editing layouts and creating databases are not permitted by default. Both can be allowed for certain users. These restrictions apply to computer (Windows) user names only.

External users may not have permission to modify shipped system data types - `System > System Configuration > Data Types` is effectively read-only for external users.

Custom data type creation (`System > Data Types > New Data Type`) is available to users even when modifying existing system data types is restricted.
