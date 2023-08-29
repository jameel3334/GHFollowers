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
    
    var isUsernameEntered: Bool {
        return !userTextField.text!.isEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoView()
        configureUserTextField()
        configureCallToActionButton()
        createTapToDismissGuesture()
    }
    
    override func viewWillAppear(_ amimated: Bool) {
        super.viewWillAppear(amimated)
        navigationController?.isNavigationBarHidden = true
    }
    
    private func createTapToDismissGuesture() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    @objc func pushFavoriteListVC() {
        guard isUsernameEntered else {
            return
        }
        let followerList = FollowerListVC()
        followerList.username = userTextField.text
        followerList.title = userTextField.text
        navigationController?.pushViewController(followerList, animated: true)
    }
    
    
    
    
    
    
    private func configureLogoView() {
        view.addSubview(logoView)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.image = UIImage(named: "gh-logo")!
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoView.heightAnchor.constraint(equalToConstant: 200),
            logoView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func configureUserTextField() {
        view.addSubview(userTextField)
        userTextField.delegate = self
        NSLayoutConstraint.activate([
            userTextField.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 48),
            userTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            userTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            userTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureCallToActionButton() {
        view.addSubview(callToActionButton)
        callToActionButton.addTarget(self, action: #selector(pushFavoriteListVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

extension SearchVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pushFavoriteListVC()
        return true
    }
}
