//
//  UIColorExtensions.swift
//  Techie_iOS_UITableview
//
//  Created by MrButChi on 3/9/20.
//  Copyright © 2020 techie262. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init?(hexString: String, alpha: Double) {
        if hexString.hasPrefix("#") {
            let hexColor = String(hexString[hexString.index(hexString.startIndex, offsetBy: 1)...])
            if hexColor.count == 6 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt32 = 0
                
                if scanner.scanHexInt32(&hexNumber) {
                    self.init(red: CGFloat((hexNumber & 0xFF0000) >> 16) / 255.0,
                              green: CGFloat((hexNumber & 0x00FF00) >> 8) / 255.0,
                              blue: CGFloat(hexNumber & 0x0000FF) / 255.0,
                              alpha: CGFloat(alpha))
                    return
                }
            }
        }
        return nil
    }
}
