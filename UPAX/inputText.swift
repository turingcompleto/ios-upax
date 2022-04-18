//
//  inputText.swift
//  UPAX
//
//  Created by Wiggi on 13/04/22.
//

import UIKit

class inputText: UITableViewCell {
    
    static let identifier = "inputText"
    
    static func nib() -> UINib{
        return UINib(nibName: "inputText", bundle: nil)
    }
    

    @IBOutlet weak var myInput: UITextField!
    @IBOutlet weak var myMessage: UILabel!

    
    @IBAction func validacion(_ sender: Any){
        myMessage.isHidden = true
        
       if let mensaje = myInput.text{
           if let mensajeError = textoInvalido(mensaje){
               myMessage.text = mensajeError
               myMessage.isHidden = false
               
           }
           else{
               myMessage.isHidden = true
           }
        }
    }
    func textoInvalido(_ value: String) -> String? {
        let set = CharacterSet (charactersIn: "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLKMNÑOPQRSTUVWXYZ ")
        if myInput.text?.rangeOfCharacter(from: set.inverted) != nil {
            
            return "Solo se permiten caracteres alfanumericos"
        }
        
        else{
            return nil
        }
    
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
