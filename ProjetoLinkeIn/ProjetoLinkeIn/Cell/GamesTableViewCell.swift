//
//  GamesTableViewCell.swift
//  ProjetoLinkeIn
//
//  Created by Gabriel on 22/10/22.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    
    
    
    
    
    static let identifier: String = "GamesTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setupCell(games: String) {
        
    }
    
}
