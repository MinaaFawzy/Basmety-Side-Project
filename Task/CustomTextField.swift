//
//  CustomTextField.swift
//  Task
//
//  Created by Mina on 25/08/2021.
//

import UIKit

class DesignTextField : UITextField{
    override func awakeFromNib() {
        layer.cornerRadius = 1
        backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
}

