//
//  ViewController.swift
//  testui
//
//  Created by user on 8/6/2021.
//

import UIKit

class ViewController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        
        
        
    }
    func initUI(){
        
        setupVC()
        setBar()
        
        
    }
    
    
    func setupVC(){
        
        let pageA =  pageA()
        let pageAController = UINavigationController(rootViewController: pageA)
        pageAController.tabBarItem.title = "Fxxx"
        //
        
        let pageB = pageB()
        let pageBcontroller = UINavigationController(rootViewController: pageB)
        pageBcontroller.tabBarItem.title = "animal user"
        
        
        let pageC = pageC()
        let pageCcontroller = UINavigationController(rootViewController: pageC)
        pageCcontroller.tabBarItem.title = "well"
        
        let pageD = pageD()
        let pageDController = UINavigationController(rootViewController: pageD)
        pageDController.tabBarItem.title = "好X多貓"
        
        let pageTest = trytry()
        let pageTestController = UINavigationController(rootViewController: pageTest )
        
        
        
        
        
        
        
        self.viewControllers = [pageAController, pageBcontroller, pageCcontroller, pageDController,pageTestController]
        
        
    }
    func setBar(){
        self.tabBar.tintColor = .black
        self.tabBar.barTintColor = .white
        
    }
    
    
}

