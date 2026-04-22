---
description: GeoDin® Professional only
---

# Using a License Server

## GeoDin® Professional Licencing System (Network Installation)

**Activation Server:**\
GeoDin® provides you with your new or updated licences via our activation server.

**Licence Service:**\
The licence service is installed in a network on a server (Professional licence) as a service and receives the licence requests from GeoDin®.

**Licence Manager:**\
You can administer your GeoDin® licences via the licence manager (web app of the licence service). This includes the activation and update of your GeoDin® licences as well as a display of active users.

## General Information & Requirements

To license GeoDin® Professional, you need to install the GeoDin® Licence Service locally on a server.\
The GeoDin® Licence Service is installed as a service without a graphical user interface using the geodinlicenceserverregistration.exe available for download here:

[https://download.geodin.com/geodin/geodinlicenceservice/](https://download.geodin.com/geodin/geodinlicenceservice/)

## Licence Agreement

Please read the licence agreement carefully and proceed by accepting it.

## Installation Path

Specify in which folder you want to install the GeoDin® Licence Service.

## Settings for the Licence Service

In this step you can configure the TCP port and password settings for the licence service.\
Licence requests from GeoDin® are received by the licence service via port 8085. The licence service establishes a HTTP connection to the licence manager via admin port 8086. With the help of the licence manager, licences can be administered, activated and updated via a web interface. The admin password is used to log in to the licence manager (note: you will only be asked for the password if it differs from the default password). These settings are saved in the file `geodinlicenseserver.ini` in the selected installation path.

## Summary

The installation settings you have made for the GeoDin® Licence Service are summarized for you here.\
Click `<Next>` to continue.

## Install

The installer copies files to the selected installation directories.\
Please wait for it to complete.

## Set Up Licence

The installation is now complete, but you need to finish setting up by activating your GeoDin® licence via the web interface (licence manager) of the GeoDin® Licence Service.\
Click `<Finish>` to exit the installer and open the GeoDin® Licence Management via the desktop shortcut that was created during the installation.\
If you have changed the password, you will first be asked to log in with this password.

## Enter Your Serial Number

You will now be prompted to enter your licence serial number in the Licence Management browser window.\
Enter the serial number of the licence that you received via email and confirm your entry with the `<Activate Licence>` button.

## Licence Summary

Once you have activated your licence you will see it listed in the Licence Management window.\
Under the **Licence Information** menu item, the serial number, the version and the expiry date of your licence are displayed.\
Information on the version and settings of the licence service itself can be viewed under the **Licence Server** menu item.\
The current users of the licence are listed under the **User Status** menu item.

## Client Access to a Network Licence

To connect to a GeoDin® network licence from a client, please follow the GeoDin® Licensing manual or check the following steps.\
When a user starts the GeoDin® client for the first time, the Licence Activation Wizard will open, allowing you to connect to your professional licence.\
Click `<Next>` to continue.

## Access a Professional Licence

Please select ‘My company or university has a licence’.\
Click `<Next>` to continue.

## Enter IP Address or Server Name and Port

Please enter the IP address and port configured in step 3 here.\
Please enter the configured IP address or server name and the port. The connection to the GeoDin® licence server will be established automatically.\
If the connection is successful, please click `<Next>` to continue.

## Licence Accepted

In case the licence is valid, you will receive an activation confirmation.\
Click `<Finish>` to start using GeoDin®.
