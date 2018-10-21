//
//  ViewController.swift
//  Election
//
//  Created by Dalila Scott on 10/20/18.
//  Copyright © 2018 Dalila Scott. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    var refUser: DatabaseReference!
    
    @IBOutlet weak var NameField: UITextField!
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var PWField: UITextField!
    @IBOutlet weak var ZipCodeField: UITextField!
    
    @IBAction func Register(_ sender: UIButton) {
        
        addUser()
    }
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refUser = Database.database().reference().child("user");
        // Do any additional setup after loading the view, typically from a nib.
    }
    func addUser(){
        let key = refUser.childByAutoId().key
        let user = [ "id": key,
                     "Name": NameField.text! as String,
                     "Email": EmailField.text! as String,
                     "PassW": PWField.text! as String,
                     "ZipCode": ZipCodeField.text! as String,
                                          ]
        refUser.child(key!).setValue(user)
        
    }
  
}
    

