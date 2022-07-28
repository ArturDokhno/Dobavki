//
//  Extension.swift
//  Dobavki
//
//  Created by Артур Дохно on 28.07.2022.
//

import UIKit

extension UIView {
    
    func setDimensions(width: CGFloat, height: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }
}
