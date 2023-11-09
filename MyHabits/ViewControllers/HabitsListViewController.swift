//
//  HabitsListViewController.swift
//  MyHabits
//
//  Created by iAlesha уличный on 05.04.2023.
//

import UIKit

class HabitsListViewController: UIViewController {


private lazy var tableView: UITableView = {
    let tableView = UITableView(frame: .zero, style: .grouped)
    tableView.dataSource = self
    tableView.delegate = self
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.register(HabitViewCell.self, forCellReuseIdentifier: HabitViewCell.identifier)
    return tableView
 }()

private func layuot() {
    
}    

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

}

extension HabitsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
}

extension HabitsListViewController: UITableViewDelegate {
    
}
