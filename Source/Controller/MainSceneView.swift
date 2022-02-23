//
//  MainSceneView.swift
//  CalculaSalario
//
//  Created by Nikolas Gianoglou Coelho on 22/02/22.
//

import Foundation
import UIKit

class MainSceneView: UIView{
  
  //MARK: - Initializers
  override init(frame: CGRect){
    super.init(frame: frame)
    loadUIElements()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: - Visual Elements
  let nameLabel = LabelDefault(title: "Name")
  let jobLabel = LabelDefault(title: "Job")
  let salaryLabel = LabelDefault(title: "Salary")
  let resulLabel = LabelDefault(title: "",numberOfLines: 3,lineBreakMode: .byWordWrapping)
  
  let nameTextField: UITextField = {
    let nameTf = UITextField()
    nameTf.translatesAutoresizingMaskIntoConstraints = false
    nameTf.backgroundColor = .white
    return nameTf
  }()
  
  
  let salaryTextField: UITextField = {
    let salaryTf = UITextField()
    salaryTf.translatesAutoresizingMaskIntoConstraints = false
    salaryTf.backgroundColor = .white
    return salaryTf
  }()
  
  let jobTextField: UITextField = {
    let jobTf = UITextField()
    jobTf.translatesAutoresizingMaskIntoConstraints = false
    jobTf.backgroundColor = .white
    return jobTf
  }()
  
  let button: UIButton = {
    let calcular = UIButton()
    calcular.translatesAutoresizingMaskIntoConstraints = false
    calcular.frame = .zero
    calcular.backgroundColor = .darkGray
    calcular.setTitle("Calcular", for: .normal)
    calcular.setTitleColor(.white, for: .normal)
    calcular.layer.cornerRadius = 5
    return calcular
  }()
  
  private func loadUIElements() {
    setNameLabel()
    setNameTextField()
    setJobLabel()
    setJobTextField()
    setSalaryLabel()
    setSalaryTextField()
    setButton()
    setResultLabel()
  }
  
  private func setNameLabel(){
    self.addSubview(nameLabel)
    nameLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 30).isActive = true
    nameLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: 60).isActive = true
    //nameLabel.widthAnchor.constraint(equalToConstant: 30)
  }
  
  private func setNameTextField(){
    self.addSubview(nameTextField)
    nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 5).isActive = true
    nameTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
    nameTextField.widthAnchor.constraint(equalToConstant: 250).isActive = true
  }
  
  private func setJobLabel(){
    self.addSubview(jobLabel)
    jobLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10).isActive = true
    jobLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
  }
  
  
  
  private func setJobTextField(){
    self.addSubview(jobTextField)
    jobTextField.topAnchor.constraint(equalTo: jobLabel.bottomAnchor,constant: 5).isActive = true
    jobTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
    jobTextField.widthAnchor.constraint(equalToConstant: 250).isActive = true
  }
  
  private func setSalaryLabel(){
    self.addSubview(salaryLabel)
    salaryLabel.topAnchor.constraint(equalTo: jobTextField.bottomAnchor, constant: 10).isActive = true
    salaryLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
  }
  
  
  
  private func setSalaryTextField(){
    self.addSubview(salaryTextField)
    salaryTextField.topAnchor.constraint(equalTo: salaryLabel.bottomAnchor,constant: 5).isActive = true
    salaryTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
    salaryTextField.widthAnchor.constraint(equalToConstant: 250).isActive = true
  }
  
  private func setButton(){
    self.addSubview(button)
    button.topAnchor.constraint(equalTo: salaryTextField.bottomAnchor, constant: 10).isActive = true
    button.trailingAnchor.constraint(equalTo: salaryTextField.trailingAnchor).isActive = true
    button.widthAnchor.constraint(equalToConstant: 100).isActive = true
    button.heightAnchor.constraint(equalToConstant: 50).isActive = true
  }
  
  private func setResultLabel(){
    self.addSubview(resulLabel)
    resulLabel.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 15).isActive = true
    resulLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
  }
  
}
