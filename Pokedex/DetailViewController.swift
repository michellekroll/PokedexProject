//
//  DetailViewController.swift
//  Pokedex
//
//  Created by Michelle Kroll on 10/1/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonID: UILabel!
    @IBOutlet weak var pokemonPic: UIImageView!
    @IBOutlet weak var pokemonAttack: UILabel!
    @IBOutlet weak var pokemonDefense: UILabel!
    @IBOutlet weak var pokemonHealth: UILabel!
    @IBOutlet weak var pokemonSpecialAttack: UILabel!
    @IBOutlet weak var pokemonSpecialDefense: UILabel!
    @IBOutlet weak var pokemonSpeed: UILabel!
    @IBOutlet weak var pokemonTotal: UILabel!
    @IBOutlet weak var pokemonTypes: UILabel!
    @IBOutlet weak var table: UIButton!
    @IBOutlet weak var grid: UIButton!
    var detailedPokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pokemonName.text = detailedPokemon.name
        pokemonID.text = "#" + String(detailedPokemon.id)
        if let url = URL(string: detailedPokemon.imageUrl) {
            pokemonPic.load(url: url)
        }
        pokemonAttack.text = "Attack: " + String(detailedPokemon.attack)
        pokemonDefense.text = "Defense: " + String(detailedPokemon.defense)
        pokemonHealth.text = "Health: " + String(detailedPokemon.health)
        pokemonSpecialAttack.text = "Special Attack: " + String(detailedPokemon.specialAttack)
        pokemonSpecialDefense.text = "Special Defense: " + String(detailedPokemon.specialDefense)
        pokemonSpeed.text = "Speed: " + String(detailedPokemon.speed)
        pokemonTotal.text = "Total: " + String(detailedPokemon.total)
        if detailedPokemon.types.count == 1 {
            pokemonTypes.text = "Type(s): " + detailedPokemon.types[0].rawValue
        } else {
            pokemonTypes.text = "Type(s): " + detailedPokemon.types[0].rawValue + ", " + detailedPokemon.types[1].rawValue
        }
    }
    
    @IBAction func backtoTable(_ sender: UIButton) {
        performSegue(withIdentifier: "backtoTable", sender: self)
    }
    
    @IBAction func backtoGrid(_ sender: UIButton) {
        performSegue(withIdentifier: "backtoGrid", sender: self)
        
    }
}

