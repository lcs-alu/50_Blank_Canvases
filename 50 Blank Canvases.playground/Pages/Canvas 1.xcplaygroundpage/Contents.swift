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
let canvas = Canvas(width: 500, height: 500)

canvas.defaultBorderWidth = 7

for x in stride (from: 25, through: 475, by: 50) {
    for y in stride(from: 475, through: 25, by: -50) {
        // white
        canvas.fillColor = Color.white
        canvas.drawEllipse(centreX: x, centreY: y, width: 25, height: 25)
        
        // black
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x + 15, centreY: y, width: 25, height: 25)
    }
    
}







/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */




/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

