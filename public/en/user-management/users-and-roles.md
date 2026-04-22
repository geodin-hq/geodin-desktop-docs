---
description: Users and Roles
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** editorial review
-->

# Users and Roles

## Built-in User Management System

GeoDin includes a built-in user management system that is optional — most customers do not use it. <!-- src: transcript/user-management-permissions#built-in-user-management-system -->

Users are created with a name and a login credential tied to the Windows login used at laptop startup. <!-- src: transcript/user-management-permissions#built-in-user-management-system -->

Primarily used by organizations with strict access requirements (e.g., public authorities with ~20 users). <!-- src: transcript/user-management-permissions#built-in-user-management-system -->

GeoDin Onsite has no user accounts or authentication — it is a single-user desktop/tablet application. User name and computer name are captured only in each form's `history` section for audit purposes. <!-- src: transcript/user-management-permissions#built-in-user-management-system -->

## Roles, Groups & Method-Level Permissions

Users can be organized into groups (e.g., admin group with full rights, read-only groups, groups with limited write access). <!-- src: transcript/user-management-permissions#roles-groups-method-level-permissions -->

Permissions are managed at the method level: individual methods can be made visible or invisible to specific users or user groups via the "Manage Methods" function. <!-- src: transcript/user-management-permissions#roles-groups-method-level-permissions -->

Example permission scenario: some users can view and add data but cannot delete objects. <!-- src: transcript/user-management-permissions#roles-groups-method-level-permissions -->

External users may not have permission to modify shipped system data types — `System > System Configuration > Data Types` is effectively read-only for external users. <!-- src: transcript/user-management-permissions#roles-groups-method-level-permissions -->

Custom data type creation (`System > Data Types > New Data Type`) is available to users even when modifying existing system data types is restricted. <!-- src: transcript/user-management-permissions#roles-groups-method-level-permissions -->

## Database Visibility & Access Control

Two database visibility types exist: <!-- src: transcript/user-management-permissions#database-visibility-access-control -->

System databases are recommended for client-server setups and are created via `System tab > System Databases > Create Database Connection`. <!-- src: transcript/user-management-permissions#database-visibility-access-control -->

User-defined database connections are visible only to the user who created them. <!-- src: transcript/user-management-permissions#database-visibility-access-control -->

The GeoDin Ground plugin for Civil 3D only shows projects the user has access to in the database, implying database-level access control. <!-- src: transcript/user-management-permissions#database-visibility-access-control -->

GeoDin Ground users must be explicitly granted access to the database before they can pull in project data. <!-- src: transcript/user-management-permissions#database-visibility-access-control -->

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

## Single-Ownership Model (Onsite "One Piece of Paper")

Form ownership in Onsite follows a strict single-copy model: only one copy of a form exists at any time. A form is either in the user's local "briefcase" or on a shared "shelf" — never both as live copies. <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

Analogy: a physical piece of paper on a shelf — prevents two users editing the same form simultaneously and is positioned as a conscious simplicity choice over conflict-merging. <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

Ownership is file-level, not user-level: whoever currently holds the live `.GDOF` owns it, regardless of user identity. <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

Ownership is strictly exclusive, never concurrent — the digital equivalent of "single existence". <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

"Save local" keeps a form in the local project folder without changing ownership. "Publish" moves the form into the file-delivery system with a status. <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

Three publish states: `Incomplete`, `Final/Complete`, and `Partial` (Partial is more advanced). <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

Two "shelves" exist when publishing: `Incomplete` (can be retrieved back by any user with access) and `Final/Complete` (goes to a shelf the original user cannot retrieve from; belongs to office staff). <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

Publishing as `Complete` requires full form validation to pass; publishing as `Incomplete` is allowed with validation errors and places only the `.GDOF` on the shelf (no PDF or GeoDin ML generated yet). <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

When a form is published, the `.GDOF` file is moved to the shared delivery folder and the original file "leaves" the local `projects` folder — `Load local` will no longer find it. <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

A local photocopy of every published form is kept locally (marked internally as a copy, not the "live" version) for disaster recovery in case the cloud sync folder fails. <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

`Retrieve` is the reverse of `Publish`: it reads a form back from the shared delivery folder onto the tablet and transfers ownership to the local user. After retrieve, a photocopy remains on the shelf marked as not-owned. <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

When a user publishes an incomplete form, only another Onsite user with access to the shared folder can retrieve it; the original user loses the ability to `Load Local` that form until they retrieve it back. <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

`Revoke`: if a form has been published as complete but was a mistake, the user can load the local photocopy and press `Revoke`, which reactivates it as the live copy for re-submission. Revoke is flagged as dangerous because it can overwrite data already processed downstream. <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

Fire-and-forget workflow: field users publish from the tablet, the form disappears locally, and office staff pick it up — positioned as the intended clean separation between field and office work. <!-- src: transcript/user-management-permissions#single-ownership-model-onsite-one-piece-of-paper -->

## Data Privacy & Ownership

GeoDin does not access customer data; data ownership and privacy are core principles. <!-- src: transcript/user-management-permissions#data-privacy-ownership -->

The customer controls where data is stored (local, on-premises server, or cloud) and who has access. <!-- src: transcript/user-management-permissions#data-privacy-ownership -->

Data put into GeoDin is not visible to the parent company or to other clients; the platform operates independently. <!-- src: transcript/user-management-permissions#data-privacy-ownership -->

GeoDin does not anonymize or sell customer data. <!-- src: transcript/user-management-permissions#data-privacy-ownership -->

NDA arrangements are available for clients who need to share sensitive project data during configuration or API development; standard NDA templates are provided, or clients can use their own. <!-- src: transcript/user-management-permissions#data-privacy-ownership -->

Customers can run GeoDin in a locked-down corporate environment with no internet access — runtime telemetry or file transfer from GeoDin staff into the customer network is blocked in such setups. <!-- src: transcript/user-management-permissions#data-privacy-ownership -->

## Authentication & Environment Constraints

GeoDin authentication piggybacks on the Windows login — no separate password store. <!-- src: transcript/user-management-permissions#authentication-environment-constraints -->

There is no SSO, MFA, or directory-service integration documented in the transcripts. <!-- src: transcript/user-management-permissions#authentication-environment-constraints -->

Onsite has no authentication layer at all — identity is captured passively via Windows user name and computer name in the form history log. <!-- src: transcript/user-management-permissions#authentication-environment-constraints -->

The installation scope (`All users` vs. `Local user`) is the only user-scoping decision for Onsite — it controls whether the executable is available to all Windows accounts or only the installing user. <!-- src: transcript/user-management-permissions#authentication-environment-constraints -->

## GeoDin Licensing Model

Two license types exist: <!-- src: transcript/user-management-permissions#geodin-licensing-model -->

With a Professional license, the number of seats determines how many users can use GeoDin simultaneously (e.g., 3 licenses = up to 3 concurrent users out of a 15-person team). <!-- src: transcript/user-management-permissions#geodin-licensing-model -->

Any machine can act as the license server — no separate license server product is required. <!-- src: transcript/user-management-permissions#geodin-licensing-model -->

Licenses are hardware-bound; hardware changes (new laptop, Windows 10 to 11 upgrade) require license reactivation by GeoDin support. <!-- src: transcript/user-management-permissions#geodin-licensing-model -->

An educational package is available for colleges and students. <!-- src: transcript/user-management-permissions#geodin-licensing-model -->

Civil 3D plugin (GeoDin Ground) users do not need a GeoDin license; only people who manage and curate the database need paid licenses. <!-- src: transcript/user-management-permissions#geodin-licensing-model -->

GeoDin Onsite is included with a GeoDin subscription at no additional cost. <!-- src: transcript/user-management-permissions#geodin-licensing-model -->

GeoDin Onsite licenses can be bundled for contractors; pricing is custom/negotiated per bundle. <!-- src: transcript/user-management-permissions#geodin-licensing-model -->

## GeoDin Onsite Licensing (Keygen + Hardware Binding)

Licensing is seat-based via a license key — a 30-character uppercase alphanumeric string. A single key can cover multiple seats ("multi-seat license"). <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

Example configuration: a 20-seat support license valid until a fixed expiry date, named after the customer as entered in Shopify. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

The licensing backend is Keygen (keygen.sh or equivalent). Support staff manage licenses via the Keygen dashboard — suspend, renew, revoke, view customer info. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

Keygen is integrated with Shopify: a Shopify purchase triggers license automation, and customer IDs shown in Keygen are Shopify customer IDs (e.g., "customer ID 3656"). <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

The licensing backend is not a CRM — Keygen only handles keys and machine bindings, not transactions, money, or addresses. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

Each activation is bound to a machine via a hardware ID fingerprint derived from hardware; it cannot be spoofed or tampered with. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

The hardware ID may change if the disk or memory is swapped — in that case the license becomes unlinked and an admin must remove the old machine link in the Keygen dashboard so the license can re-activate on new hardware. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

License Manager UI shows: license key, license name (customer name), expiry date, maximum GeoDin version allowed (e.g., "up to 3.99"), offline grace period (30 days), multi-seat count, machine name, and hardware ID. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

License Manager is available in English and German. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

Offline license validation: Onsite normally validates its license on every startup against the licensing server. If no internet is available (e.g., tablet in the field), Onsite falls back to offline mode for up to 30 days; after 30 days offline, the license must re-validate online. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

Anti-abuse check on purchase: only existing GeoDin customers can self-serve Onsite; unknown emails trigger a manual approval step by sales. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

Post-purchase the customer receives an email with the installer URL and a license key. First launch runs the License Wizard, which accepts the key via paste or clipboard and binds the license to the machine hardware ID. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

Fallback when a licensing problem occurs: contact the internal support/licensing owner before assuming a Shopify/Keygen logic bug. <!-- src: transcript/user-management-permissions#geodin-onsite-licensing-keygen-hardware-binding -->

## Dictionaries, Custom Content & Team Scope

Custom dictionaries, custom tables, and settings are saved within the team scope (per syslib). <!-- src: transcript/user-management-permissions#dictionaries-custom-content-team-scope -->

Dictionaries are shared across all users who share the same GeoDin library installation. <!-- src: transcript/user-management-permissions#dictionaries-custom-content-team-scope -->

Custom test tables can remain local to a single user or be added to the general library shared across the platform distribution. <!-- src: transcript/user-management-permissions#dictionaries-custom-content-team-scope -->

When a user edits a dictionary, GeoDin records a timestamp and that dictionary becomes "frozen" — GeoDin distribution updates will no longer overwrite it, preserving user changes. <!-- src: transcript/user-management-permissions#dictionaries-custom-content-team-scope -->

When sending data to an external client who does not have the same custom dictionaries, the sender must also ship the relevant `.GSD` dictionary files or the full syslib folder. <!-- src: transcript/user-management-permissions#dictionaries-custom-content-team-scope -->

Low-risk dictionaries (client list, lab names) can be edited freely; higher-risk dictionaries (soil types, field patterns) should be edited carefully because losing distribution updates can matter. <!-- src: transcript/user-management-permissions#dictionaries-custom-content-team-scope -->

Custom data types and layouts also live in the syslib folder and must be manually copied/shared between installations when a network install is not used. <!-- src: transcript/user-management-permissions#dictionaries-custom-content-team-scope -->

## Trial & Evaluation Access

A free 30-day trial is available, with the option to extend as needed. <!-- src: transcript/user-management-permissions#trial-evaluation-access -->

No limit on the number of users who can participate in a trial. <!-- src: transcript/user-management-permissions#trial-evaluation-access -->

No hard stop on the trial — extensions are available upon request. <!-- src: transcript/user-management-permissions#trial-evaluation-access -->

Trial-first approach is actively recommended: no customer should buy GeoDin without trialling it first. <!-- src: transcript/user-management-permissions#trial-evaluation-access -->

## Planned / Upcoming

No planned features specific to user management, authentication, or permissions were surfaced in the transcripts. <!-- src: transcript/user-management-permissions#planned-upcoming -->
