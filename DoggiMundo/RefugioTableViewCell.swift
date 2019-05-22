//
//  RefugioTableViewCell.swift
//  DoggiMundo
//
//  Created by eyc on 20/05/19.
//  Copyright © 2019 mac.javeloper@gmail.com. All rights reserved.
//

import UIKit

class RefugioTableViewCell: UITableViewCell
{
    
    @IBOutlet weak var RefugioNombre: UILabel!
    @IBOutlet weak var RefugioWeb: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
