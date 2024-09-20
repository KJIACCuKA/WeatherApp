//
//  UIImageViewExtension.swift
//  DeleteAfterWork
//
//  Created by Никита Козловский on 19.09.2024.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage, backgroundColor: UIColor, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.backgroundColor = backgroundColor
        self.contentMode = contentMode
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
