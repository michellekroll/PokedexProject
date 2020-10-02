//
//  CollectionReusableView.swift
//  Pokedex
//
//  Created by Michelle Kroll on 9/30/20.
//

import UIKit

class CollectionReusableView: UICollectionReusableView {
        
    static let identifier = "CollectionReusableView"
    
    private let pokedexbutton: UIButton = {
        let pokedeximage = UIImage(named: "Pokedex.png") as UIImage?
        let pokebutton = UIButton(frame: CGRect(x: 70, y: 24, width: 260, height: 88))
        pokebutton.setImage(pokedeximage, for: [])
        //pokebutton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        return pokebutton
    } ()
    
    private let tableButton: UIButton = {
        let image = UIImage(named: "tableView.png") as UIImage?
        let button = UIButton(frame: CGRect(x: 334, y: 89, width: 50, height: 50))
        button.setImage(image, for: [])
        //button.addTarget(self, action: #selector(backtoTableView), for: .touchUpInside)
        return button
    }()

    //@objc func backtoTableView() {
       // self.performSegue(withIdentifier: "toTable", sender: self)
    //}
    
    public func configure() {
        backgroundColor = .white
        addSubview(pokedexbutton)
        addSubview(tableButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

    }
    
}
