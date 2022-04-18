//
//  ViewController.swift
//  UPAX
//
//  Created by Wiggi on 12/04/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabla.register(inputText.nib(), forCellReuseIdentifier: inputText.identifier)
        
        tabla.register(camara.nib(), forCellReuseIdentifier: camara.identifier)
        
        tabla.register(graficas.nib(), forCellReuseIdentifier: graficas.identifier)
        
        tabla.delegate = self
        tabla.dataSource = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
         if indexPath.row > 2 {
             let customCell = tableView.dequeueReusableCell(withIdentifier: graficas.identifier, for: indexPath) as! graficas

             return customCell
             
         }
         
         if indexPath.row > 1 {
             
             let customCell = tableView.dequeueReusableCell(withIdentifier: camara.identifier, for: indexPath) as! camara
                
             return customCell
             

         }
         if indexPath.row > 0 {
             let customCell = tableView.dequeueReusableCell(withIdentifier: inputText.identifier, for: indexPath) as! inputText
             return customCell
         }
         
         
         
         let celda = tableView.dequeueReusableCell(withIdentifier: "hola", for: indexPath)
         celda.textLabel?.text = "Bienvenido"
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row > 2 {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "graficas" , sender: self)
        }
        if indexPath.row > 0 {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "popUpCamara" , sender: self)
        }
    }
    
    
}
