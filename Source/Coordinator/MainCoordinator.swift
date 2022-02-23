//
//  MainCoordinator.swift
//  CalculaSalario
//
//  Created by Nikolas Gianoglou Coelho on 22/02/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator{
  var navigationController: UINavigationController
  
  init(navigationController: UINavigationController){
    self.navigationController = navigationController
  }
  
  
  
  func start() {
    let viewController = ViewController()
    self.navigationController.pushViewController(viewController, animated: true)
  }
  
  
}
