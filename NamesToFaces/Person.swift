//
//  Person.swift
//  NamesToFaces
//
//  Created by Giovanna Pezzini on 26/01/21.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}