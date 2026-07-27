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

## No GeoDin dongle found - LicProtector313.dll not registered (until GeoDin 9.0)

<!-- src: support/dongle-licprotector#fix -->

This is legacy guidance for the dongle-based licensing used until GeoDin 9.0.
It is a different problem from the network license `LicProtector313.dll`
check above - that one covers an up-to-date DLL on a shared network license;
this one covers a missing or unregistered DLL on a dongle installation.

* Check whether `LicProtector313.dll` exists in the `BIN` folder of your
  GeoDin installation.
* If it exists, check the date of `geodin.exe`. If it is older than
  2014-05-08, download the current program build for your GeoDin version from
  the GeoDin download archive.
* If `LicProtector313.dll` is missing, download it, unpack the archive, and
  place the files in the `BIN` folder of your GeoDin installation.
* If the DLL is present and `geodin.exe` is the newer build, run
  `register_admin.cmd` in the `BIN` folder as administrator (right-click >
  **Run as administrator**).
* If that fails, copy both `LicProtector313.dll` and `register_admin.cmd` to
  a local folder on the machine and run `register_admin.cmd` again from
  there.

## GIS Extension functions are grayed out

<!-- src: support/gis-extension-lizenz#scope -->

The GIS Extension's base functions (connecting to a GeoDin database, creating
map layers) work without a license. The functions that write GeoDin data
require a GeoDin installation plus a license for the **GIS Extension** module.
If the advanced functions are grayed out, the module license is missing -
see [Get support](../get-support.md) to extend your license.
