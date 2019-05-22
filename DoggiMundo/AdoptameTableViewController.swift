//
//  AdoptameTableViewController.swift
//  DoggiMundo
//
//  Created by eyc on 15/05/19.
//  Copyright © 2019 mac.javeloper@gmail.com. All rights reserved.
//

import UIKit

class AdoptameTableViewController: UITableViewController
{
    var Perros = ["Creedence","Grumpy","Chapo","Cleopatra","Ícarus"]
    var Fotos = ["Creedence.png","Grumpy.png","Chapo.png","Cleopatra.png","Icarus.png"]
    var Descrip = ["¡Hola! Me llamo Creedence (sí, como el grupo musical), tengo 2 añitos y soy una Pitbull que está buscando una nueva familia que me rasque mucho la barriga. Oigan, ya sé que mis hermanos de la misma raza tienen fama de ser chicos malos pero es puro chisme, yo soy muy cariñosa y juguetona, así que no te me  espantes por ese corte de orejas que me hace ver ruda, es pura apariencia.Si me preguntaran cuál es mi hogar ideal, diría que uno en el que tenga a un hermanito o hermanita para jugar y un patio grande para estar corriendo, me gusta que me den largos paseos por el parque todos los días pero no puedo vivir en un jardín porque soy algo delicadita de mi piel y se me pone roja.Si lo que quieres es una amiga incondicional que esté dispuesta a dormir a tu lado largas siestas ¡soy la indicada! Amo dormir casi tanto como amo comer. Si quieres saber más de mí ponte en contacto con mis amigos del refugio, ellos responderán todas tus  preguntas con mucho gusto.  ¡Nos vemos pronto! ¡guau!","¡Hola! Me emociona mucho saber que estás interesado en llevarme contigo a tu hogar y permitirme volverme tu nuevo mejor amigo, estoy encantado con la idea, pero antes hay algunas cosas importantes que tienes que saber sobre mí: Me llamo Grumpy (no te espantes con mi nombre, en realidad no soy enojón). Soy un macho (en caso de que no lo hubieras notado hasta este punto) , de raza American Bully, me han dicho que me veo como de 1 año y medio de edad. Soy muy juguetón y tengo demasiaaaada energía, es por eso que si me vas a llevar contigo más te vale estar fortachón y tener mucho tiempo para correr y jugar conmigo (no me gusta estar encerrado) . Soy un poco grande y pesado y aunque soy muy amigable la verdad a veces soy un poco pesadito con mis juegos,  por eso es importante que me tengas paciencia. Me encanta que me acaricien la pancita y  muerdo todo lo que encuentro en mi camino así que por tu bien, mantenme alejado de tus mejores tenis. ¿Quieres saber más? Contacta con mi refugio y te darán un perfil  más detallado sobre mí. ¡Hasta pronto!","¡Qué onda!  Mi nombre es Chapo, me pusieron así porque soy experto escarbando la tierra y haciendo hoyos, jeje.  Qué buena onda que estás interesado en mi perfil, yo también tengo mucho interés en conseguir nuevos amigos. Soy un Pitbull bebé, tengo 10 meses apenas y eso me convierte en el consentido de mi hogar temporal. Te platico que mis pasatiempos favoritos son comer bolillos y revolcarme en la tierra, aunque a veces me regañan por hacerlo y ya me controlo un poquitín más en ese aspecto (de vez en cuando todavía los sorprendo con un agujerito en el pasto mientras no me ven). Soy extremadamente cariñoso y amistoso, amo que me apapachen y soy un buenazo dando la patita, todos me dicen que soy muy inteligente. Espero que te animes a llevarme a tu hogar, y más te vale tener juguetes para mí porque de lo contrario me voy a comer tu ropa y tus muebles, estás avisado. Pregunta todo lo que quieras sobre mí a mis amigos, ellos te pueden confirmar que soy buena onda ¡bye!.","¡Saludos! Mi nombre es Cleopatra y estoy aquí para contarte un poquito sobre mí porque ando en busca de un hogar definitivo y tal vez tú me lo puedas brindar. Tengo 3  años de edad y mi raza es American Bully, soy un ser con mucha fuerza y eso me hace un poquito difícil de controlar, así que espero que tengas bien trabajados esos músculos para cuando me saques a pasear.  Soy una perrita fitness porque amo correr y hacer ejercicio, también soy una gran protectora, así que te prometo que si me tratas bien voy a defenderte toda la vida (no te espantes, no muerdo a nadie que no me moleste). Tengo muchos amigos perrunos pero no todos me caen muy bien, por eso es importante que siempre me tengas con una buena correa, ya que cuando alguno me cae gordo me gusta correr detrás de él y espantarlo. Te prometo que soy una excelente compañera y que no te vas a arrepentir de adoptarme, cualquier preguntita que tengas puedes hacérsela llegar a mis amigos del refugio, ¡nos vemos pronto!.","¡Hola!  Soy  Ícarus y soy un Mastín Español de un añito de edad (¡ya sé!, me veo más grande). Dejando un poquito de lado la soberbia debo decir que soy un perro muy guapo y muy buena onda. Tengo un carácter bastante tranquilo y bonachón, me gusta estar acostado la mayor parte del tiempo y salir a correr un par de veces al día para gastar energía. Soy un perro grandote y para mantener este cuerpecito que me fue dado debo comer muuuchas croquetas, así que espero que tomes en cuenta que soy muy tragón antes de decidir llevarme a tu hogar. Me llevo muy bien con todo tipo de personas y de perritos, aunque muchos me tienen miedo por mi físico, aquí aplica lo de “perro que ladra no muerde”, y he de decir que yo ladro un montón. Busco una familia que me quiera mucho, que me trate muy bien  y que me dedique todos los cuidados que requiero, a cambio les ofrezco una amistad de por vida! Espero que nos veamos muy pronto, cualquier duda puedes consultarla con el refugio, ¡cuídate!."]
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Perros.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let CeldaIdentificador = "Celda"
        let celda = tableView.dequeueReusableCell(withIdentifier: CeldaIdentificador, for: indexPath) as! AdoptameTableViewCell
        celda.NombrePerro.text = Perros[indexPath.row]
        celda.FotoPerro.image = UIImage(named: Fotos[indexPath.row])
        celda.FotoPerro.clipsToBounds = true
        celda.FotoPerro.layer.cornerRadius = celda.FotoPerro.frame.size.width / 2
        return celda
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        // Animar la celda al presionarla
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "Detalle"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let destino = segue.destination as! DetalleViewController
                destino.FotoPerroPaso = self.Fotos[indexPath.row]
                destino.DescripcionPaso = self.Descrip[indexPath.row]
                destino.NombrePaso = self.Perros[indexPath.row]
            }
        }
    }
}
