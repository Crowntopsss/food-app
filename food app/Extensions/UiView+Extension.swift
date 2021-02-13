//
//  UiView+Extension.swift
//  food app
//
//  Created by Temitope on 06/02/2021.
//

import UIKit

extension UIView{
    @IBInspectable var conerRadius : CGFloat{
        get{return self.conerRadius}
        set{
            self.layer.cornerRadius = newValue
            
        }
    }
}
