//
//  ViewController.swift
//  BondVillianPractice
//
//  Created by Yugandhara Lad on 10/10/17.
//  Copyright © 2017 Yugandhara Lad. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let allVillians = Villian.allVillians
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allVillians.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VillianCell")
        let villian = self.allVillians[(indexPath as NSIndexPath).row]
        
    
        
        //set the names and images
        
        cell?.textLabel?.text = villian.name
        cell?.imageView?.image = UIImage(named: villian.imageName)
        
        
        
        
        
        
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
  
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
// Mark: - Navigation To Detail View Controller
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "ShowDetail":
                let villianDetailVC = segue.destination as! VillianDetailViewController
                
                
                
                //let indexPath = self.ta
                
                
                
            default:
                break
            }
        }*/
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "VillianDetailViewController") as! VillianDetailViewController
        detailVC.villian = self.allVillians[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailVC, animated: true)
        
    }
    
}






