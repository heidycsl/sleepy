//
//  AppDelegate.swift
//  testui
//
//  Created by user on 8/6/2021.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var tabViewController1 : pageA?
    var tabViewController2 : pageB?
    var tabViewController3 : foolishPage?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
                let vc = ViewController()
                window = UIWindow()
        window?.makeKeyAndVisible()
//              window?.rootViewController = UINavigationController(rootViewController: vc)
        window?.rootViewController = vc
        
    
        //
//        window = UIWindow()
//
//        self.tabViewController1 = pageA()
//        self.tabViewController2 = pageB()
//        self.tabViewController3 = foolishPage()
//
//        let tabBarController = UITabBarController()
//
//        tabBarController.viewControllers = [tabViewController1! , tabViewController2!,tabViewController3!]
//        tabBarController.tabBar.barTintColor = .white
//
//        let item1 = UITabBarItem(title: "tablelist", image:.remove, tag: 0)
//        let item2 = UITabBarItem(title: "collectionlist", image:.checkmark, tag: 1)
//        let item3 = UITabBarItem(title: "list", image:.add, tag: 2)
//
//        tabViewController1?.tabBarItem = item1
//        tabViewController2?.tabBarItem = item2
//        tabViewController3?.tabBarItem = item3
//
//        self.window?.rootViewController = UINavigationController(rootViewController: tabBarController)
//
        window?.makeKeyAndVisible()
        return true
    }
    
    
    // MARK: - Core Data stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "testui")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}

