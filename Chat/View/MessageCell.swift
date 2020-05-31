//
//  MessageCell.swift
//  Chat
//
//  Created by Emerson Javid Gonzalez Morales on 27/05/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var imageCurrentUser: UIImageView!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var imageUser: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewContainer.layer.cornerRadius = viewContainer.frame.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
