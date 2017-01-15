//
//  SummaryViewController.swift
//  SampleIOSSnapshot
//
//  Created by Yukie Hori on 2017/01/15.
//  Copyright © 2017年 moko. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = NSLocalizedString(R.string.localizable.summary_nav_title.key, comment: "")
        imageView.image = UIImage(named: NSLocalizedString(R.string.localizable.calendar_filename.key, comment: ""))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
