function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  // Using local variables here for better performance.
  var obj1Bounds:Rectangle = obj1.getBounds(obj1.parent);
  var obj2Bounds:Rectangle = obj2.getBounds(obj2.parent);

  // Check if the bounding rectangles intersect.
  return obj1Bounds.intersects(obj2Bounds);
}