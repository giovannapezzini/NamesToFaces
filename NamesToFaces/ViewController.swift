//
//  ViewController.swift
//  NamesToFaces
//
//  Created by Giovanna Pezzini on 24/01/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
    }
    
    func configureCollectionView() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView?.register(PersonCell.self, forCellWithReuseIdentifier: PersonCell.reuseID)
        collectionView?.backgroundColor = UIColor.white
        collectionView.delegate = self
        collectionView.dataSource = self
        
        view.addSubview(collectionView)
    }
    
    // MARK: - CollectionView Delegate and DataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PersonCell.reuseID, for: indexPath) as! PersonCell
        
        return cell
    }
    
    // MARK: - CollectionView Delegate FlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 180)
    }
    
}

