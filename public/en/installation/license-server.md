---
description: GeoDin® Professional only
---

# Using a license server

## GeoDin® Professional Licencing System (Network Installation)

**Activation Server:**\
GeoDin® provides you with your new or updated licences via our activation server.

**Licence Service:**\
The licence service is installed in a network on a server (Professional licence) as a service and receives the licence requests from GeoDin®.

**Licence Manager:**\
You can administer your GeoDin® licences via the licence manager (web app of the licence service). This includes the activation and update of your GeoDin® licences as well as a display of active users.

<figure><img src=".gitbook/assets/image (13) (1).png" alt=""><figcaption><p>GeoDin® Professional licencing system (Network installation)</p></figcaption></figure>

## General Information & Requirements

To license GeoDin® Professional, you need to install the GeoDin® Licence Service locally on a server.\
The GeoDin® Licence Service is installed as a service without a graphical user interface using the geodinlicenceserverregistration.exe available for download here:&#x20;

[https://download.geodin.com/geodin/geodinlicenceservice/](https://download.geodin.com/geodin/geodinlicenceservice/)

<figure><img src=".gitbook/assets/image (12) (1).png" alt=""><figcaption><p>General information &#x26; requirements</p></figcaption></figure>

## Licence Agreement

Please read the licence agreement carefully and proceed by accepting it.

<figure><img src=".gitbook/assets/image (11) (1) (1).png" alt=""><figcaption><p>Licence agreement</p></figcaption></figure>

## Installation Path

Specify in which folder you want to install the GeoDin® Licence Service.

<figure><img src=".gitbook/assets/image (10) (1) (1).png" alt=""><figcaption><p>Installation path</p></figcaption></figure>

## Settings for the Licence Service

In this step you can configure the TCP port and password settings for the licence service.\
Licence requests from GeoDin® are received by the licence service via port 8085. The licence service establishes a HTTP connection to the licence manager via admin port 8086. With the help of the licence manager, licences can be administered, activated and updated via a web interface. The admin password is used to log in to the licence manager (note: you will only be asked for the password if it differs from the default password). These settings are saved in the file `geodinlicenseserver.ini` in the selected installation path.

<figure><img src=".gitbook/assets/image (9) (1) (1).png" alt=""><figcaption><p>Settings for the licence service</p></figcaption></figure>

## Summary

The installation settings you have made for the GeoDin® Licence Service are summarized for you here.\
Click `<Next>` to continue.

<figure><img src=".gitbook/assets/image (8) (1) (1).png" alt=""><figcaption><p>Installation summary</p></figcaption></figure>

## Install

The installer copies files to the selected installation directories.\
Please wait for it to complete.

<figure><img src=".gitbook/assets/image (7) (1) (1).png" alt=""><figcaption><p>Installation</p></figcaption></figure>

## Set Up Licence

The installation is now complete, but you need to finish setting up by activating your GeoDin® licence via the web interface (licence manager) of the GeoDin® Licence Service.\
Click `<Finish>` to exit the installer and open the GeoDin® Licence Management via the desktop shortcut that was created during the installation.\
If you have changed the password, you will first be asked to log in with this password.

<figure><img src=".gitbook/assets/image (6) (1) (1) (1).png" alt=""><figcaption><p>Installation complete</p></figcaption></figure>

## Enter Your Serial Number

You will now be prompted to enter your licence serial number in the Licence Management browser window.\
Enter the serial number of the licence that you received via email and confirm your entry with the `<Activate Licence>` button.

<figure><img src=".gitbook/assets/image (5) (1) (1) (1).png" alt=""><figcaption><p>Enter your serial number</p></figcaption></figure>

## Licence Summary

Once you have activated your licence you will see it listed in the Licence Management window.\
Under the **Licence Information** menu item, the serial number, the version and the expiry date of your licence are displayed.\
Information on the version and settings of the licence service itself can be viewed under the **Licence Server** menu item.\
The current users of the licence are listed under the **User Status** menu item.

<figure><img src=".gitbook/assets/image (4) (1) (1) (1) (1).png" alt=""><figcaption><p>Licence summary</p></figcaption></figure>

## Client Access to a Network Licence

To connect to a GeoDin® network licence from a client, please follow the GeoDin® Licensing manual or check the following steps.\
When a user starts the GeoDin® client for the first time, the Licence Activation Wizard will open, allowing you to connect to your professional licence.\
Click `<Next>` to continue.

<figure><img src=".gitbook/assets/image (3) (1) (1) (1) (1).png" alt=""><figcaption><p>Client access to a network licence</p></figcaption></figure>

## Access a Professional Licence

Please select ‘My company or university has a licence’.\
Click `<Next>` to continue.

<figure><img src=".gitbook/assets/image (2) (1) (1) (1) (1) (1).png" alt=""><figcaption><p>Access a professional licence</p></figcaption></figure>

## Enter IP Address or Server Name and Port

Please enter the IP address and port configured in step 3 here.\
Please enter the configured IP address or server name and the port. The connection to the GeoDin® licence server will be established automatically.\
If the connection is successful, please click `<Next>` to continue.

<figure><img src=".gitbook/assets/image (1) (1) (1) (1) (1) (1).png" alt=""><figcaption><p>Enter IP address or server name and port</p></figcaption></figure>

## Licence Accepted

In case the licence is valid, you will receive an activation confirmation.\
Click `<Finish>` to start using GeoDin®.

<figure><img src=".gitbook/assets/image (6) (1) (1).png" alt=""><figcaption><p>Licence accepted</p></figcaption></figure>
