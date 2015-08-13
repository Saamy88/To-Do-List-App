//
//  SecondViewController.swift
//  To Do List
//
//  Created by Samuel Cordova on 8/12/15.
//  Copyright © 2015 Samuel Cordova. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var item: UITextField!
    
    
    @IBAction func addItem(sender: AnyObject) {
        
        toDoList.append(item.text!)
        
        item.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.item.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField : UITextField) -> Bool
    {
        item.resignFirstResponder()
        return true
    }


}

