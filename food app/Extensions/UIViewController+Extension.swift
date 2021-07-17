//
//  UIViewController+Extension.swift
//  food app
//
//  Created by Temitope on 17/07/2021.
//

import UIKit

extension UIViewController {
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as Self
        
    }
}
