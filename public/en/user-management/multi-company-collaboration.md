---
description: Multi Company Collaboration
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** C (Thin (limited source material))
**Needs:** editorial review
-->

# Multi Company Collaboration

## Multi-User Collaboration on Shared Databases

Multiple users can collaborate on the same database simultaneously. <!-- src: transcript/user-management-permissions#multi-user-collaboration-on-shared-databases -->

Databases can be shared via network folders (e.g., Microsoft Teams folders, network drives) for concurrent multi-user access. <!-- src: transcript/user-management-permissions#multi-user-collaboration-on-shared-databases -->

Any user with a working GeoDin license within a team can access a shared database and work with it. <!-- src: transcript/user-management-permissions#multi-user-collaboration-on-shared-databases -->

With client-server (SQL Server) databases, latency is low and concurrent editing generally causes no issues unless two users edit the exact same field at the same time. <!-- src: transcript/user-management-permissions#multi-user-collaboration-on-shared-databases -->

With Microsoft Access databases, latency is slightly higher than client-server, but concurrent editing on different boreholes or different fields of the same borehole causes no issues. <!-- src: transcript/user-management-permissions#multi-user-collaboration-on-shared-databases -->

Conflict scenario: if one user deletes a sample while another user is entering measurement data for that sample, a conflict will occur. <!-- src: transcript/user-management-permissions#multi-user-collaboration-on-shared-databases -->

Templates, calculations, and data stored in the database are shareable across teams — a template created by one user is visible to colleagues with database access. <!-- src: transcript/user-management-permissions#multi-user-collaboration-on-shared-databases -->

In central (network) GeoDin installations, all users share the same `syslib`, dictionaries, custom data types, layouts, and configuration. <!-- src: transcript/user-management-permissions#multi-user-collaboration-on-shared-databases -->

In per-machine installations, each user has their own copy of these folders; sharing custom dictionaries, filters (e.g., `Sony_Filter.sys`), or custom data types between users requires manual file copying. <!-- src: transcript/user-management-permissions#multi-user-collaboration-on-shared-databases -->

Proprietary calculation formulas can be stored in the database and shared only within the client's team; GeoDin staff do not have access to client formulas or data. <!-- src: transcript/user-management-permissions#multi-user-collaboration-on-shared-databases -->

## Multi-Company / Consortium Collaboration

GeoDin supports multi-company collaboration on a single shared database. <!-- src: transcript/user-management-permissions#multi-company-consortium-collaboration -->

Demonstrated at scale on a national power transmission project across a 5-company consortium, ~700 km of alignment and 3,600+ boreholes, all sharing and collaborating on data within one platform. <!-- src: transcript/user-management-permissions#multi-company-consortium-collaboration -->

In consortium scenarios, all member companies can manage, analyze, and export data as needed from the shared database. <!-- src: transcript/user-management-permissions#multi-company-consortium-collaboration -->
