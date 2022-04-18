//
//  ViewController.swift
//  CollectonViews
//
//  Created by Admin on 07/04/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    //=====================Outlets===================
    @IBOutlet weak var vegetableCollectionView: UICollectionView!
    @IBOutlet weak var bikeCollectionView: UICollectionView!
    
    //=====================Properties===================
    var vegetableArr : Array<String> = ["Tomato", "Carrot", "Onion","Cauliflower", "Capsicum", "Chilli", "Lemon" ]
    var bikeArr : Array<String> = ["KTM", "Pulser Black", "Pulser", "Pulser3", "PulserNS", "RolyalEnfield", "Shine"]
    //=====================View Life Cycle Methods===================
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.vegetableCollectionView.delegate = self
        self.vegetableCollectionView.dataSource = self
        
        self.bikeCollectionView.delegate = self
        self.bikeCollectionView.dataSource = self
        
//        self.view.addSubview(vegetableCollectionView)
//        self.view.addSubview(bikeCollectionView)
        
        self.vegetableCollectionView.showsHorizontalScrollIndicator = false
        self.bikeCollectionView.showsHorizontalScrollIndicator = false
    }
    
    //=====================Delegate Methods===================
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vegetableArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if collectionView == self.vegetableCollectionView
        {
            let vegCell: VegetbleCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "vegetableCell", for: indexPath) as! VegetbleCollectionViewCell
            
            vegCell.vegetableImg.image = UIImage(named: vegetableArr[indexPath.row])
            
            return vegCell
        }
        else
        {
            let bCell: BikeCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "bikeCell", for: indexPath) as! BikeCollectionViewCell
            
            bCell.bikeImg.image = UIImage(named: bikeArr[indexPath.row])
            return bCell
        }
    }
}

