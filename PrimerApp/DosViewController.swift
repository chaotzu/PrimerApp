//
//  DosViewController.swift
//  PrimerApp
//
//  Created by Jacobo on 03/05/18.
//  Copyright © 2018 Jacobo. All rights reserved.
//

import UIKit

class DosViewController: UIViewController {

    //Pasar datos entre vistas
    var texto:String = ""
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //El texto de la etiqueta sera igual a la variable texto, esta variable tomara un valor de la vista 1
        displayLabel.text = texto
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clicCerrar(_ sender: Any) {
        //Quitar esta vista lo que te regresa a la vista anterior
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
