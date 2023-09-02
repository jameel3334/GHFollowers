//
//  UIViewController+Extension.swift
//  GHFollowers
//
//  Created by Mohammed Jameeluddin on 8/31/23.
//

import UIKit

extension UIViewController {
    
    func presentAlertOnMainThread(title: String, message: String, buttonText: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonText)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
