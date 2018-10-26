//
//  ViewController.swift
//  UserDefaults
//
//  Created by Hiếu Nguyễn on 8/14/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let typeText = defaults.string(forKey: "Eval") {
            textField.text = typeText
        }
    }
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        if textField.text != nil {
            defaults.set(textField.text, forKey: "Eval")
            print("Store")
            showDialogSave()
        }
    }
    
    
    @IBAction func deleteButton(_ sender: UIButton) {
        defaults.removeObject(forKey: "Eval")
        print("Remove")
        showDialogDelete()
    }
    
    func showDialogSave() {
        // Hộp thoại thông báo
        let ac = UIAlertController(title: "Notifications", message: "Saved",preferredStyle: UIAlertControllerStyle.alert)
        ac.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
        self.present(ac, animated: true, completion: nil)
    }
    
    func showDialogDelete() {
        // Hộp thoại thông báo
        let ac = UIAlertController(title: "Notifications", message: "Deleted",preferredStyle: UIAlertControllerStyle.alert)
        ac.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
        self.present(ac, animated: true, completion: nil)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

