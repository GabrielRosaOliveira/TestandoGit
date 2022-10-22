//
//  GamesTableViewCell.swift
//  ProjetoLinkeIn
//
//  Created by Gabriel on 22/10/22.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var teamOneLabel: UILabel!
    @IBOutlet weak var imageTeamOneImage: UIImageView!
    
    @IBOutlet weak var imageTeamTwoImage: UIImageView!
    @IBOutlet weak var teamTwoLabel: UILabel!
    
    
    
    static let identifier: String = "GamesTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setupCell(teamOne: String, teamTwo: String, imageTeamOne: UIImage, imageTeamTwo: UIImage) {
        teamOneLabel.text = teamOne
        teamTwoLabel.text = teamTwo
        imageTeamOneImage.image = imageTeamOne
        imageTeamTwoImage.image = imageTeamTwo
    }
    
    func setupCell2(teamOne: String, teamTwo: String, imageTeamOne: UIImage, imageTeamTwo: UIImage) {
        teamOneLabel.text = teamOne
        teamTwoLabel.text = teamTwo
        imageTeamOneImage.image = imageTeamOne
        imageTeamTwoImage.image = imageTeamTwo
    }
    
}
