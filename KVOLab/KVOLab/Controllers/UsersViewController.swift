//
//  ProfileViewController.swift
//  KVOLab
//
//  Created by Oscar Victoria Gonzalez  on 4/7/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class UsersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var userNameObservation: NSKeyValueObservation?
    
    var users = [User]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView() {
        tableView.dataSource = self
    }
    
    
    
    
    private func configureUserNameObservation() {
        userNameObservation = User.shared.observe(\.userName, options: [.old, .new], changeHandler: { (user, change) in
            guard let userName = change.newValue else { return }
        })
}
    
}

extension UsersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        //        let user = users[indexPath.row]
        cell.textLabel?.text = ""
        return cell
    }
    
}



