import Foundation
/*
 1. What are the return types in the following statements?
 func birthday( ) -> String { }
 func payment( ) -> Double { }
 */
//A:func birthday( ) -> String { }意思為return"字串"、func payment( ) -> Double { }意思為return浮點數（即有小數點的數字）

//2. Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give the argument b a default value of 10.
//A:
func multiply(_ a: Int, _ b: Int = 10) {
    let result = a * b
    print(result)
}
multiply(10)

//3. What’s the difference between argument label and parameter name in a function?
/*A: 兩者名稱各為 內部名-parameter name與外部名-argument label，比如以下程式：
func eat(name: String, price: String) { let message = "花了$" + price + "吃" + name
print(message)}
eat(name: "英國頂極菲力牛排", price: "2500")
其它程式語言呼叫 function 時，往往不帶參數名，例如以下例子:
 eat("英國頂極菲力牛排", "2500")
 這一切都是為了增加程式的可讀性。寫成沒有參數名的 eat("英國頂極菲力牛排", "2500")， 我們很難一眼看出 2500 是 2500元還是 2500 克 ? 除非我們特別去研究 function eat 定義的程式碼或註解。相反的，呼叫 function 時包含參數名稱，寫成 eat(name: "英國頂極菲力牛排", price: "2500")，我們一眼就能看出它是 2500 元，因為參數名幫我們理解參數的意義。
 外部名為：eat(name: "英國頂極菲力牛排", price: "2500")中的name和price。即呼叫func()裡面的參數名。
 內部名為：let message = "花了$" + price + "吃" + name 的name和price。即function{}裡面存取的參數名。
 */


//4. Please declare a function named greet with person as an  argument label and name as a  parameter name. This greet function will return a String. For example, if you call the function greet like this: greet(person: "Luke") It will return the string: “Hello, Luke”.
func greet(name: String ) {
    print("Hello, \(name).")
}
greet(name: "Luke")

