//
//  DetalleViewController.swift
//  DoggiMundo
//
//  Created by eyc on 15/05/19.
//  Copyright © 2019 mac.javeloper@gmail.com. All rights reserved.
//

import UIKit

class DetalleViewController: UIViewController
{
    
    @IBOutlet weak var FotoPerro: UIImageView!
    @IBOutlet weak var Descripcion: UILabel!
    @IBOutlet weak var Nombre: UILabel!
    
    var FotoPerroPaso:String!
    var DescripcionPaso:String!
    var NombrePaso:String!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.FotoPerro.image = UIImage(named: FotoPerroPaso)
        self.Descripcion.text = DescripcionPaso
        self.Nombre.text = NombrePaso
        FotoPerro.clipsToBounds = true
        FotoPerro.layer.cornerRadius = FotoPerro.frame.size.width / 2
    }
}
