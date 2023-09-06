//
//  GFAvatarImage.swift
//  GHFollowers
//
//  Created by Mohammed Jameeluddin on 9/3/23.
//

import UIKit

class GFAvatarImage: UIImageView {
    
    let placeholderImage = UIImage(named: "avatar-placeholder")!

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
