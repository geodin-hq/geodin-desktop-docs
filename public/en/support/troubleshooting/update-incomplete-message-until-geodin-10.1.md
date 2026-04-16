# ‘Update Incomplete’ Message

If the **‘Update incomplete’** window with the **‘Update GeoDin’** dialogue box appears automatically when starting GeoDin, this is usually caused by a faulty update attempt.

#### **Cause**

* The file `builds.gol` was created in the top level of your GeoDin installation during the update process and was not removed afterward.

#### **Solution**

* Delete the `builds.gol` file from the top level of your GeoDin installation directory.
* This will prevent the **‘Update incomplete’** window from opening automatically in the future.
