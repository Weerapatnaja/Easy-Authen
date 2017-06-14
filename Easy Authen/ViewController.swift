//
//  ViewController.swift
//  Easy Authen
//
//  Created by Student13 on 6/13/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    Implicit
    var strUser: String?
    var strPass: String?
    let dicUser = ["master": "1234","doramon":"5678","nobita":"1234"]
    
    
    
    
    
    
    
    @IBOutlet weak var UserTextFleid: UITextField!
    
    @IBOutlet weak var PasswordTextFleid: UITextField!
    
    @IBOutlet weak var MessageLable: UILabel!
    
    
    @IBAction func LoginButton(_ sender: Any) {
        
        MessageLable.text = " "
        
    //Get Value From TextField
        strUser = UserTextFleid.text
        strPass = PasswordTextFleid.text
        
        //Show User & Pass on Console
        print("User ==> \(strUser!)")
        print("Pass ==> \(strPass!)")
        
        
        //Find Count String
        let intUser = strUser?.characters.count
        let intPass = strPass?.characters.count
        
        print("intUser ==> \(intUser!)")
        print("intPass ==> \(intPass!)")
        
        //Call checkSpace
        if checkSpace(myString: strUser!) && checkSpace(myString: strPass!) {
            
            //No Space
            print("No Space")
           showMessage(strMessage: " Thank You Login ")
            checkUserAndPass(strUser: strUser!, strPassword: strPass!)
            
            
        }else{
            
            //Have Space
            print("Have Space")
            showMessage(strMessage: "Please Fill Every Blank")
        }
        

    }   //LoginButton
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }   //MainMethod
    
    func checkUserAndPass(strUser: String, strPassword: String) -> Void {
        
        //Check User
        if let testUser = dicUser[strUser] {
            print("testUser ==> \(testUser)")
            if strPass == testUser {
                //Password True
                showMessage(strMessage: "Welcome to SNRU")
            }else{
                //Password False
                showMessage(strMessage: "Plese Try Aganin Password False")
            }
        }else{
            print(" testUser  nil")
            showMessage(strMessage: "No" + strUser + "in my Database")
        }
        
        
    }
    
    
    
    func showMessage(strMessage: String) -> Void {
        MessageLable.text = strMessage
        
    }
    
    
    
    
    func checkSpace(myString:String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0  {
            //Have Space
            result = false
        }
        
        return result
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   //didRecive
    
   

} //Main Class

