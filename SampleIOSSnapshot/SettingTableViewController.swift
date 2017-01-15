//
//  SettingTableViewController.swift
//  SampleIOSSnapshot
//
//  Created by Yukie Hori on 2017/01/15.
//  Copyright © 2017年 moko. All rights reserved.
//

import UIKit

enum SettingSection: Int {
    case account = 0
    case help
    case logout
}

class SettingTableViewController: UITableViewController {

    @IBOutlet weak var accountCellEndatTitle: UILabel!
    @IBOutlet weak var accountCellEndatDetail: UILabel!
    
    @IBOutlet weak var helpCellHelpTitle: UILabel!
    @IBOutlet weak var helpCellPrivacypolicyTitle: UILabel!
    @IBOutlet weak var helpCellTermsOfServiceTitle: UILabel!
    @IBOutlet weak var helpCellVersionTitle: UILabel!
    @IBOutlet weak var helpCellVersionDetail: UILabel!
    
    @IBOutlet weak var logoutCellTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = NSLocalizedString(R.string.localizable.setting_nav_title.key, comment: "")
        localize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func localize() {
        accountCellEndatTitle.text = NSLocalizedString(R.string.localizable.account_cell_endat_title.key, comment: "")
        accountCellEndatDetail.text = "2017/12/01"
            
        helpCellHelpTitle.text = NSLocalizedString(R.string.localizable.setting_cell_help_title.key, comment: "")
        helpCellPrivacypolicyTitle.text = NSLocalizedString(R.string.localizable.setting_cell_privacypolicy_title.key, comment: "")
        helpCellTermsOfServiceTitle.text = NSLocalizedString(R.string.localizable.setting_cell_termsofservice_title.key, comment: "")
        helpCellVersionTitle.text = NSLocalizedString(R.string.localizable.setting_cell_version_title.key, comment: "")
        helpCellVersionDetail.text = "0.10.1"
        
        logoutCellTitle.text = NSLocalizedString(R.string.localizable.logout_cell_logout_title.key, comment: "")
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch SettingSection(rawValue: section)! {
        case .account:
            return 2
        case .help:
            return 4
        case .logout:
            return 1
        }
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
