//
//  AdoptameTableViewCell.swift
//  DoggiMundo
//
//  Created by eyc on 15/05/19.
//  Copyright © 2019 mac.javeloper@gmail.com. All rights reserved.
//

import UIKit

class AdoptameTableViewCell: UITableViewCell
{
    @IBOutlet weak var FotoPerro: UIImageView!
    @IBOutlet weak var NombrePerro: UILabel!
    @IBOutlet weak var DescripcionPerro: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
}
