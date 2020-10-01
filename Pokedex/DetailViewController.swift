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
    @IBOutlet weak var back: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pokemonName.text = pokemons[myIndex].name
        pokemonID.text = "#" + String(pokemons[myIndex].id)
        if let url = URL(string: pokemons[myIndex].imageUrl) {
            pokemonPic.load(url: url)
        }
        pokemonAttack.text = "Attack: " + String(pokemons[myIndex].attack)
        pokemonDefense.text = "Defense: " + String(pokemons[myIndex].defense)
        pokemonHealth.text = "Health: " + String(pokemons[myIndex].health)
        pokemonSpecialAttack.text = "Special Attack: " + String(pokemons[myIndex].specialAttack)
        pokemonSpecialDefense.text = "Special Defense: " + String(pokemons[myIndex].specialDefense)
        pokemonSpeed.text = "Speed: " + String(pokemons[myIndex].speed)
        pokemonTotal.text = "Total: " + String(pokemons[myIndex].total)
        if pokemons[myIndex].types.count == 1 {
            pokemonTypes.text = "Type(s): " + pokemons[myIndex].types[0].rawValue
        } else {
            pokemonTypes.text = "Type(s): " + pokemons[myIndex].types[0].rawValue + ", " + pokemons[myIndex].types[1].rawValue
        }
    }
    
    @IBAction func toTable(_ sender: UIButton) {
        performSegue(withIdentifier: "backtoTable", sender: self)
    }
    @IBAction func toGrid(_ sender: UIButton) {
        performSegue(withIdentifier: "backtoGrid", sender: self)

    }
}

