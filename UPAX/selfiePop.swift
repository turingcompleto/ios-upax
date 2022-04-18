//
//  selfiePop.swift
//  UPAX
//
//  Created by Wiggi on 13/04/22.
//

import UIKit

class selfiePop: UIViewController {

    @IBOutlet weak var TomarFotoButton: UIButton!
  
    @IBOutlet weak var FotoPreview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    @IBAction func presionarBoton(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        present(picker, animated: true)
    }
    
}

extension selfiePop: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
                
        else{
            return
        }
        
        FotoPreview.image = image
    }
}
 
