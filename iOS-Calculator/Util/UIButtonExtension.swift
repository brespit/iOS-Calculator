//
//  UIButtonExtension.swift
//  iOS-Calculator
//
//  Created by Flavio Leite on 24/07/2019.
//  Copyright © 2019 Flavio Leite. All rights reserved.
//

import UIKit

private let orangeColor = UIColor(red: 254/255, green: 148/255, blue: 0/255, alpha: 1)
extension UIButton {
    
    func round() {
        layer.cornerRadius = bounds.height/2
        clipsToBounds = true
    }
    
    func shine() {
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5
        }) { (completion) in
            self.alpha = 1
        }
    }

    func selectOperation(_ selected: Bool) {
        backgroundColor = selected ? .white : orangeColor
        setTitleColor(selected ? orangeColor: .white, for: .normal)
    }
}
