//
//  Setting.swift
//  SettingsApp
//
//  Created by Maxwell Poffenbarger on 1/13/20.
//  Copyright © 2020 Poff Daddy. All rights reserved.
//

import UIKit

class Setting {
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    init(name: String, icon: UIImage, isOn: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}//End of class
