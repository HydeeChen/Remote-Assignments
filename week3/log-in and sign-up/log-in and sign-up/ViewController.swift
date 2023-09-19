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
    
    //設定alert的函數以便之後使用
    func setAlert(titleName: String, messageContent: String, actionTitle: String) {
        //設定警告內容
        let alertController = UIAlertController(title: titleName, message: messageContent, preferredStyle: .alert)
        let action = UIAlertAction(title: actionTitle, style: .default) { (action) in
        }
        //顯示警告
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    
    //設置按鈕action
    @IBAction func buttonAction(_ sender: Any) {
        let accoutText = accountTextField!.text
        let passwordText = passwordTextField!.text
        let checkText = checkTextField!.text
        
        
        //先判斷segment、再判斷使用者輸入資料是否正確
        switch segmentOutlet.selectedSegmentIndex {
        
            //segment 為log in
        case 0:
            //情境：若使用者帳號為空值
            if accoutText == "" {
                
                //使用alert函數
                setAlert(titleName: "Error", messageContent: "Account should not be empty.", actionTitle: "ok")
                
                //情境：若使用者密碼為空值
            } else if passwordText == ""{
                
                //使用alert函數
                setAlert(titleName: "Error", messageContent: "Check Password should not be empty.", actionTitle: "ok")
                
                //情境：若使用者輸入正確
            } else if accoutText == "appworks_school" && passwordText == "1234" {
                
                //使用alert函數
                setAlert(titleName: "登入成功", messageContent: "😀", actionTitle: "ok")
            }
            
            //segment 為sign up
        case 1:
            //情境：若使用者帳號為空值
            if accoutText == "" {
                
                //使用alert函數
                setAlert(titleName: "Error", messageContent: "Account should not be empty.", actionTitle: "ok")
                
                //情境：若使用者密碼為空值
            } else if passwordText == ""{
                
                //使用alert函數
                setAlert(titleName: "Error", messageContent: "Check Password should not be empty.", actionTitle: "ok")
                
                //情境：若使用者密碼與check欄位相同則建立完成
            } else if  passwordText ==  checkText {
                
                //使用alert函數
                setAlert(titleName: "帳號建立完成", messageContent: "😀", actionTitle: "ok")
            }
        default:
            break
        }
    }
}
