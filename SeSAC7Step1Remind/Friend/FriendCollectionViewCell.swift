//
//  FriendCollectionViewCell.swift
//  SeSAC7Step1Remind
//
//  Created by Suji Jang on 7/17/25.
//

import UIKit

class FriendCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImageView.backgroundColor = .yellow
        profileImageView.contentMode = .scaleAspectFill
        
        nameLabel.textAlignment = .center
        nameLabel.font = .boldSystemFont(ofSize: 17)
    }
}
