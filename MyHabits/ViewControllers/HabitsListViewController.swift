//
//  HabitsListViewController.swift
//  MyHabits
//
//  Created by iAlesha уличный on 05.04.2023.
//

import UIKit

class HabitsListViewController: UIViewController {

    private let nabitVewCell = HabitViewCell() // зачем делать если я вроде не вызываю 
    private(set) var myDataPost = DataPost.myDataPost()
    
    
    private lazy var anast: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("пошли ебать анастейшу", for: .normal)
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(pressingTheButton), for: .touchUpInside)
        return button
    }()
    

    @objc private func pressingTheButton() {
        let vc = HabitsViewController()
        present(vc, animated: true)

    }
    
private lazy var tableView: UITableView = {
    let tableView = UITableView(frame: .zero, style: .grouped)
    tableView.dataSource = self
    tableView.delegate = self
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.register(HabitViewCell.self, forCellReuseIdentifier: HabitViewCell.identifier)
    return tableView
 }()

private func layuot() {
    view.addSubview(tableView)
    view.addSubview(anast)
    
    NSLayoutConstraint.activate([
        tableView.topAnchor.constraint(equalTo: view.topAnchor),
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
        anast.topAnchor.constraint(equalTo: view.topAnchor, constant: 670),
        anast.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        anast.widthAnchor.constraint(equalToConstant: 250)
        
    ])
}

    override func viewDidLoad() {
        super.viewDidLoad()
        layuot()
        
    }
    
}

extension HabitsListViewController: UITableViewDataSource {
   
//    func numberOfSections(in tableView: UITableView) -> Int {
//        2
//    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDataPost.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HabitViewCell.identifier, for: indexPath) as? HabitViewCell else {
            return UITableViewCell()
        }
        
        cell.setupcell(datapost: myDataPost[indexPath.row])
        return cell
        }
}

extension HabitsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 550
    }
    
    
}
