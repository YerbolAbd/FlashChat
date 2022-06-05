//
//  MessageCell.swift
//  FlashChat
//
//  Created by Ербол on 05.06.2022.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var rightImageVIew: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var leftImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
