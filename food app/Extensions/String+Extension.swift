//
//  String+Extension.swift
//  food app
//
//  Created by Temitope on 28/02/2021.
//

import Foundation

extension String {
    var asUrl : URL?{
        return URL(string: self)
    }
    
}
