//
//  ViewController.swift
//  test1
//
//  Created by Gabriel on 15/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func teste(_ sender: UIButton) {
        performSegue(withIdentifier: "GOTela02", sender: nil)
        
    }
    
    
}

