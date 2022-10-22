//
//  ViewController.swift
//  ProjetoLinkeIn
//
//  Created by Gabriel on 21/10/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var tableView: UITableView!
    
    struct Games {
        let time1: String
        let imagemTime1: String
        
        let time2: String
        let imagemTime2: String
        
        let time3: String
        let imagemTime3: String
    }
    
    
    
    let data: [Games] = [Games(time1: "Brasil", imagemTime1: "brasil", time2: "Servia", imagemTime2: "servia", time3: "Suiça", imagemTime3: "suica")]
    
    
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
        
        cell?.teamOneLabel.text = data[indexPath.row].time1
        cell?.teamTwoLabel.text = data[indexPath.row].time2
        cell?.imageTeamOneImage.image = UIImage(named: data[indexPath.row].imagemTime1)
        cell?.imageTeamTwoImage.image = UIImage(named: data[indexPath.row].imagemTime2)
        
        cell?.teamOneLabel.text = data[indexPath.row].time1
        cell?.teamTwoLabel.text = data[indexPath.row].time3
        cell?.imageTeamOneImage.image = UIImage(named: data[indexPath.row].imagemTime1)
        cell?.imageTeamTwoImage.image = UIImage(named: data[indexPath.row].imagemTime3)
        
        
        return cell ?? UITableViewCell()
    }
}


