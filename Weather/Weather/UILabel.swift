//
//  UILabel.swift
//  Weather
//
//  Created by Никита Козловский on 20.09.2024.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, textColor: UIColor = .black, textAlignment: NSTextAlignment) {
        self.init()
        
        self.textAlignment = textAlignment
        self.text = text
        self.textColor = textColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
