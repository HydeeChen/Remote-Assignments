//: [Previous](@previous)

import Foundation

//1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”

class Animal {
    enum Gender {
        case male
        case female
        case undefined
    }
    func eat(){
        print("I eat everything!")
    }
}

//2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.

class Elephant: Animal {
    override func eat() {
        print("Elephants usually eat vegetable.")
    }
}

class Tiger: Animal {
    override func eat() {
        print("Tigers usually eat meat.")
    }
}

class Horse: Animal {
    override func eat() {
        print("Horses usually eat vegetable.")
    }
}

//3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.

class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger())
let tiger = Tiger()
let elephant = Elephant()
let horse = Horse()

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

//4. What is an instance? What does Initilizer do in Class and Struct?
//（4-1）A: 在struct和class中，存取屬性或呼叫方法都必須先產生class和struct的實體（instance）。實體的意思是系統會依據struct或class的定義配置記憶體，裡面存放屬性和方法。同一個class和struct可以放很多instance，每個有獨立的記憶體空間，彼此不會相互干擾。

// (4-2) A:Initilizer於class：確保class的屬性都有合理的初始值。當之後創建新物件時，swift會自動顯示合理的屬性。
//  Initilizer於struct：用於在創建實例的初始屬性。在使用 class（類別）時，使用 init 來：1.設定初始值：在 Swift 中，所有的存儲屬性都必須有值。如果屬性沒有預設值，我們需要在 init 中設定初始值。2.執行初始化任務：有些時候，在建立實例時，我們需要執行某些任務，如打開資料庫連接或者啟動某些計時器等。這些任務可以在 init 中完成。3.提供多種初始化方式：init 可以被重載（overload），這意味著我們可以為同一個類別提供多種不同的初始化方式。每種 init 可以有不同的參數和初始設定。
    
//5. What’s the difference between Struct and Class ?
/*A: Class跟 Struct都藍圖的概念，定義之後可以生成特定結構的物件。
 （1）型別:影片提及，struct 是數值型別（value type），class是參考型別（reference type）。
 (2)繼承：Class一個很方便的特性是，如果想要一個既定的Class增加功能，可以直接以繼承的方式進行後進行改寫。而struct沒有繼承功能。
 (3)可變性（mutable）:class為mutable，struct為不可變（immutable）
 概念：class的宣告就像是創造出一張相片後，將照片的網址提供出來給大家取用，所以儲存的資料其實是照片的網址，而struct則就像是創造出一張相片後，多洗幾張將副本發送出去。
     所以當對照片進行修改時，class就像是從遠端操控照片的檔案，而因為檔案只有那一個，所以一修改大家手上看到的照片都會改變，而 struct因為複本有很多個，改了其中一個複本並不會影響其他的照片*/

//6. What’s the difference between reference type and value type ?
/*A:
 (1)參考型別：每個實例共享資料的單一備份。當這類型別被初始化、被指派給一個變數或常數、或者是被傳送到函式時，就會回傳參考到相同的實例。
 (2)數值型別：每個實例保存資料一份獨立的備份。當這類型別被指派給一個變數或常數、或是被傳送到函式時，就會創建一個新的實例（備份）。
 */

//7. What’s the difference between instance method and type method ?
//實體方法 ( instance method )：先需要生成一個特定型別 ( 類別、結構或列舉 ) 的實體，才能使用這個實體裡的方法; 型別方法 ( type method )：屬於特定型別 ( 類別、結構或列舉 ) 本身的方法，不是屬於實體，而是屬於這個型別 ( 類別、結構或列舉 ) 本身的方法，不用生成實體就可以直接呼叫型別方法。

//8. What does self mean in an instance method and a type method respectively?
//A: 實體方法的self:每一個實體都有一個內建的隱藏屬性 self，來代表這個實體本身。可以在實體方法中使用 self 來代表這個實體。類型方法中的實例：當在一個類型方法（使用 "static" 關鍵字聲明的方法）中使用 "self" 時，它代表當前的類型本身，而不是實例。


