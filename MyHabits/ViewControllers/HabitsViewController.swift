//
//  HabitsViewController.swift
//  MyHabits
//
//  Created by iAlesha уличный on 03.04.2023.
//

import UIKit

class HabitsViewController: UIViewController {
    
    private let sleep: UILabel = {
        let label = UILabel()
        label.text = "выключи будильник"
        label.font = .systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        setupUI()
    }

    
    private func setupUI() {
        view.addSubview(sleep)
        sleep.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sleep.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}
