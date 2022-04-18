//  CustomerDetailViewController.swift
//  APISampleUI
//  Created by Admin on 23/03/22.

import UIKit
import Alamofire
import ObjectMapper


class CustomerDetailViewController: UIViewController {
    /*-------------------------------------------------
                    MARK: - Outlets
    ---------------------------------------------------*/

    @IBOutlet weak var Salutation1: UILabel!
    @IBOutlet weak var FirstName1: UILabel!
    @IBOutlet weak var LastName1: UILabel!
    @IBOutlet weak var EmailAddress1: UILabel!
    @IBOutlet weak var OrderCount1: UILabel!
    @IBOutlet weak var FirstLogin1: UILabel!
    @IBOutlet weak var Street1: UILabel!
    @IBOutlet weak var City1: UILabel!
    @IBOutlet weak var CreatedAt: UILabel!
    @IBOutlet weak var Zipcode1: UILabel!

    /*-----------------------------------------------------
                    MARK: - Properties
    -------------------------------------------------------*/
    
    var customerDetailsData: CustomerDetailsModel?
    
    
    /*------------------------------------------------------
                MARK: - View Lifecycle Methods
    --------------------------------------------------------*/
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.postCallWithAlamofire()
        
    }
    
    
    /*------------------------------------------------------
                    MARK: - Use Define Methods
    --------------------------------------------------------*/
    
    func postCallWithAlamofire(){
        var header = HTTPHeaders()
        header["Content-Type"] = "application/json"
        header["Accept"] = "application/json"
        
        let dic = ["shop_url":"http://localhost/MIS/development/public/", "customer_id":"9714b2bb9d2d4410a9a6bd31cc9dad74"]
        
        AF.request("http://shopmanger.magnetoinfotech.com/api/v1/get_customer_details", method: .post, parameters: dic, encoding: JSONEncoding.default , headers: header).responseJSON { [self] response in
        switch response.result {
            case let .success(value):
                print("data : \(value)")
                let jsonData = Mapper<GetCustomerDetailsMainModel>().map(JSONObject: value)
                if let jsonData = jsonData {
                    self.customerDetailsData = jsonData.CustomerDetails
                    //dump(self.customerDetailsData)
                    Salutation1.text = self.customerDetailsData?.cus_salutation
                    FirstName1.text = self.customerDetailsData?.cus_first_name
                    LastName1.text = self.customerDetailsData?.cus_last_name
                    EmailAddress1.text = self.customerDetailsData?.cus_email
                    OrderCount1.text = "\(Int((self.customerDetailsData?.cus_order_count)!))"
                    FirstLogin1.text = self.customerDetailsData?.cus_first_login
                    Street1.text = self.customerDetailsData?.cus_street
                    City1.text = self.customerDetailsData?.cus_city
                    CreatedAt.text = self.customerDetailsData?.created_at
                    Zipcode1.text = self.customerDetailsData?.cus_zipcode
                    DispatchQueue.main.async {
                        
                    }
                }
            case .failure(_):
                print("error")
            }
        }
    }
}
