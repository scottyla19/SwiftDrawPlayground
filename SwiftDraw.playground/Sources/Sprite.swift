import Foundation
import SpriteKit
import PlaygroundSupport

public class GameScene: SKScene {
    public var playerSprite: SKSpriteNode? = nil
    var spritePos = CGPoint()
    var prevPos = CGPoint(x:0.0, y:0.0)
    var rotations = [Double]()
    var xPositions = [0.0]
    var yPositions = [0.0]
    var seq = [SKAction]()
    var myScale = 1.0
    let timeToWait = 0.75
    var isPenOn = true
    

    public override func didMove(to view: SKView) {
        playerSprite = self.childNode(withName: "swiftSprite") as? SKSpriteNode
        playerSprite!.position = CGPoint(x:0.0, y:0.0)
//        setupDisplay()
    }
    public override func update(_ currentTime: TimeInterval) {
        playerSprite!.setScale(CGFloat(myScale))
    }
    public override func didEvaluateActions(){
        spritePos = playerSprite!.position
        drawSwiftPath(prevPosition:prevPos, currentPos: spritePos)
        prevPos = playerSprite!.position
        
    }
    
    public func turnRight(){
        rotations.append(-90.0)
        seq.append(SKAction.rotate(byAngle:CGFloat(convertToRadians(degrees: -90.0)), duration: timeToWait))
    }
    
    public func turnLeft(){
        rotations.append(90.0)
        seq.append(SKAction.rotate(byAngle:CGFloat(convertToRadians(degrees: 90.0)), duration: timeToWait))
    }
    
    public func rotateByDegrees(_ degrees: Double = -90){
        rotations.append(degrees)
        seq.append(SKAction.rotate(byAngle:CGFloat(convertToRadians(degrees: degrees)), duration: timeToWait))
    }
    
    public func moveForward(_ distance:Double = 100.0){
        let currentRot = rotations.reduce(0,+)
        let vec = CGVector(dx: distance * cos(convertToRadians(degrees: currentRot)),
                           dy: distance * sin(convertToRadians(degrees: currentRot)))
        xPositions.append(xPositions.last! + Double(vec.dx))
        yPositions.append(yPositions.last! + Double(vec.dy))
        let penOn = SKAction.run  {self.turnPenOn()}
        let move = SKAction.move(by: vec, duration: timeToWait)
        let moveSeq = [penOn, move]
        seq.append(contentsOf: moveSeq)
    }
    
    public func moveBackward(_ distance:Double = 100.0){
        let currentRot = rotations.reduce(0,+)
        let vec = CGVector(dx: -distance * cos(convertToRadians(degrees: currentRot)),
                           dy: -distance * sin(convertToRadians(degrees: currentRot)))
        xPositions.append(xPositions.last! + Double(vec.dx))
        yPositions.append(yPositions.last! + Double(vec.dy))
        let penOn = SKAction.run  {self.turnPenOn()}
        let move = SKAction.move(by: vec, duration: timeToWait)
        let moveSeq = [penOn, move]
        seq.append(contentsOf: moveSeq)    }
    
    public func moveTo(x: Double, y: Double){
        let pt = CGPoint(x:x, y:y)
        isPenOn = false
        let penOff = SKAction.run  {self.turnPenOff()}
        let move = SKAction.move(to:pt,duration: 0.0)
        let moveSeq = [penOff, move]
        xPositions.append(x)
        yPositions.append(y)
        seq.append(contentsOf: moveSeq)
    }
    
    public func flySwift(){
        seq.insert(SKAction.wait(forDuration: timeToWait), at: 0)
        playerSprite!.run(SKAction.sequence(seq))
    }
    
    public func getSize() -> Double{
        return myScale
    }
    public func setSize(_ multiplier: Double){
        myScale = multiplier
    }

    public func getXPos() -> Double{
        return xPositions.last!
    }
    public func getYPos() -> Double{
        return yPositions.last!
    }
    
    func drawSwiftPath(prevPosition: CGPoint, currentPos: CGPoint ){
        if isPenOn{
            let yourline = SKShapeNode()
            let pathToDraw = CGMutablePath()
            pathToDraw.move(to: prevPos)
            pathToDraw.addLine(to: currentPos)
            yourline.path = pathToDraw
            yourline.strokeColor = SKColor.red
            self.addChild(yourline)
        }
        
    }
    
    
    func turnPenOff(){
        self.isPenOn = false
    }
    
    func turnPenOn(){
        self.isPenOn = true
    }
    
    func convertToRadians(degrees: Double) -> Double{
           return Double.pi*degrees/180.0
       }
//    func setupDisplay(){
//        let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 640, height: 480))
//        let scene = GameScene(fileNamed: "GameScene")!
//        // Set the scale mode to scale to fit the window
//        scene.scaleMode = .aspectFill
//
//        // Present the scene
//        sceneView.presentScene(scene)
//        PlaygroundSupport.PlaygroundPage.current.liveView = sceneView
//    }
}
