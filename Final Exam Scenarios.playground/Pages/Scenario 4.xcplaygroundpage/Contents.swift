//: [Next page](@next) / [Previous page](@previous)
//: # Scenario 4
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![velocity-girl-no-grid](4-VelocityGirl.png "Velocity Girl")
 ![velocity-girl-with-grid](4-VelocityGirl-with-grid.png "Velocity Girl")
 
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
let beige = Color(hue: 88, saturation: 6, brightness: 88, alpha: 100)
let yellow = Color(hue: 37, saturation: 94, brightness: 98, alpha: 100)
let pink = Color(hue: 331, saturation: 82, brightness: 93, alpha: 100)
let blue = Color(hue: 239, saturation: 42, brightness: 67, alpha: 50)

// Begin your solution below...

/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView


