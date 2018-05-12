//: [Next page](@next) / [Previous page](@previous)
//: # Scenario 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![dead-kennedys-no-grid](1-DeadKennedys.png "Dead Kennedys")
 ![dead-kennedys-with-grid](1-DeadKennedys-with-grid.png "Dead Kennedys")
 
 For colors, use the color constants provided below.
 
 ### Gentle reminders
 
 Remember to [review the exam rubric here](https://drive.google.com/file/d/1QrVW7NGsNNtXA9ibPEN8LciL4sBalBvS/view). Code readability and efficiency matters.
 
 You are encouraged to collaborate with other students while practicing to reproduce the target image.
 
 Remember that on exam day, you will not have access to any code you have previously written on your computer.
 
 Mr. Gordon can help you understand and complete the five exam prep images:
 
 1. [Blur](https://github.com/lcs-ics2o-2017/Final_Exam_Practice_Task_1)
 2. [Subhumans](https://github.com/lcs-ics2o-2017/Final_Exam_Practice_Task_2)
 3. [Undertones](https://github.com/lcs-ics2o-2017/Final_Exam_Practice_Task_3)
 4. [The Runaways](https://github.com/lcs-ics2o-2017/Final_Exam_Practice_Task_4)
 5. [Pixies](https://github.com/lcs-ics2o-2017/Final_Exam_Practice_Task_5)
 
 You can also refer to [syntax examples and review materials in this playground](https://github.com/lcs-ics2o-2017/exam-review-key-concepts).
 
 Be advised that Mr. Gordon cannot help you program or make a plan for any of the actual exam images.
 
 In short – practice, place key notes on your index card, and you will be fine.
 
 You can do this! 😀
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// Color constants
let orange = Color(hue: 25, saturation: 87, brightness: 96, alpha: 100)

// NOTE:
// Recall that black can be achieved with a hue of
// 0, a saturation of 0, and a brightness of 0.
// From there, you may adjust the alpha as needed.

// Begin your solution below...
//draw backgroud
canvas.fillColor = Color(hue: 25, saturation: 87, brightness: 96, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)
//remove borders
canvas.drawShapesWithBorders = false
//make grid with changing alpha
canvas.translate(byX: 330, byY: 0)
canvas.rotate(by: 45)
for x in stride(from: 0, to: 420, by: 105){
    for y in stride(from: 0, to: 420, by: 105){if x + y > 315{ canvas.fillColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: x/4+y/4+840)
        
    }else{
            canvas.fillColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: 100-x/4-y/4)
        }
        
    
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 105, height: 105)
    }
}

//make the title text
canvas.textColor = Color.black
canvas.drawText(message: "dead kennedys", size: 43, x: 0, y: 420, kerning: 0)
//create y values for the supporting text
let y1 = 400
let y2 = 387
let y3 = 374
//creat x values for the supporting text
let x1 = 10
let x2 = 115
let x3 = 220
//begin drawing supporting text
canvas.textColor = Color.white
canvas.drawText(message: "with arizona's", size: Int(9.5), x: x1, y: y1, kerning: -0.5)
canvas.drawText(message: "the feeders plus", size: Int(9.5), x: x1, y: y2, kerning: -0.5)
canvas.drawText(message: "l.a.'s black flag", size: Int(9.5), x: x1, y: y3, kerning: -0.5)
canvas.drawText(message: "wednesday", size: Int(9.5), x: x2, y: y1, kerning: -0.5)
canvas.drawText(message: "october 10 1979", size: Int(9.5), x: x2, y: y2, kerning: -0.5)
canvas.drawText(message: "admission $2", size: Int(9.5), x: x2, y: y3, kerning: -0.5)
canvas.drawText(message: "mabuhay gardens", size: Int(9.5), x: x3, y: y1, kerning: -0.5)
canvas.drawText(message: "443 broadway", size: Int(9.5), x: x3, y: y2, kerning: -0.5)
canvas.drawText(message: "san francisco, ca", size: Int(9.5), x: x3, y: y3, kerning: -0.5)
/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
