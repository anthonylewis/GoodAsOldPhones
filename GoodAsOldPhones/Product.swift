//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by Anthony Lewis on 4/19/16.
//  Copyright © 2016 Anthony Lewis. All rights reserved.
//

import Foundation

class Product: NSObject, NSCoding {
    var name: String?
    var productImage: String?
    var cellImage: String?
    var price: Double?
    
    override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObjectForKey("name") as? String
        self.productImage = aDecoder.decodeObjectForKey("productImage") as? String
        self.cellImage = aDecoder.decodeObjectForKey("cellImage") as? String
        self.price = aDecoder.decodeObjectForKey("price") as? Double
        
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: "name")
        aCoder.encodeObject(productImage, forKey: "productImage")
        aCoder.encodeObject(cellImage, forKey: "cellImage")
        aCoder.encodeObject(price, forKey: "price")
    }

}