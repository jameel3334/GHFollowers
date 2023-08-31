//
//  GFTitleLabel.swift
//  GHFollowers
//
//  Created by Mohammed Jameeluddin on 8/31/23.
//

import UIKit

class GFTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignemnt: NSTextAlignment, fontSize: CGFloat){
        super.init(frame: .zero)
        self.textAlignment = textAlignemnt
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        configure()
    }
    
    private func configure() {
        textColor                         = .label
        adjustsFontSizeToFitWidth         = true
        minimumScaleFactor                = 0.9
        lineBreakMode                     = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
