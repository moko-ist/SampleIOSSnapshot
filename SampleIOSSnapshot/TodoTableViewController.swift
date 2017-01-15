//
//  TodoTableViewController.swift
//  SampleIOSSnapshot
//
//  Created by Yukie Hori on 2017/01/15.
//  Copyright © 2017年 moko. All rights reserved.
//

import UIKit

class TodoTableViewController: UITableViewController {

    @IBOutlet weak var itemTitle1: UILabel!
    @IBOutlet weak var itemTitle2: UILabel!
    @IBOutlet weak var itemTitle3: UILabel!
    @IBOutlet weak var itemTitle4: UILabel!
    @IBOutlet weak var itemTitle5: UILabel!
    
    @IBOutlet weak var itemTag1: UIView!
    @IBOutlet weak var itemTag2: UIView!
    @IBOutlet weak var itemTag3: UIView!
    @IBOutlet weak var itemTag4: UIView!
    @IBOutlet weak var itemTag5: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(TodoTableViewController.add(_:)))
        self.navigationItem.rightBarButtonItem = addButton

        navigationItem.title = NSLocalizedString(R.string.localizable.todo_nav_title.key, comment: "")
        
        localize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func add(_ sender: AnyObject) {

    }
    
    private func localize() {
        itemTitle1.text = NSLocalizedString(R.string.localizable.todo1.key, comment: "")
        itemTitle2.text = NSLocalizedString(R.string.localizable.todo2.key, comment: "")
        itemTitle3.text = NSLocalizedString(R.string.localizable.todo3.key, comment: "")
        itemTitle4.text = NSLocalizedString(R.string.localizable.todo4.key, comment: "")
        itemTitle5.text = NSLocalizedString(R.string.localizable.todo5.key, comment: "")
        
        itemTag1.backgroundColor = UIColor.blue
        itemTag2.backgroundColor = UIColor.red
        itemTag3.backgroundColor = UIColor.red
        itemTag4.backgroundColor = UIColor.yellow
        itemTag5.backgroundColor = UIColor.green
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
}
