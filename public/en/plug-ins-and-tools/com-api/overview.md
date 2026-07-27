---
description: Overview of GeoDin's COM API - automation entry points for scripting and integration.
---

# COM API

GeoDin exposes a **COM API** that lets external scripts and applications automate object creation, data access, layout printing, and other GeoDin operations.

The COM API is accessible from any language that supports COM automation (VBA, VBScript, PowerShell, .NET via interop, Python via `comtypes`). Typical use cases include batch report generation, programmatic data import, and integration with third-party project management tools.

## Image Server module

<!-- src: help/H0000007260#image-server -->

Some COM methods belong to the **GeoDin Image Server** module rather than to the base API. The Image Server makes GeoDin data available graphically to a front-end program in an intranet or Internet environment, directly from a GeoDin database: it renders GeoDin layouts as images that the front end can display. The module is licensed with the GeoDin Server Licence, and it is exercised through the COM methods [GetImage](method-reference.md#getimage) and [GetPrintFile](method-reference.md#getprintfile). Calls to those methods fail with the "function not licensed" error when the module is not licensed.

For the comprehensive reference - full syntax, all options, edge cases - see [**Method Reference**](method-reference.md).
