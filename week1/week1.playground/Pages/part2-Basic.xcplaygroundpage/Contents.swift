import Foundation
//Part 2: Basic
/*
 1. Please explain the difference between let and var .
 A:let 和 var 的差異說明;
 （一）let：宣告常數(constant)存東⻄，可以是字串string或數字（int or double），以便後續加以使用這邊宣告的資料。
     例如：
    let age = 18
    let height = 160
    let name = "hydee"
 
 （二）var:宣告變數(variable)，變數可以變，所以叫變數。在如果要計算不同值但公式相同的時候就比較方便。
 比如：計算bmi值、計算平均數等等。
 */

//2. In Swift, we usually define a variable through the syntax as below:We use the formula: 2 * radius * pi to calculate the circumference. Now, please define a variable pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.
//A: 在這邊因為pi為小數點3.14，故將x也設為小數點兩位（浮點數），以便計算。
var x = 10.00
let pi = 3.14
var circumference = 2 * x * pi //圓周公式

//3.Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average .
let x1: Int = 5
let x2: Int = 10
let average1 = (x1 + x2)/2

//4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
//4-1*Please solve this problem so that we can put the average in the record system.
let x3: Double = 5.00
let x4: Double = 10.00
let average2 = (x3 + x4)/2

//4-2*Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
//A:Int 指整數、Double指浮點數，兩者計算如下，當x5為整數相除，則無小數點;但值得一題的是，int的狀況下並不會進位，故會有誤差。
let x5 = 10/3  //int
let x6 = 10.0/3.0 //double

//5. Declare two constants that values are 10 and 3 each, then please calculate the remainder and save the result in a constant named remainder.
//A:此題為計算餘數，故用％解題。
let x7 = 10
let x8 = 3
let remainder = 10 % 3

//6. Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation.
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

//7. What is Type Inference in Swift?
//A:在進行寫code的時候，可能沒有宣告變數的類型為何，但Type Inference可以直接依值進行判斷型別。

//8. What is the issue about this piece of code?
/*
 var phoneNumber = 0987654321
 phoneNumber = "Hello world."
 A:本題為型別問題，phoneNumber本應為Int，但第二行"Hello world."為String。
 */

//9.Compound assignment operators are very useful when programming. Please declare a variable with initial value 22000, and use unary plus operator adding 28000 to salary, so it will be 50000 after this process.
var salary = 22000
salary += 28000
print(salary)

//10. You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant. Now please write down the Equality operator in Swift.
//A: 在swift裡面相等式通常用於if配合使用，比如：
let x9 = 10
if x9 == 5 {
    print("TRUE")
} else{
    print("FALSE")
}



