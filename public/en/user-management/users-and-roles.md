---
description: GeoDin's built-in user management system, licensing, single-ownership model, and trial access
---

# Users and Roles

GeoDin includes an optional built-in user management system, runs on Windows-login authentication, and uses two licensing systems (a hardware-bound seat model for Desktop and a Keygen-based key model for Onsite). This page covers user accounts, the single-ownership model that governs Onsite forms, licensing, and team-scope behaviour for custom content.

For specific access-control topics, see also:

- [Groups and Permissions](groups-and-permissions.md)
- [Database Visibility](database-visibility.md)
- [Multi-User Collaboration](multi-user-collaboration.md)
- [Data Privacy and Ownership](data-privacy-and-ownership.md)

## Built-in user management system

GeoDin Desktop includes a built-in user management system. It is **optional** - most customers do not turn it on. Where it is used, it is typically by organisations with strict access requirements (e.g. public authorities running ~20 users on the same database).

Users are created with a name and a login credential tied to the Windows login used at machine startup. There is no separate password store and no SSO/MFA/directory-service integration documented in the product.

GeoDin Onsite has **no user accounts and no authentication** - it is a single-user desktop/tablet application. User name and computer name are captured passively in each form's `history` section for audit purposes.

## Authentication and environment constraints

- Authentication piggybacks on the Windows login.
- The installation scope (`All users` vs. `Local user`) is the only user-scoping decision for Onsite - it controls whether the executable is available to all Windows accounts or only the installing user.
- GeoDin can run in a locked-down corporate environment with no internet access. Runtime telemetry and file transfer from GeoDin staff into the customer network are blocked in such setups.

## Single-ownership model (Onsite "one piece of paper")

Onsite treats every form as **one piece of paper**: at any moment exactly one location owns the live copy. This model drives the Publish / Retrieve / Revoke workflow and prevents two field users from editing the same form in parallel.

### Two shelves on the shared delivery folder

- **Incomplete** - any user with access can retrieve a form back from this shelf.
- **Final / Complete** - once a form lands here, the original user cannot retrieve it. The form belongs to office staff.

### Publish behaviour

- Publishing as **Complete** requires full form validation to pass; the deliverable bundle (`.GDOF`, PDF, GeoDinML, AGS) is generated.
- Publishing as **Incomplete** is allowed with validation errors; only the `.GDOF` is shelved (no PDF or GeoDinML yet).
- On publish, the `.GDOF` is moved to the shared delivery folder and the original file leaves the local `projects` folder - `Load local` will no longer find it. A local **photocopy** is kept on the device for disaster recovery.

### Retrieve and Revoke

- **Retrieve** is the reverse of Publish: it reads a form back from the shared delivery folder onto the tablet and transfers ownership to the local user. After Retrieve, a photocopy remains on the shelf marked as not-owned.
- **Revoke** reactivates a published-as-Complete form from the local photocopy. Use it when a publish was a mistake. Revoke is dangerous because it can overwrite data already processed downstream.

The intended workflow is fire-and-forget: field users publish from the tablet, the form disappears locally, and office staff pick it up - a clean separation between field and office work.

***

## GeoDin Desktop licensing

Two license types exist (Standard and Professional). With a Professional license, the **number of seats** determines how many users can run GeoDin simultaneously - for example, 3 seats means up to 3 concurrent users out of a 15-person team.

- Any machine on the network can act as the license server. There is no separate license server product.
- Licenses are **hardware-bound**. Hardware changes (new laptop, Windows 10 -> 11 upgrade) require reactivation by GeoDin support.
- An **educational package** is available for colleges and students.
- Civil 3D plugin (GeoDin Ground) users do not need a GeoDin license. Only people who manage and curate the database need paid licenses.
- **GeoDin Onsite is included with a GeoDin Desktop subscription** at no additional cost.
- For contractors, Onsite licenses can be bundled; bundle pricing is custom/negotiated.

For pricing details, see [geodin.com/pricing](https://geodin.com/pricing).

## GeoDin Onsite licensing (Keygen + hardware binding)

Onsite uses a separate seat-based licensing system delivered via license key.

- **Key format:** 30-character uppercase alphanumeric. A single key can cover multiple seats (multi-seat license).
- **Backend:** Keygen (keygen.sh). Support staff manage licenses via the Keygen dashboard - suspend, renew, revoke, view customer info.
- **Shopify integration:** purchases trigger license automation; customer IDs shown in Keygen are Shopify customer IDs.
- **Hardware binding:** each activation is bound to a machine via a hardware fingerprint that cannot be spoofed. If the disk or memory is swapped, the license becomes unlinked and an admin must remove the old machine link in Keygen so the license can re-activate.
- **Offline mode:** Onsite normally validates its license on startup. With no internet (e.g. tablet in the field), it falls back to offline mode for up to 30 days; after 30 days the license must re-validate online.
- **License Manager UI** displays: key, license name (customer name), expiry date, maximum GeoDin version, offline grace period, multi-seat count, machine name, and hardware ID. Available in English and German.
- **Anti-abuse:** only existing GeoDin customers can self-serve Onsite; unknown emails trigger manual sales approval.
- **Onboarding:** post-purchase the customer receives an installer URL and a license key. First launch runs the License Wizard, which binds the license to the machine hardware ID.

## Dictionaries, custom content, and team scope

Custom dictionaries, custom tables, and configuration settings are stored in the user's `syslib` folder.

- **Dictionaries** are shared across all users who share the same GeoDin library installation.
- **Custom test tables** can be local to a single user, or added to the general library and shared across the distribution.
- When a user **edits a dictionary**, GeoDin records a timestamp and the dictionary becomes "frozen" - GeoDin distribution updates will no longer overwrite it, preserving the user's changes.
- When sending data to an **external client** who does not have the same custom dictionaries, the sender must also ship the relevant `.GSD` dictionary files (or the full `syslib` folder).
- **Risk profile:** low-risk dictionaries (client list, lab names) can be edited freely. Higher-risk dictionaries (soil types, fill patterns) should be edited carefully because losing future distribution updates can matter.
- **Custom data types and layouts** also live in the `syslib` folder and must be manually copied between installations when a network install is not used.

## Trial and evaluation access

GeoDin offers a **free 30-day trial** with no user limit and extensions available on request. There is no hard stop on the trial. The trial-first approach is actively recommended - no customer should buy GeoDin without trialling it first.
