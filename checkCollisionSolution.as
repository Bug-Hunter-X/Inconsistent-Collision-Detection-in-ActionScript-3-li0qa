function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  // Account for transformations by using globalToLocal or localToGlobal
  var obj1Bounds:Rectangle = obj1.getBounds(obj1.stage);
  var obj2Bounds:Rectangle = obj2.getBounds(obj2.stage);

  // Convert coordinates to a common parent (in this case, the stage). 
  var obj1Point:Point = obj1.localToGlobal(new Point(obj1Bounds.x, obj1Bounds.y));
  var obj2Point:Point = obj2.localToGlobal(new Point(obj2Bounds.x, obj2Bounds.y));

  // Use the global coordinates of the bounding rectangles
  var globalObj1Bounds:Rectangle = new Rectangle(obj1Point.x, obj1Point.y, obj1Bounds.width, obj1Bounds.height);
  var globalObj2Bounds:Rectangle = new Rectangle(obj2Point.x, obj2Point.y, obj2Bounds.width, obj2Bounds.height);

  return globalObj1Bounds.intersects(globalObj2Bounds);
}
// Consider using hitTestObject for pixel-perfect collision detection when needed.