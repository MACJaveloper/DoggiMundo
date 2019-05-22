//
//  RefugioTableViewController.swift
//  DoggiMundo
//
//  Created by eyc on 20/05/19.
//  Copyright © 2019 mac.javeloper@gmail.com. All rights reserved.
//

import UIKit

class RefugioTableViewController: UITableViewController
{
    var Refugio = ["Milagros caninos","Adopta una mascota","Petco","Pedigree adóptame"]
    var Web = ["https://www.milagroscaninos.org","https://adoptaunamascota.com.mx","https://www.petco.com.mx/adopcion","https://pedigree.com.mx/adoptame"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Refugio.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let CeldaIdentificador = "celdaR"
        let celda = tableView.dequeueReusableCell(withIdentifier: CeldaIdentificador, for: indexPath) as! RefugioTableViewCell
        celda.RefugioNombre.text = Refugio[indexPath.row]
        celda.RefugioWeb.text = Web[indexPath.row]
        return celda
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        // Animar la celda al presionarla
        tableView.deselectRow(at: indexPath, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "DetalleR"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let destino = segue.destination as! RefugioDetalleViewController
                destino.web = self.Web[indexPath.row]
            }
        }
    }
}
