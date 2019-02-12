//
//  Storyboarded.swift
//  FriendZone
//
//  Created by Raul Martinez Padilla on 12/02/2019.
//  Copyright © 2019 Raul Martinez Padilla. All rights reserved.
//

import UIKit

protocol Storyboarded {
  static func instantiated() -> Self
}

extension Storyboarded where Self: UIViewController{
  static func instantiated() -> Self {
    let className = String(describing: self)
    let storyboard = UIStoryboard.init(name: "Main", bundle: Bundle.main)

    return storyboard.instantiateViewController(withIdentifier: className) as! Self
  }
}
