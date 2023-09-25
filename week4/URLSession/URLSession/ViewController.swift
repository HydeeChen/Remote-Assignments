//
//  ViewController.swift
//  URLSession
//
//  Created by Hydee Chen on 2023/9/20.
//

import UIKit

class ViewController: UIViewController {
    
    //拉以下文字label outlet
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    //設定一個變數items儲存station資料
    var items: Station?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //在viewDidLoad就開始跑程式
        fetchNames()
        
    }
    
    func fetchNames(){
        // 設定 API 的 URL
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // 發送 API 請求
        URLSession.shared.dataTask(with: request) { data, response, error in
            print("Error API: \(String(describing: error))")
            if let data,
               let content = String(data: data, encoding: .utf8) {
                // 解碼 JSON 格式的資料
                let decoder = JSONDecoder()
                do {
                    let station = try decoder.decode(Station.self, from: data)
                    // 將取得的飲料資料存入 items 陣列
                    self.items = station
                    // 更新資料
                    DispatchQueue.main.async {
                        self.stationIDLabel.text = station.id
                        self.stationNameLabel.text = station.name
                        self.addressLabel.text = station.address
                    }
                    
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }
            // 開始 API 請求
        }.resume()
    }
    
}
