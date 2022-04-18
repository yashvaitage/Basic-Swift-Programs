//
//  ShopViewController.swift
//  FlipkartAssignment
//
//  Created by Admin on 29/03/22.
//

import UIKit

class ShopViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    //----------------------OUTLETS--------------------------
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //--------------------Properties-------------------------
    var arrlbl = ["All Categories", "Offer Zone", "Mobiles", "Fashion", "Electronics", "Appliances", "Home", "Beauty", "Toys & Baby", /*"Furniture",*/ "Flight", /*"Insurance", "Sports", "Nutrition & More", "Refurbished", "Gift Cards", "Cars"*/]
    var arrimg = ["All Categories", "gift", "mobiles", "fashion", "electronics", "appliances","home", "beauty", "toys", "flight"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //----------------------------Methods------------------------------------
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlbl.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.collectionImg.image = UIImage(named: arrimg[indexPath.row])
        cell.collectionLbl.text = arrlbl[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 50
    }

}
