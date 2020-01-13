//
//  SettingController.swift
//  SettingsApp
//
//  Created by Maxwell Poffenbarger on 1/13/20.
//  Copyright © 2020 Poff Daddy. All rights reserved.
//

import Foundation

class SettingController {
    
    static let sharedInstance = SettingController()
    
    let settings: [Setting] = {
        let iTunes = Setting(name: "iTunes", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(name: "AppStore", icon: #imageLiteral(resourceName: "AppStore"), isOn: false)
        let books = Setting(name: "Books", icon: #imageLiteral(resourceName: "Books"), isOn: false)
        
        return [iTunes, appStore, books]
    }()
    
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
        //This also does the same thing: setting.isOn.toggle()
    }
}//End of class

