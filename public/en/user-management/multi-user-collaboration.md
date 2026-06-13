---
description: How multiple users — and multiple companies — collaborate on a shared GeoDin database
---

# Multi-User Collaboration

GeoDin databases support concurrent multi-user editing, both inside a single team and across companies in a consortium. This page covers shared-database mechanics, conflict behaviour, and what is shared via the syslib in each install topology.

For user accounts and the optional built-in user management system, see [Users and Roles](users-and-roles.md). For database-level access control, see [Database Visibility](database-visibility.md).

## Sharing a database

Databases can be shared via network folders (Microsoft Teams folders, network drives, etc.) for concurrent multi-user access. Any user with a working GeoDin license within a team can connect to a shared database and work with it.

## Concurrent editing behaviour

- **SQL Server (client-server):** latency is low; concurrent editing rarely causes issues unless two users edit the exact same field at the same time.
- **Microsoft Access:** latency is slightly higher than SQL Server, but concurrent editing on different boreholes — or different fields of the same borehole — causes no issues in practice.

**Conflict scenario to watch for:** if one user deletes a sample while another user is entering measurement data for that sample, a conflict occurs. Coordinate destructive operations (deletes) when multiple users are active.

## What is shared, and what is not

Templates, calculations, and data stored **in the database** are shareable across teams — a template created by one user is visible to colleagues with database access. Proprietary calculation formulas can be stored in the database and stay scoped to the client's team; GeoDin staff have no access to client formulas or data.

**Syslib content** (dictionaries, custom data types, layouts, filters such as `Sony_Filter.sys`) behaves differently depending on install topology:

- **Central / network installation** — all users share the same `syslib`; custom content is automatically common.
- **Per-machine installation** — each user has their own copy. Sharing custom dictionaries, filters, or custom data types between users requires manual file copying.

## Multi-company / consortium collaboration

A single shared database can host **multi-company collaboration**. The model has been demonstrated at scale on a national power transmission project across a 5-company consortium — ~700 km of alignment and 3,600+ boreholes, all sharing and collaborating on data within one platform.

In consortium scenarios, all member companies can manage, analyse, and export data from the shared database according to the access controls configured at the database and method level.

