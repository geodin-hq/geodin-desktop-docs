---
description: SEP 3 is a German-market state-authority data exchange standard - the import procedure and troubleshooting for it live on the German support portal.
---

# SEP 3 Exchange Database

SEP 3 is the German state-authority (Landesamt) standard for geological borehole data exchange. It applies when a Landesamt delivers borehole data as a plain SEP 3 Access database - a file containing only the SEP 3 data tables, without the GeoDin system wrapper tables a normal project database requires.

GeoDin cannot open such a file directly as a project database. A special **exchange database** (German: *Austauschdatenbank*) bridges the two: it reads the SEP 3 table structure from the authority's file and exposes the objects so they can be copied into your main GeoDin database.

SEP 3 - like SEP 1, its legacy predecessor - is German-market-specific: the object types, table structures, and delivery format are defined by German state authorities and are not used outside that market.

For the exchange-database download, connection, and step-by-step import procedure, see
[Import externer SEP3-Daten mit der SEP3-Austausch-Datenbank](https://support.geodin.com/hc/de/articles/115003373465-Import-externer-SEP3-Daten-mit-der-SEP3-Austausch-Datenbank)
on the German support portal, which is the canonical home for SEP content. For SEP import problems, see
[Problems with SEP data](../../support/troubleshooting.md#problems-with-sep-data-german-state-authority-deliveries).

For general (non-SEP) import how-tos, see [Import](../import.md) and
[Cross-database object copying](cross-database-object-copying.md).

<!-- src: support/sep3-austausch-link#pointer -->
