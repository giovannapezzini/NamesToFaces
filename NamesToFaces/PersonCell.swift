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

        imageView.frame = CGRect(x: 10, y: 10, width: 120, height: 120)

        label.font = UIFont(name: "MarkerFelt-Thin", size: 16)
        label.textAlignment = .center
        label.numberOfLines = 2
    }
}
