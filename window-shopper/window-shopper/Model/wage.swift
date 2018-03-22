//
//  wage.swift
//  window-shopper
//
//  Created by Nayan Jariwala on 22/03/18.
//  Copyright © 2018 Nayan Jariwala. All rights reserved.
//

import Foundation
class wage{
    class func getHours(forwage wage:Double, getPrice price:Double) -> Int{
        return Int(ceil(price/wage))
    }
}
