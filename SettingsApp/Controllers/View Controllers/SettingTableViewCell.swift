//
//  SettingTableViewCell.swift
//  SettingsApp
//
//  Created by Maxwell Poffenbarger on 1/13/20.
//  Copyright © 2020 Poff Daddy. All rights reserved.
//

import UIKit

protocol SettingCellDelegate: class {
    func settingSwitchTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    weak var cellDelegate: SettingCellDelegate?
    
    func updateViews(with setting: Setting) {
        iconImageView.image = setting.icon
        nameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        
        self.backgroundColor = settingSwitch.isOn ? .black : .white
        self.nameLabel.textColor = settingSwitch.isOn ? .white : .black
    }
    
    @IBAction func settingSwitchToggled(_ sender: UISwitch) {
        cellDelegate?.settingSwitchTapped(for: self)
    }
}//End of class
