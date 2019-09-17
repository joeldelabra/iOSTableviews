//
//  ViewController.swift
//  TableView
//
//  Created by Alumno on 9/13/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var alumnos : [Alumno] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Joel", apellido: "De Labra", matricula: "169067", correo: "joel"))
        alumnos.append(Alumno(nombre: "Francisco", apellido: "Valenzuela", matricula: "123456", correo: "joel"))
        alumnos.append(Alumno(nombre: "Marco", apellido: "Rodriguez", matricula: "169057", correo: "joel"))
        alumnos.append(Alumno(nombre: "Ana Lucia", apellido: "Blanco", matricula: "A153456",correo: "joel"))
    }

    // Numero de secciones (siempre 1)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaAlumno") as? CeldaAlumnoController
        
         celda?.lblNombre.text = alumnos[indexPath.row].nombre
        celda?.lblApellido.text = alumnos[indexPath.row].apellido
        celda?.lblMatricula.text = alumnos[indexPath.row].matricula
        celda?.lblCorreo.text = alumnos[indexPath.row].correo
        
        
        return celda!
        
    }
    
    func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> CGFloat {
        if (alumnos[indexPath.row].correo != nil){
            return 120
        }
        return 78
    }

}

