import Foundation

//1. Declare a struct Person with a name property type String and a protocol name PoliceMan . There is only one method arrestCriminals with no argument in the protocol.
struct Person {
    let name: String
}

protocol PoliceMan {
    func arrestCriminals()
}

//2. Make struct Person conform to PoliceMan protocol.
//避免變數重複，故微調變數名稱
struct Person1: PoliceMan {
    let name: String
    func arrestCriminals() {
    }
}

//3. Declare a protocol ToolMan with a method fixComputer that has no argument and return void.
protocol Toolman {
    func fixComputer() -> Void  //會修電腦的工具人？
}

//4. Add a property toolMan to the struct Person with data type ToolMan .
//避免變數重複，故微調變數名稱
struct Person2: PoliceMan {
    let name: String
    var toolman: Toolman
    func arrestCriminals() {
    }
}

//5. Declare a struct named Engineer that conforms to the ToolMan protocol.
struct Engineer: Toolman {
    func fixComputer() -> Void {}
}

//6. Create a Person instance with the name “Steven” and also create the relative data you need to declare this instance.
let steven = Person2(name: "Steven", toolman: Engineer())
