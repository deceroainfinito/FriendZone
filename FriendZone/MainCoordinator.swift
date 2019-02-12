//
//  MainCoordinator.swift
//  FriendZone
//
//  Created by Raul Martinez Padilla on 12/02/2019.
//  Copyright © 2019 Raul Martinez Padilla. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  func start() {
    let vc = ViewController.instantiated()

    vc.coordinator = self

    navigationController.pushViewController(vc, animated: true)
  }

  func configure(friend: Friend) {
    let vc = FriendViewController.instantiated()

    vc.coordinator = self
    vc.friend = friend
    navigationController.pushViewController(vc, animated: true)
  }

  func update(friend: Friend) {
    guard let vc = navigationController.viewControllers.first as? ViewController else {
      return
    }

    vc.update(friend: friend)
  }

}
