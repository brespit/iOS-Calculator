//
//  UIButtonExtension.swift
//  iOS-Calculator
//
//  Created by Flavio Leite on 24/07/2019.
//  Copyright © 2019 Flavio Leite. All rights reserved.
//

import UIKit

extension UIButton {
    
    func round() {
        layer.cornerRadius = bounds.height/2 - 5 
        clipsToBounds = true
    }
    
    func shine() {
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5
        }) { (completion) in
            self.alpha = 1
        }
    }

}
