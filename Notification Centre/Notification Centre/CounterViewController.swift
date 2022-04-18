//
//  CounterViewController.swift
//  Notification Centre
//
//  Created by Admin on 02/03/22.
//

import UIKit

class CounterViewController: UIViewController {
    var cartItems = 0
    @IBOutlet weak var counterLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector:#selector(updateName(_ :)), name: NSNotification.Name ("com.magneto.cart.number"), object: nil)
    }
    
    @objc func updateName(_ notification: Notification){
        print(notification.userInfo?["userInfo"] as? [String:Any] ?? [:])
        let cartInfo = notification.userInfo?["userInfo"] as? [String:Any] ?? [:]
        cartItems += cartInfo["number"] as! Int
        print(cartItems)
        counterLbl.text = String(cartItems)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    


}
