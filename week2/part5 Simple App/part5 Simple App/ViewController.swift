//
//  ViewController.swift
//  part5 Simple App
//
//  Created by Hydee Chen on 2023/9/8.
//

import UIKit

class ViewController: UIViewController {
    //設定文字內容outlet
    @IBOutlet weak var containOutlet: UILabel!
    //設定背景imageView的outlet
    @IBOutlet weak var backgroundOutlet: UIImageView!

    //設定7種顏色的array
    let backgroundColors = [UIColor.red, UIColor.orange, UIColor.gray, UIColor.green, UIColor.blue, UIColor.purple, UIColor.black ]
    
    let textContain = [ "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.", "Contrary to popular belief, Lorem Ipsum is not simply random text.", "Richard McClintock, a Latin professor at Hampden-Sydney College in ", "looked up one of the more obscure Latin words, consectetur", "from a Lorem Ipsum passage, and going through the cities of the word", "This book is a treatise on the theory of ethics, very popular during the.", "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//設定按鈕Action
    @IBAction func changeAction(_ sender: Any) {
        //背景顏色Index隨機
        var colorIndex = Int.random(in: 0...backgroundColors.count)
        //文字內容Index隨機
        var textIndex = Int.random(in: 0...textContain.count)
        
        //設定背景顏色隨機
        backgroundOutlet.backgroundColor =  backgroundColors[colorIndex]
        //設定隨機文字
        containOutlet.text = textContain[textIndex]
    }
    
    
}

