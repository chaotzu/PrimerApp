//
//  ViewController.swift
//  PrimerApp
//
//  Created by Jacobo on 03/05/18.
//  Copyright © 2018 Jacobo. All rights reserved.
//

//Usaremos el protocolo UITextField
//Necesitamos implementar metodos de la clase UITextFieldDelegate para nosotros hacernos cargo del control, se pueden implementar una o todas

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //Outlet ("Conectar un componente de la interfaz grafica con el código, es como declarar la variable")
    @IBOutlet weak var miEtiqueta: UILabel!
    @IBOutlet weak var txtEtiqueta: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Decimos que para este control de texto nosotros seremos quienes nos ocuparemos de implementar su funcionamiento y no las clases definidas de swift
        txtEtiqueta.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Action es una respuesta a una accion, el codigo se ejecuta cuando sucede el evento
    @IBAction func clicAceptar(_ sender: Any) {
        //Abrimos segunda ventana a través del segue que agregamos anteriormente
        performSegue(withIdentifier: "miSegue", sender: self)
    }
    
    //Funciones de UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Ocultar teclado
        txtEtiqueta.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //Asignar a label el valor del textview
        miEtiqueta.text = txtEtiqueta.text
    }
    
    //Sobreescribimos funcion que se ejecuta antes de llamar a la vista, creamos una variable del tipo del controlador de nuestra segunda vista
    //Modificamos la variable de la segunda vista desde aqui
    //Despues se llamara performSegue y el valor sera pasado
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC:DosViewController = segue.destination as! DosViewController
        destVC.texto = miEtiqueta.text!
    }
    
    
}

