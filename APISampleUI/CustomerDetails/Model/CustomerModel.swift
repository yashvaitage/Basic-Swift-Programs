//  CustomerModel.swift
//  APISampleUI
//  Created by Admin on 23/03/22.

import Foundation
import Alamofire
import ObjectMapper

struct GetCustomerDetailsMainModel: Mappable{
    var status: String?
    var statusCode: Int?
    var message: String?
    var CustomerDetails: CustomerDetailsModel?
    
    init?(map: Map) { }
    
    mutating func mapping(map: Map) {
        status <- map["status"]
        statusCode <- map["statusCode"]
        message <- map["message"]
        CustomerDetails <- map["customerdetails"]
    }
}

struct CustomerDetailsModel: Mappable{
    var cus_number: String?
    var cus_salutation: String?
    var cus_first_name: String?
    var cus_last_name: String?
    var cus_email: String?
    var cus_order_count: Int?
    var cus_first_login: String?
    var cus_street: String?
    var cus_city: String?
    var cus_zipcode: String?
    var created_at: String?
    
    init?(map: Map) { }
    
    mutating func mapping(map: Map) {
        cus_number <- map["cus_number"]
        cus_salutation <- map["cus_salutation"]
        cus_first_name <- map["cus_first_name"]
        cus_last_name <- map["cus_last_name"]
        cus_email <- map["cus_email"]
        cus_order_count <- map["cus_order_count"]
        cus_first_login <- map["cus_first_login"]
        cus_street <- map["cus_street"]
        cus_city <- map["cus_city"]
        cus_zipcode <- map["cus_zipcode"]
        created_at <- map["created_at"]
    }
}

