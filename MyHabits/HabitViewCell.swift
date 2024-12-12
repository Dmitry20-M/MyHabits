//
//  HabitViewCell.swift
//  MyHabits
//
//  Created by iAlesha уличный on 05.04.2023.
//

import UIKit

class HabitViewCell: UITableViewCell {
    
    private let author: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textColor = .label
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textColor = .label
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
 

    public func setupcell(datapost: DataPost) {
        author.text = datapost.autchor
        descriptionLabel.text = datapost.description
        myImageView.image = UIImage(named: datapost.avatarPosts)
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        addSubview(author)
        addSubview(descriptionLabel)
        addSubview(myImageView)
        
        NSLayoutConstraint.activate([
            
            descriptionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        
            myImageView.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            myImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            myImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            myImageView.heightAnchor.constraint(equalToConstant: 400),
            myImageView.widthAnchor.constraint(equalToConstant: 200),
            
            author.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 15),
            author.centerXAnchor.constraint(equalTo: centerXAnchor),
            
        ])
    }
    
}
