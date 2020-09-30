//
//  CollectionReusableView.swift
//  Pokedex
//
//  Created by Michelle Kroll on 9/30/20.
//

import UIKit

class CollectionReusableView: UICollectionReusableView {
        
    static let identifier = "CollectionReusableView"
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Pokedex"
        label.textAlignment = .center
        label.textColor = .white
        return label
    } ()
    
    public func configure() {
        backgroundColor = .systemGreen
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
    
}
