//: [Previous](@previous)
/*:
 ## Documentation
 Here are the available functions that the Swift bird can perform.
 
 ---
 
  ### `turnRight()`
 Causes the bird to turn 90 degrees clockwise.
 
 ---
 
 ### `turnLeft()`
 Causes the bird to turn 90 degrees counter clockwise.
 
 ---
 
 ### `rotateByDegrees(_ degrees: Double = -90.0)`
 Causes the bird to rotate by the `degrees` value. The `_` allows for an unnamed `Double` argument and it defaults to a `-90.0` (clockwise) degree turn. \
 *Example:*
 - *`rotateByDegrees(45.0)` will rotate the bird 45 degrees counter-clockwise.*
 
 ---
 
 ### `moveBackward(_ distance: Double = 100.0)`
 Causes the bird to move opposite of the direction its head is pointing. The `_` allows for an unnamed `Double` argument and it defaults to a `100.0` pixel distance. \
 *Example: *
 - *`moveBackward(50.0)` will move the bird 50 pixels in reverse.*
 - *`moveBackward()` will move the bird the default 100 pixels backward.*
 
 ---
 
 ### `moveForward(_ distance: Double = 100.0)`
 Causes the bird to move in the direction that its head is pointing. The `_` allows for an unnamed `Double` argument and it defaults to a `100.0` pixel distance. \
 *Examples:*
 - *`moveForward(50.0)` will move the bird 50 pixels forward.*
 - *`moveForward()` will move the bird the default 100 pixels forward.*
 
 ---
 
 ### `moveTo(x:Double, y: Double)`
 Causes the bird to move in the direction that its head is pointing. The `_` allows for an unnamed `Double` argument and it defaults to a `100.0` pixel distance. \
 *Examples:*
 - *`moveForward(50.0)` will move the bird 50 pixels forward.*
 - *`moveForward()` will move the bird the default 100 pixels forward.*
 
 ---
 
 ### `setSize(_ multiplier: Double)`
 Changes the size of the bird to a multiple of the original size. The `_` allows for an unnamed `Double` argument. \
 *Examples:*
 - *`setSize(2.0)` will change the size of the bird to twice its original size.*
 
 ---
 
 ### `getSize()`
 Returns a `Double` value that is the current size of the bird.  \
 *Examples:*
 - *`let currentSize = getSize()` --> `currentSize` will hold a `Double` value.*
 
 
 ---
 
 ### `getXPos()`
 Returns a `Double` value for the  x value of the current coordinates of the bird. \
 *Examples:*
 - *`let x = getXPos()` --> x will hold a `Double` value for the current x coordinate of the bird.*
 
 ---
 
 ### `getYPos()`
 Returns a `Double` value for the  y value of the current coordinates of the bird. \
 *Examples:*
 - *`let y = getXPos()` --> y will hold a `Double` value for the current y coordinate of the bird.*
 
 ---
 */


