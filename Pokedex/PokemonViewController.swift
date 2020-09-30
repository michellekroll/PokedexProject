//
//  ViewController.swift
//  Pokedex
//
//  Created by Michelle Kroll on 9/28/20.
//

import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var switchtoGrid: UIButton!
    @IBOutlet var tableView: UITableView!
    var pokemons: [Pokemon] = PokemonGenerator.getPokemonArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
    }

    @IBAction func toGridView(_ sender: UIButton) {
        performSegue(withIdentifier: "toGrid", sender: self)
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.layer.masksToBounds = true
        tableView.layer.borderColor = UIColor.black.cgColor
        tableView.layer.borderWidth = 2.0
    }
    
    func setTableViewDelegates() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
}

extension PokemonViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! TableViewCell
        let cellIndex = indexPath.item
        let pokemon = pokemons[cellIndex]
        print(pokemon.imageUrl)
        if let url = URL(string: pokemon.imageUrl) {
            cell.tableImage.load(url: url)
        }
        cell.tableName.text = pokemon.name
        cell.tableID.text = "#" + String(pokemon.id)
        
        cell.contentView.layer.borderWidth = 2.0
        cell.contentView.layer.borderColor = UIColor.black.cgColor
        cell.backgroundColor = UIColor.systemGray5
        return cell
    }
}

