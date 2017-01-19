//
//  LoginTableViewController.swift
//  SampleIOSSnapshot
//
//  Created by Yukie Hori on 2017/01/15.
//  Copyright © 2017年 moko. All rights reserved.
//

import UIKit

class LoginTableViewController: UITableViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButton = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: #selector(LoginTableViewController.back(_:)))
        self.navigationItem.leftBarButtonItem = backButton
        
        let loginButton = UIBarButtonItem(title: NSLocalizedString(R.string.localizable.login_nav_button.key, comment: ""), style: .plain, target: self, action: #selector(LoginTableViewController.login(_:)))
        loginButton.accessibilityIdentifier = "login_nav_button"
        self.navigationItem.rightBarButtonItem = loginButton
        
        localize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func back(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func login(_ sender: AnyObject) {
        let vc = ContainerViewController.sharedInstance()
        self.present(vc, animated: true, completion: nil)
    }
    
    private func localize() {
        emailTextField.placeholder = NSLocalizedString(R.string.localizable.login_textfield_01.key, comment: "")
        passwordTextField.placeholder = NSLocalizedString(R.string.localizable.login_textfield_02.key, comment: "")
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
}
