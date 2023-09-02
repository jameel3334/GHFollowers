//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Mohammed Jameeluddin on 8/29/23.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    override func viewWillAppear(_ amimated: Bool) {
        super.viewWillAppear(amimated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
