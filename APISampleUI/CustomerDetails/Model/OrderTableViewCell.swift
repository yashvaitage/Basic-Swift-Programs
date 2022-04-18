//
//  OrderTableViewCell.swift
//  APISampleUI
//
//  Created by Admin on 25/03/22.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    @IBOutlet weak var order: UILabel!
    @IBOutlet weak var orderCol: UILabel!
    @IBOutlet weak var customer: UILabel!
    @IBOutlet weak var customerCol: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var dateCol: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var amountCol: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
