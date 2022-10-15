//
//  Tela02VC.swift
//  TrasitandoInfoEntreTelas
//
//  Created by Gabriel on 15/10/22.
//

import UIKit

class Tela02VC: UIViewController {

    @IBOutlet weak var nameAndLastNameLabel: UILabel!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameAndLastNameLabel.text = name
        
    }
    



}
