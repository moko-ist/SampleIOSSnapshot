//
//  HomeTabBarController.swift
//  SampleIOSSnapshot
//
//  Created by Yukie Hori on 2017/01/15.
//  Copyright © 2017年 moko. All rights reserved.
//

import UIKit

private enum HomeTabIndex: Int {
    case Todo = 0
    case Summary = 1
    case Setting = 2
}

class HomeTabBarController: UITabBarController {
    
    private var todoNavigationController = R.storyboard.todo.instantiateInitialViewController()!
    private var summaryNavigationController = R.storyboard.summary.instantiateInitialViewController()!
    private var settingNavigationController = R.storyboard.setting.instantiateInitialViewController()!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        setupTabBar()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setupTabBar() {
        self.viewControllers = [
            todoNavigationController,
            summaryNavigationController,
            settingNavigationController
        ]
        self.setViewControllers(self.viewControllers, animated: true)
        
        todoNavigationController.tabBarItem.image = R.image.tab_todo()
        todoNavigationController.tabBarItem.selectedImage = R.image.tab_todo_selected()
        
        summaryNavigationController.tabBarItem.image = R.image.tab_summary()
        summaryNavigationController.tabBarItem.selectedImage = R.image.tab_summary_selected()
        
        settingNavigationController.tabBarItem.image = R.image.tab_account()
        settingNavigationController.tabBarItem.selectedImage = R.image.tab_account_selected()
        
        self.tabBar.items![HomeTabIndex.Todo.rawValue].title = NSLocalizedString(R.string.localizable.todo_tab_title.key, comment: "")
        self.tabBar.items![HomeTabIndex.Summary.rawValue].title = NSLocalizedString(R.string.localizable.summary_tab_title.key, comment: "")
        self.tabBar.items![HomeTabIndex.Setting.rawValue].title = NSLocalizedString(R.string.localizable.setting_tab_title.key, comment: "")
        
//        self.tabBar.tintColor = UIColor.cyanColor()
    }
}

extension HomeTabBarController: UITabBarControllerDelegate {
}
