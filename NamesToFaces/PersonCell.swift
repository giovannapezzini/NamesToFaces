//
//  PersonCell.swift
//  NamesToFaces
//
//  Created by Giovanna Pezzini on 25/01/21.
//

import UIKit

class PersonCell: UICollectionViewCell {
    static let reuseID = "PersonCell"
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "image-placeholder")
        imageView.layer.borderColor = UIColor(white: 0, alpha: 0.3).cgColor
        imageView.layer.borderWidth = 2
        imageView.layer.cornerRadius = 3
        return imageView
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "MarkerFelt-Thin", size: 16)
        label.text = "Text"
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        addSubview(imageView)
        addSubview(nameLabel)
        backgroundColor = .white
        layer.cornerRadius = 7
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            imageView.widthAnchor.constraint(equalToConstant: self.frame.width - 20),
            imageView.heightAnchor.constraint(equalToConstant: self.frame.height - 50),
            
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15)
            
        ])
    }
}
