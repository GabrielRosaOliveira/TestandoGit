//
//  ViewController.swift
//  ProjetoLinkeIn
//
//  Created by Gabriel on 21/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let data: [String] = ["civic", "mercedes", "volvo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(GamesTableViewCell.nib(), forCellReuseIdentifier: GamesTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: GamesTableViewCell.identifier, for: indexPath) as? GamesTableViewCell
        
        cell?.selfCarImage.image = UIImage(named: data[indexPath.row])
        cell?.nameCarLabel.text = data[indexPath.row]
        
        return cell ?? UITableViewCell()
    }
    
}

