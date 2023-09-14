import UIKit

//1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.

//(1-1)Please declare an enum named Gasoline to model gasoline.
/* 避免變數重複，故先備註。
enum Gasoline {
    case gasolin92
    case gasolin95
    case gasolin98
    case diesel
}
 */
//(1-2) Every kind of gasoline has its price. Please declare a named price and a method named getPrice separately in Gasoline enum that both will return different prices depending on different gasoline.

enum Gasoline {
    case oil92
    case oil95
    case oil98
    case diesel
    
    var price: Int {
        switch self {
        case .oil92: return 92
        case .oil95: return 95
        case .oil98: return 98
        case .diesel: return 99
        }
    }
    func getPrice() -> Int {
        switch self {
        case .oil92: return 92 //假設92汽油為92元
        case .oil95: return 95 //假設95汽油為95元
        case .oil98: return 98 //假設98汽油為98元
        case .diesel: return 99 //假設柴油為99元
        }
    }
}

var oilName98 = Gasoline.oil98//測試結果是否正確
let price98 = oilName98.getPrice()
print("\(oilName98)價格為\(price98)元")

//(1-3)Please establish raw values for Gasoline . The data type of raw value should be String. For example, Gasoline.oil92.rawValue should be “92”.

//為避免名稱重複，微調變數名稱
enum GasolineType: Int {
    case oil92 = 92
    case oil95 = 96
    case oil98 = 98
    case diesel = 99
}

let oilValue = GasolineType.oil98
print(oilValue.rawValue)

//(1-4)Please explain what enum associated value is and how it works.
//列舉中的每個成員值，視需求可以在需要的時候，一併儲存自定義的一個或以上其他型別的相關值(associated  value)。使用方法為在成員值後面加上小括號()，並將相關值型別放在小括號內(就像使用元組tuple一樣)。往後在程式中將該列舉成員值指派給變數或常數時，這個(或這些)相關值才會被設置，且可以是不同的。
enum Barcode {
case UPCA(Int, Int, Int, Int)
case QRCode(String)
}

//2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the value of a will be nil or Int . You should have learned how to deal with Optional.
//(2-1) People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
class Pet {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
}
//(2-2)Please create a People instance. Use guard let to unwrap the pet property and print its name.

let hydeePet = Pet(name: "HydeeCat") // 就叫海蒂貓吧
let hydee = People()

func showName(name: String?) {
    guard let name = name else {return}
    print("my cat is \(name)")
}
showName(name: hydeePet.name)

//(2-3)Please create another People instance. Use if let to unwrap the pet property and print its name.
func catName(name: String?) {
    if let meowName = name {
        print("my cat is \(meowName)")
    }
}
catName(name: hydeePet.name)
