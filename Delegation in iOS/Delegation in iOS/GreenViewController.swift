//
//  GreenViewController.swift
//  Delegation in iOS
//
//  Created by Admin on 03/03/22.
//

import UIKit

class GreenViewController: UIViewController {
  
    
    @IBOutlet weak var sendMsgTxtFld: UITextField!
    var delegate: SendingMessageDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        let textToSend = sendMsgTxtFld.text!
        delegate.send(message: "textToSend")
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
