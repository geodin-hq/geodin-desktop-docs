---
description: Fixes for GeoDin licensing problems - renewed licenses not active in the client, network license access, and module-license limitations.
---

# Licensing problems

Symptom-first fixes for license issues. For the full activation and renewal
procedures, see [Activate your license](../../installation/activating-your-license.md)
and [Renew licence](../../installation/renew-licence.md).

## License was renewed or paid, but GeoDin still shows it expired

<!-- src: macro/licensing-updating#client-refresh -->

A renewal, extension, or post-payment unlock happens on the license server
side - your GeoDin client must still pick up the new entitlement:

* **Individual (single-user) license:** from release 15.3.18.482 the license
  updates automatically at GeoDin startup while the device is online. On older
  releases, update it manually as described in
  [Renew licence](../../installation/renew-licence.md).
* **Professional (network) license:** the refresh is always manual - follow
  [Renew licence](../../installation/renew-licence.md).

Licenses are time-limited (typically one year). Request the renewal in good
time via [support](../get-support.md).

## Network software license is not recognized for some users

<!-- src: help/H0000008692#network-software-license -->

If some users cannot run GeoDin against a shared network license, check three
things: the license file must grant **write permission** to every user, the
`LicProtector313.dll` must be up to date on each client (or on the terminal
server), and the license file must have been activated before first use.

## GIS Extension functions are grayed out

<!-- src: support/gis-extension-lizenz#scope -->

The GIS Extension's base functions (connecting to a GeoDin database, creating
map layers) work without a license. The functions that write GeoDin data
require a GeoDin installation plus a license for the **GIS Extension** module.
If the advanced functions are grayed out, the module license is missing -
see [Get support](../get-support.md) to extend your license.
