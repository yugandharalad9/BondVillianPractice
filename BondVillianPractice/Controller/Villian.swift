//
//  Villian.swift
//  BondVillianPractice
//
//  Created by Yugandhara Lad on 10/10/17.
//  Copyright © 2017 Yugandhara Lad. All rights reserved.
//

import Foundation
import UIKit

// Mark:- Villian

struct Villian {
    // Mark:- Properties
    
    let name: String
    let evilScheme: String
    let imageName: String
    
    static let NameKey = "NameKey"
    static let EvilSchemeKey = "EvilScheme"
    static let ImageNameKey = "ImageNameKey"
    
    // Mark:- Initializer
    
    //Generate a Villian from a three entry dictionary
    
    init(dictionary: [String: String]) {
        self.name = dictionary[Villian.NameKey]!
        self.evilScheme = dictionary[Villian.EvilSchemeKey]!
        self.imageName = dictionary[Villian.ImageNameKey]!
        
    }
}

// Mark:- Villian (All Villians)

/* This extension adds static variable allVillians. An array of Villian Objects*/
extension Villian {
    
    //Generate an array full of all of the villians in
    
    static var allVillians: [Villian] {
        
        var villianArray = [Villian]()
        
        for d in Villian.localVillianData() {
            
            villianArray.append(Villian(dictionary:d))
        }
        return villianArray
    }
    
    static func localVillianData() -> [[String:String]] {
        return [
            [Villian.NameKey: "Mr. Big", Villian.EvilSchemeKey: "Smuggle Heroin", Villian.ImageNameKey: "Big"],
            [Villian.NameKey: "EB", Villian.EvilSchemeKey: "hh", Villian.ImageNameKey: "Blofeld"]
        ]
    }

    
}


