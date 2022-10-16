//
//  ViewController.swift
//  TrasicaoDeDadosEntreTelas
//
//  Created by Gabriel on 16/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configButton()
        nameTextField.delegate = self
        lastNameTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameTextField.text = ""
        lastNameTextField.text = ""
        submitButton.isEnabled = false
    }
    
    @IBAction func tappedScreen02Button(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        vc?.name = "\(nameTextField.text ?? "") \(lastNameTextField.text ?? "")"
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    func configButton() {
        submitButton.layer.cornerRadius = 20
        submitButton.isEnabled = false
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if nameTextField.text == "" || lastNameTextField.text == "" {
            submitButton.isEnabled = false
        } else {
            submitButton.isEnabled = true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
