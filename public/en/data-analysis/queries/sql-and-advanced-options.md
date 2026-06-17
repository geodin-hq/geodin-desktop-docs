---
description: Raw SQL and advanced query options - direct SQL entry, schema-aware table lists, and database-specific syntax.
---

# SQL and Advanced Options

The Query Builder supports **direct SQL** entry for cases where the visual builder cannot express the required logic - joins to external tables, database-specific functions, or complex subqueries.

When using raw SQL, the **table list** declares which identifiers in the FROM clause should be schema-extended at execution time, so the query works portably across database connections with different schema configurations.

For the comprehensive reference - full syntax, all options, edge cases - see [**Creating Queries**](creating-queries.md) (long-form) and [**Query Builder Reference**](query-builder-reference.md).
