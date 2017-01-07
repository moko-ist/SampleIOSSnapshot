//
//  SecondViewController.swift
//  SampleIOSSnapshot
//
//  Created by Yukie Hori on 2017/01/07.
//  Copyright © 2017年 moko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = NSLocalizedString(R.string.localizable.second_view_nav.key, comment: "画面2")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
