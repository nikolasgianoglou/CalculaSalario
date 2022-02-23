//
//  ViewController.swift
//  CalculaSalario
//
//  Created by Nikolas Gianoglou Coelho on 22/02/22.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .darkGray
    self.view.addSubview(mainSceneView)
    
    setUpUIElements()
    
    action()
   
  }
  
  let mainSceneView: MainSceneView = {
    let view = MainSceneView()
    view.backgroundColor = .lightGray
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  
  
  private func action(){
    mainSceneView.button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
  }
    
  @objc
  func buttonAction(sender: UIButton!) {
    guard let name = mainSceneView.nameTextField.text else {return}
    guard let job = mainSceneView.jobTextField.text else {return}
    guard let salary = mainSceneView.salaryTextField.text else {return}
    
    if let salary = Double(salary){
      let person = Model(name, job, salary)
      
      mainSceneView.resulLabel.text = person.salaryAfterTaxes
    } 
  }
  
  
  
  private func setUpUIElements(){
    mainSceneView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
    mainSceneView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
    mainSceneView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
    mainSceneView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
  }
  
}

