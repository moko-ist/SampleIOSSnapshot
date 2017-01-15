//
//  LoginViewController.swift
//  SampleIOSSnapshot
//
//  Created by Yukie Hori on 2017/01/15.
//  Copyright © 2017年 moko. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    @IBOutlet weak var index: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        localize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func localize() {
        index.text = NSLocalizedString(R.string.localizable.intro_title.key, comment: "")
        desc.text = NSLocalizedString(R.string.localizable.intro_description.key, comment: "")
        button.setTitle(NSLocalizedString(R.string.localizable.intro_button.key, comment: ""), for: .normal)
    }
}
