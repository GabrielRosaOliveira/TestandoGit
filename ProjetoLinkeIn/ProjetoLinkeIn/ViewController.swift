//
//  ViewController.swift
//  ProjetoLinkeIn
//
//  Created by Gabriel on 21/10/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var tableView: UITableView!
    
    
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
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: GamesTableViewCell.identifier, for: indexPath) as? GamesTableViewCell
        
        cell?.setupCell(teamOne: "Brasil", teamTwo: "Servia", imageTeamOne: UIImage(named: "brasil") ?? UIImage(), imageTeamTwo: UIImage(named: "servia") ?? UIImage())
        
        cell?.setupCell2(teamOne: "Brasil", teamTwo: "Suiça", imageTeamOne: UIImage(named: "brasil") ?? UIImage(), imageTeamTwo: UIImage(named: "suica") ?? UIImage())
        
        
        return cell ?? UITableViewCell()
    }
}


