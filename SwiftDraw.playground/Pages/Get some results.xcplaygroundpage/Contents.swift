//: [Previous](@previous)
/*:
# Get some results
### Call functions that return a value and use the returned value
 So far we have called functions that do not take parameters and we have passed arguments in when calling a function so that it can use the values within its function body. These functions do something to our program but never provide us with data in return. Let's fix this and call some functions that will tell us more about our bird.
 
 The `getXPos()`, `getYPos()`, and  `getSize()` functions will return values that we can use. All three functions will return a `Double` and none of these functions take any parameters. Try using the `moveTo(x: Double, y: Double)` function and the `setSize(_ multiplier:Double)`functions to move the bird and scale the bird, respectively. Then use the get functions up above to check the updated values of the coordinates and size of our bird.
 
 * Note: The `moveTo()` function requires the named arguments of `x:` and `y:`. A proper function call to move the bird to the origin would be `moveTo(x:0.0, y:0.0)`.
 
 - Experiment: Call  some of the new functions to move the bird and check its coordinates. Then scale the bird to a differnent size and check it with the `setSize()` function.
 */
 


startDrawing()
//: [Next](@next)
