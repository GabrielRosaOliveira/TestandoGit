//
//  ViewController.swift
//  TrasitandoInfoEntreTelas
//
//  Created by Gabriel on 15/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedScreen02Button(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        vc?.name = "\(nameTextField.text ?? "") \(lastNameTextField.text ?? "")"
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}

