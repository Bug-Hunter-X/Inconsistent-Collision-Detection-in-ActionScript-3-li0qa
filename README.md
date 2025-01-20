# ActionScript 3 Collision Detection Bug

This repository demonstrates a common issue in ActionScript 3 collision detection using the `getBounds()` method. The `checkCollision` function, while seemingly straightforward, can produce inaccurate results due to a few subtle factors:

* **Incorrect Parent References:** If `obj1` or `obj2` have been added to a display list that's not their direct parent, the `getBounds()` method might return incorrect results leading to false positives or negatives.
* **Transformations:** Scaling, rotation, or skewing can affect the accuracy of `getBounds()`.  `getBounds()` provides the bounding box in the object's own coordinate space. If the object is transformed, this bounding box might not accurately represent the object's screen space bounds.
* **Complex Display Lists:**  Nested display objects can complicate the calculations further.  The `getBounds()` method's parent parameter is crucial for getting accurate results in such cases. 

The solution demonstrates a more robust method to handle such scenarios. Please see the solution file for improvements.