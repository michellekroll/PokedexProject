//
//  CollectionReusableView.swift
//  Pokedex
//
//  Created by Michelle Kroll on 9/30/20.
//

import UIKit

class CollectionReusableView: UICollectionReusableView {
        
    static let identifier = "CollectionReusableView"
    
    public let pokedexbutton: UIButton = {
        let pokedeximage = UIImage(named: "Pokedex.png") as UIImage?
        let pokebutton = UIButton(frame: CGRect(x: 70, y: 35, width: 260, height: 88))
        pokebutton.setImage(pokedeximage, for: [])
        return pokebutton
    } ()
    
    private let tableButton: UIButton = {
        let image = UIImage(named: "tableView.png") as UIImage?
        let button = UIButton(frame: CGRect(x: 334, y: 89, width: 50, height: 50))
        button.setImage(image, for: [])
        return button
    }()

    
    public func configure() {
        backgroundColor = .white
        addSubview(pokedexbutton)
        addSubview(tableButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

    }
    
}
