---
description: Copying and transferring GeoDin projects - duplicating, exporting, and moving projects between databases.
---

# Copying and Transferring Projects

Projects can be **copied within the same database** (for branching variants or template re-use) or **transferred between databases** (e.g. moving a project from a local Access database to a shared client-server database).

GeoDin offers project-level **Add Objects**, **Copy Project**, and **Publish and Export** methods for these workflows. The exact options depend on whether the destination is in the same database, in a different database of the same connection, or in a different database type entirely.

## Handing over data to state authorities (Landesämter)

When delivering data to a state geological authority (Landesamt), the recommended approach is to use a dedicated transfer database rather than sending your main project database.

**Step-by-step workflow:**

{% stepper %}
{% step %}
#### Step 1: Create the transfer database

Create a dedicated transfer database - this can be either an Access (`.accdb`) file or a PostgreSQL database. Connect it to GeoDin as a separate database connection.

{% hint style="warning" %}
Ensure the transfer database is accessible on the GeoDin server (e.g. a local path such as `C:\Temp\`) and not only on a long UNC network path. Very long UNC paths can cause connection issues with Access files.
{% endhint %}
{% endstep %}

{% step %}
#### Step 2: Create the transfer project

Create a new project inside the transfer database.
{% endstep %}

{% step %}
#### Step 3: Open the production project

In your production database, navigate to the project containing the objects to be transferred.
{% endstep %}

{% step %}
#### Step 4: Add objects to the transfer project

Open the **Add Objects** method on the transfer project and drag-and-drop the selected objects from your production project into the **List of objects** window.
{% endstep %}

{% step %}
#### Step 5: Choose the copy options

In the copy options, choose **Copy** (not **Move**) to keep the objects in the original database. Deselect **with documents** if document files should not be included in the handover.
{% endstep %}

{% step %}
#### Step 6: Confirm the copy

Confirm the copy. The selected objects - with their layer data, well design, and measurement values - are now in the transfer project.
{% endstep %}

{% step %}
#### Step 7: Publish and export the ZIP

Right-click the transfer project and choose **Publish and Export**. GeoDin creates a ZIP archive containing an Access database with the transferred objects. Send this ZIP to the authority.

{% hint style="info" %}
The ZIP produced by **Publish and Export** always contains an Access database internally, regardless of whether your transfer database is PostgreSQL. The recipient imports this Access file into their own system.
{% endhint %}
{% endstep %}
{% endstepper %}

For the comprehensive reference - full syntax, all options, edge cases - see [**Working with Projects**](working-with-projects.md).
