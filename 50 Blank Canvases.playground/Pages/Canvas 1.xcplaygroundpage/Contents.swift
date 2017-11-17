//: [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 300)


 // Draw eliipse
canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


