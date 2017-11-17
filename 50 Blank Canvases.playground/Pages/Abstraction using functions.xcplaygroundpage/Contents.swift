//: [Previous](@previous) / [Next](@next)
//: # Abstraction Using Functions
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
let canvas = Canvas(width: 300, height: 700)


//// Draw a Triangle

// Set Axis
canvas.translate(byX: 25, byY: 25)

// Axis
canvas.drawAxes()

// Draw side 1
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

// Rotate the Axis by 120 degree
canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 120)

// Draw side 2
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

// Rotate the Axis by 120 degree again
canvas.translate(byX: 80, byY: 0)
canvas.rotate (by: 120)

// Draw side 3
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
canvas.translate(byX: 80, byY: 0)
canvas.rotate (by: 120)


// Set Axis Back
canvas.translate(byX: -25, byY: -25)





//// Draw a Square

// Set Axis
canvas.translate(byX: 25, byY: 125)

// Axis
canvas.drawAxes()

// Draw side 1
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

// Rotate the Axis by 90 degree
canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 90)

// Draw side 2
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

// Rotate the Axis by 90 degree again
canvas.translate(byX: 80, byY: 0)
canvas.rotate (by: 90)

// Draw side 3
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

// Rotate the Axis by 90 degree again
canvas.translate(byX: 80, byY: 0)
canvas.rotate (by: 90)

// Draw side 4
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)

// Rotate the Axis by 90 degree again
canvas.translate(byX: 80, byY: 0)
canvas.rotate (by: 90)

// Set Axis Back
canvas.translate(byX: -25, byY: -125)





//// Draw a Pentagon

// Set Axis
canvas.translate(byX: 25, byY: 225)

// Axis
canvas.drawAxes()

// Loop
for _ in 1...5 {
    // Draw side 1
    canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
    
    // Rotate the Axis by 72 degree
    canvas.translate(byX: 80, byY: 0)
    canvas.rotate(by: 72)
    
}

// Set Axis Back
canvas.translate(byX: -25, byY: -225)



//// Draw with a function

//  Write the functon
func drawPolygon(withSides n : Int, sideLength l : Int, startX x : Int, startY y : Int) {
    
    // Set axis
    canvas.translate(byX: x, byY: y)
    
    // Loop
    for _ in 1...n {
        // Draw side 1
        canvas.drawLine(fromX: 0, fromY: 0, toX: l, toY: 0)
        
        // Rotate the Axis by 180 - (n-2) 180/ n degree
        canvas.translate(byX: l, byY: 0)
        canvas.rotate(by: Degrees (180 - (n - 2) * 180 / n))
        
    }
    
    
}

// Test the function
drawPolygon(withSides: 6, sideLength: 80, startX: 125, startY: 375)

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

