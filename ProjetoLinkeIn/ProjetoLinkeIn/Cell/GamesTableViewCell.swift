//
//  GamesTableViewCell.swift
//  ProjetoLinkeIn
//
//  Created by Gabriel on 22/10/22.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    @IBOutlet weak var nameCarLabel: UILabel!
    
    @IBOutlet weak var selfCarImage: UIImageView!
    
    
    static let identifier: String = "GamesTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell(nameCar: nameCarLabel.text ?? "", carImagem: selfCarImage.image ?? UIImage())
    }
    
    func setupCell(nameCar: String, carImagem: UIImage) {
        nameCarLabel.text = nameCar
        selfCarImage.image = carImagem
        
    }
    
}
