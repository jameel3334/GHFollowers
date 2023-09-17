//
//  GFButtons.swift
//  GHFollowers
//
//  Created by Mohammed Jameeluddin on 8/28/23.
//

import UIKit

class GFButtons: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        setTitleColor(.white, for: .normal)
    }
}
