//
//  Category.swift
//  Market
//
//  Created by Dominique Hosea on 2/2/21.
//

import Foundation
import UIKit

class Category  {
    var id: String
    var name: String
    var image: UIImage?
    var imageName: String?
    
    init(_name: String, _imageName: String) {
        id = ""
        name = _name
        imageName = _imageName
        image = UIImage(named: _imageName)
    }
    
    init(_dictionary: NSDictionary) {
        id = _dictionary["objectId"] as! String
        name = _dictionary["name"] as! String
        image = UIImage(named: _dictionary["imageName"] as? String ?? "")
    }
}
