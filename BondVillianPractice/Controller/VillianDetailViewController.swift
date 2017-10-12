//
//  VillianDetailViewController.swift
//  BondVillianPractice
//
//  Created by Yugandhara Lad on 10/11/17.
//  Copyright © 2017 Yugandhara Lad. All rights reserved.
//

import UIKit

class VillianDetailViewController: UIViewController {
    
     // Mark: - Properties
    var villian = Villian(dictionary: <#T##[String : String]#>)
    
    //Mark: - Outlets
    @IBOutlet var imgDetailView: UIImageView!
    @IBOutlet var lblVillianDetail: UILabel!
    
   
    
    
    
    var detailVillians = Villian.ImageNameKey
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imgDetailView.image = UIImage(named: villian.imageName)
        self.lblVillianDetail.text = self.villian.name
        
    }

    
}
