import UIKit

//1. What is a closure ? How to execute a closure?

//(1-1)A:closure像是一個沒有名稱的函數Function，也被稱做匿名函數。
//  可以把它想像成就只是個方法，可被宣告成property或parameter。列舉兩個在開發時常見的情境：
//一、當需要呼叫API時，通常會透過一個函數去呼叫它，在這個函數裡總是會使用非同步的方式去呼叫API，此時就得等待非同步的任務完成時，Callback 回來接著再執行繼續下一個任務。
//二、在高階函數裡，總是也會因為要判斷某個值的結果而大量使用。
//三、closure 被宣告成 property，用來當物件和物件之間的溝通的橋樑。

//(1-2)A:
/*
 宣告方式:
 { (參數) -> 回傳型別 in
     處理邏輯...
 }
 一、宣告closure的Property：
 let myClosure: ((String) -> Void)?
 
 二、宣告closure並將其存放在變數中，最後呼叫它：
 */
let myClosure = { (completionHandler: (String) -> Void) in
   completionHandler("Hello Hydee.")
}
myClosure { (capturedValue: String) in
    print(capturedValue) }
//差異說明：                                                                                         (1) myClosure: ((String) -> Void)? 是定義了一個可選的變數，可以在需要的時候賦值（我個人的理解是先宣告變數並放著）。                              (2) let myClosure = { (completionHandler: (String) -> Void) in ... } 是直接定義了一個帶有closure的變數，裡面有個 completionHandler讓使用者丟職業進去，輸入後這個程式就立即執行。

//三、將函式存放在變數中並呼叫它
func test() {
     print("test...")
}
let testFunc = test // 將 func 存放在變數中
testFunc() // Prints "test..."

//四、當成參數來傳遞
func a() -> Void {
     print("a()...")
}
func b(closure: () -> Void) {
     closure() // call 傳入的 func
}
// 將 a func 當成參數傳給 b func
b(closure: a) // Prints "a()..."

//2. Please declare a closure whose input type is Int, output type is Bool. The functionality of this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.

//目前我對closure還不熟，所以我第一反應先寫出我自己會的code來判斷奇數。
func testTheNumber(number: Int) {
    if number % 2 == 0 {
        print("偶數")
    } else {
        print("奇數")
    }}

//用Closure簡化程式
//刪掉keyword func
//刪掉程式名字
//將第一個大括號{移到最前面
//在原本大括號的地方加上keyword in


let number: (Int) -> Bool = {(number: Int) -> Bool in
    return number % 2 != 0
}
print(number(9))

//補充方法：『Shorthand Argument Names』是指類似火星文的參數省略寫法。
//當 closure { } 的程式碼欲存取傳入的參數時， 可透過內建的秘密代號存取，$0 代表第一個參數，$1 代表第二個參數，其它以此類推。當我們透過 $0、$1 存取，原本的參數宣告也就沒有存在的價值，因此我們可以一口氣將 closure 的參數，回傳型別 & in 全部移除。


let numberShort: (Int) -> Bool = { $0 % 2 != 0 }
print(numberShort(9))

//3. Please complete the following function that prints a triangle made of asterisks. 並且回答 printTriangle(layers: 5)
//概念是第幾排就幾個圖案，第一排一個*、第二排兩個**….第三排就三個***。
var content: String = ""
func printTriangle(layers: Int) {
    for i in 1...layers { //執行5次
        for j in 1...i {
            content += "*" //第一排一個、第二排兩個...
        }
        //跳到下一行
        content += "\n"
    }
}
printTriangle(layers: 5) //執行題目五層的三角形
print(content)  //印出字串結果

