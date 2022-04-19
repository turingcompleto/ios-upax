//
//  VIstaGraficas.swift
//  UPAX
//
//  Created by Wiggi on 13/04/22.
//

import UIKit

class VIstaGraficas: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let service =  APIRest(baseUrl: "https://us-central1-bibliotecadecontenido.cloudfunctions.net/")
        service.getAllColors(endPoint:"helloWorld")
        
        service.getAllQuestions(endPoint:"helloWorld")
    }

}
