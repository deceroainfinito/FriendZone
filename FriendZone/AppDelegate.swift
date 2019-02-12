//
//  AppDelegate.swift
//  FriendZone
//
//  Created by Raul Martinez Padilla on 08/02/2019.
//  Copyright © 2019 Raul Martinez Padilla. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var coordinator: MainCoordinator?
  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    let navController = UINavigationController()

    coordinator = MainCoordinator(navigationController: navController)
    coordinator?.start()

    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = navController
    window?.makeKeyAndVisible()

    return true
  }
}

