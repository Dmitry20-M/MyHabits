//
//  HabitViewCell.swift
//  MyHabits
//
//  Created by iAlesha уличный on 05.04.2023.
//

import UIKit

protocol DataTransmissionViaTheProtocol: AnyObject {

    func descriptionText(item: String)
    func myImageViewImageView(item: String)
}

class HabitViewCell: UITableViewCell {

     weak var delegate: DataTransmissionViaTheProtocol?
    
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
        delegate.descriptionText(item: descriptionLabel.text ?? "" ) // как сюда передать текст из MyHabits или же из HabitViewCell private let descriptionLabel: UILabel 
        // его надо вызывать в @objc private func pressingTheButton()  
        // слелать @objc в HabitViewCell
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
