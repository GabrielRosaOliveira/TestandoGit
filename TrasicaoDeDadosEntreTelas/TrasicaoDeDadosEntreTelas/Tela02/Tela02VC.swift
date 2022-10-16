//
//  Tela02VC.swift
//  TrasicaoDeDadosEntreTelas
//
//  Created by Gabriel on 16/10/22.
//

import UIKit

class Tela02VC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
    }
    

 

}
