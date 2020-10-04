//
//  DetailViewController2.swift
//  Pokedex
//
//  Created by Michelle Kroll on 10/4/20.
//

import UIKit

class DetailViewController2: UIViewController {

    @IBOutlet weak var pokemonName1: UILabel!
    @IBOutlet weak var pokemonID1: UILabel!
    @IBOutlet weak var pokemonPic1: UIImageView!
    @IBOutlet weak var pokemonAttack1: UILabel!
    @IBOutlet weak var pokemonDefense1: UILabel!
    @IBOutlet weak var pokemonHealth1: UILabel!
    @IBOutlet weak var pokemonSpecialAttack1: UILabel!
    @IBOutlet weak var pokemonSpeed1: UILabel!
    @IBOutlet weak var pokemonSpecialDefense1: UILabel!
    @IBOutlet weak var pokemonTotal1: UILabel!
    @IBOutlet weak var pokemonTypes1: UILabel!
    @IBOutlet weak var table1: UIButton!
    @IBOutlet weak var grid1: UIButton!
    
    override func viewDidLoad() {
            super.viewDidLoad()

            pokemonName1.text = pokemons[myIndex].name
            pokemonID1.text = "#" + String(pokemons[myIndex].id)
            if let url = URL(string: pokemons[myIndex].imageUrl) {
                pokemonPic1.load(url: url)
            }
            pokemonAttack1.text = "Attack: " + String(pokemons[myIndex].attack)
            pokemonDefense1.text = "Defense: " + String(pokemons[myIndex].defense)
            pokemonHealth1.text = "Health: " + String(pokemons[myIndex].health)
            pokemonSpecialAttack1.text = "Special Attack: " + String(pokemons[myIndex].specialAttack)
            pokemonSpecialDefense1.text = "Special Defense: " + String(pokemons[myIndex].specialDefense)
            pokemonSpeed1.text = "Speed: " + String(pokemons[myIndex].speed)
            pokemonTotal1.text = "Total: " + String(pokemons[myIndex].total)
            if pokemons[myIndex].types.count == 1 {
                pokemonTypes1.text = "Type(s): " + pokemons[myIndex].types[0].rawValue
            } else {
                pokemonTypes1.text = "Type(s): " + pokemons[myIndex].types[0].rawValue + ", " + pokemons[myIndex].types[1].rawValue
            }
        }
        

    
    @IBAction func backtoTable1(_ sender: UIButton) {
        performSegue(withIdentifier: "totable2", sender: self)
    }
    
    @IBAction func backtoGrid1(_ sender: UIButton) {
        performSegue(withIdentifier: "togrid2", sender: self)
    }
}
