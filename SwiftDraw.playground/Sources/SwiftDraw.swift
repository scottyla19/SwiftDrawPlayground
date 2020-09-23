import Foundation
import SpriteKit
import PlaygroundSupport
private let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 640, height: 480))
private let scene = GameScene(fileNamed: "GameScene")!

public func startDrawing(){
    scene.scaleMode = .aspectFill
    sceneView.presentScene(scene)
    PlaygroundPage.current.liveView = sceneView
    scene.flySwift()
}

public func turnRight(){
    scene.turnRight()
}
public func turnLeft(){
    scene.turnLeft()
}
public func rotateByDegrees(_ degrees: Double = -90){
    scene.rotateByDegrees(degrees)
}
public func moveBackward(_ distance:Double = 100.0){
    scene.moveBackward(distance)
}
public func moveForward(_ distance:Double = 100.0){
    scene.moveForward(distance)
}
public func moveTo(x:Double, y:Double){
    scene.moveTo(x:x, y:y)
}
public func setSize(_ multiplier: Double){
    scene.setSize(multiplier)
}
public func getSize() -> Double {
    return scene.getSize()
}
public func getXPos() -> Double{
    return scene.getXPos()
}
public func getYPos() -> Double{
    return scene.getYPos()
}

