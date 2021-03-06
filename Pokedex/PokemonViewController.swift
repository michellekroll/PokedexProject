//
//  ViewController.swift
//  Pokedex
//
//  Created by Michelle Kroll on 9/28/20.
//

import UIKit

var pokemons = PokemonGenerator.getPokemonArray()
fileprivate let searchBarHeight: Int = 28
var myIndex = 0

class PokemonViewController: UIViewController {

    @IBOutlet weak var pokedexTitle: UIImageView!
    @IBOutlet weak var switchtoGrid: UIButton!
    @IBOutlet var tableView: UITableView!
    var searchPokemon = [String] ()
    var filtered : [Pokemon] = []
    var searching = false
    @IBOutlet weak var advancedSearch: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 150, width: Int(UIScreen.main.bounds.width), height: searchBarHeight))
        view.addSubview(searchBar)
        searchBar.delegate = self
    }
    @IBAction func toAdvancedSearch(_ sender: UIButton) {
        performSegue(withIdentifier: "toAdvancedSearch", sender: self)
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toDetails" :
            let destinationVC = segue.destination as! DetailViewController
            if (searching) {
                destinationVC.detailedPokemon = filtered[myIndex]
            } else {
                destinationVC.detailedPokemon = pokemons[myIndex]
            }
        default: break
        }
    }
    
}

extension PokemonViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return filtered.count
        }
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! TableViewCell
        let pokemon: Pokemon
        if (searching) {
            pokemon = filtered[indexPath.row]
        } else {
            pokemon = pokemons[indexPath.row]
        }
        cell.contentView.layer.borderWidth = 2.0
        cell.contentView.layer.borderColor = UIColor.black.cgColor
        cell.backgroundColor = UIColor.systemGray5
        cell.tableName.text = pokemon.name
        cell.tableID.text = "#" + String(pokemon.id)
        if let url = URL(string: pokemon.imageUrl) {
            cell.tableImage.load(url: url)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "toDetails", sender: self)
    }
}

extension PokemonViewController: UISearchBarDelegate {
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searching = true
    }
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searching = false
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filtered.removeAll(keepingCapacity: false)
        let predicateString = searchBar.text!
        filtered = pokemons.filter({$0.name.contains(predicateString)})
        filtered.sort {$0.id < $1.id}
        searching = (filtered.count == 0) ? false: true
        if (predicateString == "") {
            filtered = pokemons
        }
        tableView.reloadData()
    }
}
