//
//  AutorViewCell.swift
//  LearningTask-6.5
//
//  Created by Raul Ribeiro on 28/11/22.
//

import UIKit

class AutorViewCell: UITableViewCell {

    
    @IBOutlet weak var nomeCompletoLabel: UILabel!
    @IBOutlet weak var tecnologiasLabel: UILabel!
    
    func setup(_ autor: Autor) {
        nomeCompletoLabel.text = autor.nomeCompleto
        tecnologiasLabel.text = autor.tecnologias.count == 0 ? "N/A" : autor.tecnologias.joined(separator: ", ")
    }
}
