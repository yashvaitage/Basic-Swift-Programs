//
//  ViewController.swift
//  Delegation in iOS
//
//  Created by Admin on 03/03/22.
//

import UIKit

class ViewController: UIViewController, SendingMessageDelegate {
    

    
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var receiveMsgLbl: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "greenVcId", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let greenInstance = segue.destination as! GreenViewController
        greenInstance.delegate = self
    }
    
    func send(message: String) {
        receiveMsgLbl.text = message
    }
}

