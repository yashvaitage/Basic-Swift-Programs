//
//  NotificationCentreViewController.swift
//  Notification Centre
//
//  Created by Admin on 02/03/22.
//

import UIKit

protocol SomeProtocol{
    func addToCounter()
}

class NotificationCentreViewController: UIViewController {

    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var addCounterBtn: UIButton!
    
    let cartInfo = ["userInfo": ["number": 1, "userNsme": "Nishant"]]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    
    @IBAction func nextBtnPressed(_ sender: Any)
    {
        self.performSegue(withIdentifier: "nextPageSegue", sender: "")
    }
    
    @IBAction func counterBtnPressed(_ sender: Any) {
        print("Hello Nishant")
        NotificationCenter.default.post(name: NSNotification.Name("com.magneto.cart.number"), object: nil, userInfo: cartInfo)
    }
}
