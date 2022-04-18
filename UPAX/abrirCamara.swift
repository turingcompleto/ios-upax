//
//  abrirCamara.swift
//  UPAX
//
//  Created by Wiggi on 14/04/22.
//

import UIKit

class abrirCamara: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var buttonPhoto: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    

    @IBAction func presionarBoton() {
        imageView.backgroundColor = .blue
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        present(picker, animated: true)
    }
}

extension abrirCamara: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        else{
            return
        }
        
        imageView.image = image
    }
}
