# Deployment modes

GeoDin can be installed in two modes, depending on your organization's needs:

* **Per-machine installation:** Each user has their own configuration, dictionaries, custom data types, and system files. This is the default for the Express installation.
* **Central network installation:** All users share the same syslib, dictionaries, custom data types, and configuration via shared folders on a network drive.

The installation folder layout is split across a **bin folder** (executable) and a **syslib folder** (dictionaries, filters, custom data types, configuration). In a per-machine installation, these are typically at `C:\Program Files\GeoDin\` and `C:\ProgramData\GeoDin\` respectively. In a central installation, they can be combined into a single stack on a network share.

## See also

* [Custom installation](custom-installation.md) — choose between single-user and network installation during setup.
* [Infrastructure and environment setup guide](infrastructure-and-environment-setup-guide.md) — multi-user deployment, syslib sharing, and database options.
