---
description: Install GeoDin on your machine and activate your licence
---

# Install & activate

This page is the fastest path from zero to a running GeoDin installation. For deeper setup scenarios — central network installations, database backends, licence servers, HASP dongles — follow the links into the **Installation & Licensing** reference group.

## Before you start

To install GeoDin you need:

* A supported environment — **Windows 10/11 64-bit**. See [Infrastructure and Environment Setup Guide](../installation/infrastructure-and-environment-setup-guide.md#1-system-requirements) for database-client DLL requirements by backend (MS SQL Server, PostgreSQL, Oracle, or MS Access).
* A valid GeoDin licence serial (purchase or trial — [request from geodin.com](https://geodin.com))
* Administrative privileges on the target machine
* The installer `GeoDin-Setup.exe`, sent to you by email after purchase — or downloaded directly from [resources.geodin.com](https://resources.geodin.com/downloads/geodin/latest/installer/GeoDin-Setup.exe)

## 1. Run the installer

Double-click `GeoDin-Setup.exe` and accept the licence agreement.

When prompted for an installation type, choose **Express installation** if this is your first time using GeoDin — it installs everything you need on a single computer, including demo databases. Experienced users can choose **Custom installation** for network or multi-user scenarios.

For the full walkthrough of each installer step (licence agreement, installation settings, deployment modes, configuration file reference), see [Express Installation](../installation/express-installation.md).

## 2. Activate your licence

When you open GeoDin for the first time, you are prompted to enter your licence serial. See [Activate Your License](../installation/activating-your-license.md) for the complete activation flow, including offline activation and troubleshooting.

## 3. What's next

Once GeoDin is installed and activated:

* Take a quick tour of the workspace → [The GeoDin user interface](../navigating-the-geodin-workspace/user-interface.md)
* Run through a first end-to-end walkthrough → [First steps](first-steps.md)

## Deeper reference

For anything beyond a single-machine install, start in the **Installation & Licensing** group:

* [Custom Installation](../installation/custom-installation.md) — for tailored deployments
* [Infrastructure and Environment Setup Guide](../installation/infrastructure-and-environment-setup-guide.md) — for multi-user / central network installations
* [Database Backend Options](../installation/database-backend-options.md) — for non-default database backends
* [Configuration File Reference](../installation/configuration-file-reference.md) — `GeoDin.ini` parameters
* [Using a License Server](../installation/license-server.md) — for floating-licence deployments
* [Network Licensing (HASP Dongle)](../installation/network-licensing-hasp-dongle.md) — for dongle-based licensing
* [Renew Licence](../installation/renew-licence.md) — when your licence approaches expiry
