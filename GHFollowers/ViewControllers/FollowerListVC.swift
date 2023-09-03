//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Mohammed Jameeluddin on 8/29/23.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        configureViewController()
        func fetchFollowers(for username: String) async throws {
            let baseURL = "http://api.github.com/users/"
            let endpoint = baseURL + "\(username)/followers?per_page=100&page=100"
            do {
                let data = try await NetworkManager.shared.service.fetchData(from: endpoint, for: Follower.self)
            } catch {
                throw NetworkingError.invalidData
            }
        }
    }
    
    
    override func viewWillAppear(_ amimated: Bool) {
        super.viewWillAppear(amimated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemRed
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
    }
    
    
}
