//  OrderViewController.swift
//  APISampleUI
//  Created by Admin on 25/03/22.

import UIKit

class OrderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    //let title = ["Order","Customer","Date","Amount"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let orderCell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath) as? OrderTableViewCell
        orderCell?.orderCol.text = "123456"
        orderCell?.customerCol.text = "Nishant Vaitage"
        orderCell?.dateCol.text = "Apr 21, 1998"
        orderCell?.amountCol.text = "$ 120.50"
        return orderCell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 185
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
