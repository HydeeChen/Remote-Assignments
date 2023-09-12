//
//  ViewController.swift
//  log-in and sign-up
//
//  Created by Hydee Chen on 2023/9/11.
//

import UIKit

class ViewController: UIViewController {
    
    //設定segment Outlet
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    
    //設定帳號、密碼、check的textField outlet
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    //設定check的字體label outlet
    @IBOutlet weak var ckeckLable: UILabel!
    
    //設定segment與check欄位的關係
    @IBAction func segmentSelectAction(_ sender: Any) {
        let selectedIndex = segmentOutlet.selectedSegmentIndex
        if selectedIndex == 0 {
            ckeckLable.textColor = UIColor.gray
            checkTextField.isEnabled = false
        } else if segmentOutlet.selectedSegmentIndex == 1 {
            ckeckLable.textColor = UIColor.black
            checkTextField.isEnabled = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //設定選到segment的字體為白色
        segmentOutlet.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        
        //設置segment邊框顏色為黑色
        segmentOutlet.layer.borderColor = UIColor.black.cgColor
        
        //設置segment邊框寬度
        segmentOutlet.layer.borderWidth = 1.0
        
        //設置初始check顏色為灰色
        ckeckLable.textColor = UIColor.gray
    }
    
    //設置按鈕action
    @IBAction func buttonAction(_ sender: Any) {
        let accoutText = accountTextField!.text
        let passwordText = passwordTextField!.text
        let checkText = checkTextField!.text
        
        if accoutText == "" {
            //設定警告內容
            let alertController = UIAlertController(title: "Error", message: "Account should not be empty.", preferredStyle: .alert)
            let action = UIAlertAction(title: "ok", style: .default) { (action) in
            }
            //顯示警告
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
        } else if passwordText == ""{
            let alertController = UIAlertController(title: "Error", message: "Check Password should not be empty.", preferredStyle: .alert)
            let action = UIAlertAction(title: "ok", style: .default) { (action) in
            }
            //顯示警告
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
        } else if accoutText == "appworks_school" && passwordText == "1234" && checkText == "1234" && segmentOutlet.selectedSegmentIndex == 1 {
            
                let alertController = UIAlertController(title: "帳號建立完成！", message: "😀", preferredStyle: .alert)
                let action = UIAlertAction(title: "ok", style: .default) { (action) in
                }
                //顯示警告
                alertController.addAction(action)
                present(alertController, animated: true, completion: nil)
        } else if accoutText == "appworks_school" && passwordText == "1234" && segmentOutlet.selectedSegmentIndex == 0 {
            let alertController = UIAlertController(title: "登入成功！", message: "😀", preferredStyle: .alert)
            let action = UIAlertAction(title: "ok", style: .default) { (action) in
            }
            //顯示警告
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
        } else {
            if segmentOutlet.selectedSegmentIndex == 0 {
                let alertController = UIAlertController(title: "Error", message: "Login fail", preferredStyle: .alert)
                let action = UIAlertAction(title: "ok", style: .default) { (action) in
                }
                //顯示警告
                alertController.addAction(action)
                present(alertController, animated: true, completion: nil)
            } else if segmentOutlet.selectedSegmentIndex == 1 {
                let alertController = UIAlertController(title: "Error", message: "Signup fail", preferredStyle: .alert)
                let action = UIAlertAction(title: "ok", style: .default) { (action) in
                }
                //顯示警告
                alertController.addAction(action)
                present(alertController, animated: true, completion: nil)
            }
        }
    }
}
