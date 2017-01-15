//
//  ContainerViewController.swift
//  SampleIOSSnapshot
//
//  Created by Yukie Hori on 2017/01/15.
//  Copyright © 2017年 moko. All rights reserved.
//
import UIKit

private var instance: ContainerViewController?

class ContainerViewController: UIViewController {
    
    var homeTabBarController: HomeTabBarController!
    
    class func sharedInstance() -> ContainerViewController {
        if instance == nil {
            instance = R.storyboard.container.instantiateInitialViewController()
        }
        
        return instance!
    }
    
    class func deInstance() {
        instance = nil // TODO: 解放されてるか確認
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "HomeTabBarController" {
            self.homeTabBarController = segue.destination as? HomeTabBarController
        }
    }
    
}
