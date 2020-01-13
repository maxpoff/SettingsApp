//
//  SettingListTableViewController.swift
//  SettingsApp
//
//  Created by Maxwell Poffenbarger on 1/13/20.
//  Copyright © 2020 Poff Daddy. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController, SettingCellDelegate {
    
    func settingSwitchTapped(for cell: SettingTableViewCell) {
        //Find the index path of the cell that was passed into the function
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        //Using that index path, we find the setting for that cell
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        //Toggle the isOn property for that setting
        SettingController.sharedInstance.toggleIsOn(for: setting)
        //Update the cell views
        cell.updateViews(with: setting)
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.sharedInstance.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell()}

        let setting = SettingController.sharedInstance.settings[indexPath.row]
        
        cell.updateViews(with: setting)
        cell.cellDelegate = self

        return cell
    }
}//End of class
