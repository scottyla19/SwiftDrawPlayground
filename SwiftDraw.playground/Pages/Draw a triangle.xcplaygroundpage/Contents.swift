//: [Previous](@previous)
/*: # Draw a triangle
### Passing arguments to functions

So far you have learned to call functions such as `turnLeft()`, `turnRight()`, and `moveForward()`. The SwiftDraw bird is capable of so much more. 

What if you wanted to rotate at an angle other thatn 90 degrees or move forward at a distance other than 100 pixels? Then you need to be more precise and supply arguments for some of the function calls. Looking at the [Documentation Page](Documentation), you can see the header for our `moveForward` and `rotateByDegrees` functions. Some of the most important points are listed below.
 
  `moveForward(_ distance: Double = 100.0)`
 - The `_` before the `distance` named parameter allows us to use an unnamed argument when we call the function. For example, `moveForward(50.0)` will move the bird 50.0 pixels forward. Thanks to the `_`, we don't have to supply the argument name when calling the funciton.
 - The `moveForward` function uses a `Double` parameter by the name `distance` within its function body. This distance parameter determines how far the bird will travel.
 - The default value when we call the function is `100.0`. Thanks to the `= 100.0` we can call the function without any arguments (`moveForward()`) and it will move the bird forward the default distance of 100.0 pixels.
 
- callout(Exercise): Using any of the functions we have learned so far, create an algorithm to draw a triangle on the screen. Make sure to add your calls above the `startDrawing()` function.

---

*/


startDrawing()
//: [Next](@next)
