---
description: Symptom-first troubleshooting for GeoDin - find your error message or problem area, get the cause and the fix, with diagnostics for everything else.
---

# Troubleshooting

Find your symptom below. Each problem area has its own page with the error
messages, causes, and fixes; quick answers to frequent stumbling blocks are
directly on this page.

## Find your problem area

| Your problem involves... | Go to |
|---|---|
| Opening a database, lock errors, moved files, sharing data | [Database connection problems](troubleshooting/database-connections.md) |
| Failed imports, SEP/KSYS errors, AGS into SQL | [Import and data exchange problems](troubleshooting/import-and-data-exchange.md) |
| "Object type not installed", dictionary errors | [Object type and dictionary problems](troubleshooting/object-types-and-dictionaries.md) |
| Licenses not active, network licenses, gray modules | [Licensing problems](troubleshooting/licensing.md) |
| Install, start, or update failures | [Installation and update problems](troubleshooting/installation-and-updates.md) |
| Layouts, graphic elements, depth scales | [Layout and graphic problems](troubleshooting/layouts-and-graphics.md) |
| Network dongle (GeoDin 7-9.0) | [Configure network dongle access](troubleshooting/configure-network-dongle-access-geodin-7-9.0.md) |
| "Update incomplete" on every start (up to 10.1) | [Update incomplete message](troubleshooting/update-incomplete-message-until-geodin-10.1.md) |

## Quick answers

### A method button does not react to a click

<!-- src: transcript/method-double-click#fix -->

Methods in the method list start on a **double-click**, not a single click.

### Umlauts (Ä, Ö, Ü, ß) are garbled in a map layer

<!-- src: support/kartenlayer-codepage#fix -->

The layer's codepage is wrong. In the layer properties under **General**, set
**From codepage** to `65001` (UTF-8).

### A new map asks to install object types

<!-- src: support/karte-erstellen#object-types -->

Maps are stored via two document object types. Online, the Map Manager
installs them automatically when you confirm the prompt. Offline, install the
object types **(DOC) GeODin Karte** and **(DOC) GeODin Thema** before creating
your first map.

### Users keep changing shared template maps

<!-- src: support/maps-schuetzen#fix -->

On client/server databases you can restrict users to SELECT-only on the
document tables - but this affects all documents, since every document's
content lives in the table `GEODIN_ADC_ADCDATA`. The lighter alternative for
any database type: save the template map as an external `.GGM` file via
**Save document as** and re-insert it if the shared copy is ever changed.

### Below-detection-limit values need a minus sign in reports

<!-- src: support/bestimmungsgrenze#report -->

Values under the detection limit display with `<` by default. For reports that
need them as negative values, either enable **Allow negative values** on the
parameter in the Datatype Manager, or use a conditional macro in the report
(example for parameter WAS:AL):

```
$%COND[#WAS:AL#like'<%']'-'$%CALC[$WAS:AL$*1@.2]
```

### Coordinates change when the coordinate system differs

<!-- src: transcript/silent-coordinate-transform#behavior -->

When an object's coordinate system differs from the map or export target,
GeoDin converts the coordinates automatically without prompting. If exact
agreement with survey coordinates matters, keep source data and outputs in the
same EPSG-coded system, and see
[Coordinate systems and EPSG](../maps/coordinate-systems-and-epsg.md) for how
GeoDin resolves systems.

***

## Diagnostics: SQL protocol

The **SQL protocol** records all database operations performed by GeoDin for later analysis. The protocol captures the actions executed, their execution time, and whether they succeeded. It is especially useful when debugging newly developed complex SQL queries.

### Starting and stopping the protocol

Start the protocol from the **Information** menu with **Start SQL protocol**. All SQL commands executed afterwards are recorded. To stop the protocol, select the same menu item - it is now labelled ![Stop SQL protocol](../.gitbook/assets/icons/stop-sql-protocol.png) **Stop SQL protocol**. The recorded protocol is then displayed in a separate window and can be saved as a text file.

You can also toggle the protocol with the keyboard shortcut **Alt+S**, without using the menu.

If no entry here solves your problem, capture the SQL protocol around the
failing action and send it with your request to [Get support](get-support.md).
