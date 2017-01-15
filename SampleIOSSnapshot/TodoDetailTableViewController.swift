//
//  TodoDetailTableViewController.swift
//  SampleIOSSnapshot
//
//  Created by Yukie Hori on 2017/01/18.
//  Copyright © 2017年 moko. All rights reserved.
//

import UIKit

enum TodoDetailSection: Int {
    case detail = 0
    case limit
    case created
    case delete
}

class TodoDetailTableViewController: UITableViewController {

    @IBOutlet weak var tagIndex: UILabel!
    @IBOutlet weak var tagDetail: UILabel!
    
    @IBOutlet weak var limitDateIndex: UILabel!
    @IBOutlet weak var limitDateDetail: UILabel!
    
    @IBOutlet weak var reminderIndex: UILabel!
    @IBOutlet weak var reminderDetail: UILabel!
    
    @IBOutlet weak var createdAtIndex: UILabel!
    @IBOutlet weak var createdAtDetail: UILabel!
    
    @IBOutlet weak var deleteIndex: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        localize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func localize() {
        navigationItem.title = NSLocalizedString(R.string.localizable.todo1.key, comment: "")
        
        tagIndex.text = NSLocalizedString(R.string.localizable.todo_detail_tag_index.key, comment: "")
        tagDetail.text = NSLocalizedString(R.string.localizable.todo_detail_tag_detail.key, comment: "")
        
        limitDateIndex.text = NSLocalizedString(R.string.localizable.todo_detail_limitdate_index.key, comment: "")
        limitDateDetail.text = DateUtil.format(DateUtil.dateFromString(string: "2017-01-20 19:00", format: "yyyy-MM-dd HH:mm"))
        
        reminderIndex.text = NSLocalizedString(R.string.localizable.todo_detail_reminder_index.key, comment: "")
        reminderDetail.text = NSLocalizedString(R.string.localizable.todo_detail_reminder_detail.key, comment: "")
        
        createdAtIndex.text = NSLocalizedString(R.string.localizable.todo_detail_createdat_index.key, comment: "")
        createdAtDetail.text = DateUtil.format(DateUtil.dateFromString(string: "2017-01-03 12:51:10", format: "yyyy-MM-dd HH:mm:dd"))
      
        deleteIndex.text = NSLocalizedString(R.string.localizable.todo_detail_delete_index.key, comment: "")
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch TodoDetailSection(rawValue: section)! {
        case .detail:
            return 1
        case .limit:
            return 2
        case .created:
            return 1
        case .delete:
            return 1
        }
    }
}
