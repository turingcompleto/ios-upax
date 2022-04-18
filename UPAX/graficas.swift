//
//  graficas.swift
//  UPAX
//
//  Created by Wiggi on 13/04/22.
//

import UIKit

class graficas: UITableViewCell {
    
    static let identifier = "graficas"
    
    static func nib() -> UINib{
        return UINib(nibName: "graficas", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func graficasButton(_ sender: Any) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
