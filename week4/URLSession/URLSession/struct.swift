//

import Foundation

//struct Station: Codable {
//    let stationID: String
//    let stationName: String
//    let stationAddress: String
//}

//進階題： 改完後系統會回傳錯誤"JSON: keyNotFound(CodingKeys(stringValue: "id", intValue: nil)",因為名稱對應不起來。 我們可以用enum來解決對應的問題。
struct Station {
    let id: String
    let name: String
    let address: String
}
    
extension Station: Codable { //利用 extension 遵從 Codable
        enum CodingKeys: String, CodingKey {
            case id = "stationID"
            case name = "stationName"
            case address = "stationAddress"
        }
}

