---
description: Parameterized queries — queries with placeholders that prompt for values at execution time.
---

# Parameterized Queries

**Parameterized queries** use placeholder variables that GeoDin prompts for when the query runs. They let one query template serve many specific filters (e.g. "find objects in project ?ProjectID with depth > ?MinDepth").

Parameters are defined in the Query Builder with a name, type, and optional default value. At runtime, GeoDin shows a dialog listing each parameter and capturing the user's input before executing the query.

For the comprehensive reference — full syntax, all options, edge cases — see [**Query Builder Reference**](query-builder-reference.md).
