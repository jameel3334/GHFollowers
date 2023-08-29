//
//  SearchVC.swift
//  GHFollowers
//
//  Created by Mohammed Jameeluddin on 8/28/23.
//

import UIKit

class SearchVC: UIViewController {
    
    
    let logoView = UIImageView()
    let userTextField = GFTextFields()
    let callToActionButton = GFButtons(backgroundColor: .systemGreen, title: "Get Followers")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoView()
        configureUserTextField()
        configureCallToActionButton()
    }
    
    override func viewWillAppear(_ amimated: Bool) {
        super.viewWillAppear(amimated)
        navigationController?.isNavigationBarHidden = true
    }
    
    private func configureLogoView() {
        view.addSubview(logoView)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.image = UIImage(named: "main-logo")!
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoView.heightAnchor.constraint(equalToConstant: 200),
            logoView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func configureUserTextField() {
        view.addSubview(userTextField)
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 48),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            logoView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            logoView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    private func configureCallToActionButton() {
        view.addSubview(callToActionButton)
        NSLayoutConstraint.activate([
            logoView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            logoView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            logoView.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
    }
}
