//
//  PersonCell.swift
//  NamesToFaces
//
//  Created by Giovanna Pezzini on 25/01/21.
//

import UIKit

class PersonCell: UICollectionViewCell {
    static let reuseID = "PersonCell"
    let imageView = UIImageView()
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        addSubview(imageView)
        addSubview(label)
        backgroundColor = .white
        
        imageView.image = UIImage(named: "image-placeholder")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "MarkerFelt-Thin", size: 16)
        label.text = "Text"
        label.textAlignment = .center
        label.numberOfLines = 2
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            imageView.widthAnchor.constraint(equalToConstant: 120),
            imageView.heightAnchor.constraint(equalToConstant: 120),
            
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
        ])
    }
}
