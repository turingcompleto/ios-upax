//
//  camara.swift
//  UPAX
//
//  Created by Wiggi on 13/04/22.
//

import UIKit

class camara: UITableViewCell {
    
    static let identifier = "camara"
    
    static func nib() -> UINib{
        return UINib(nibName: "camara", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
            }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
