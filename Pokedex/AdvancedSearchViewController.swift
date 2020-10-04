//
//  AdvancedSearchViewController.swift
//  Pokedex
//
//  Created by Michelle Kroll on 10/3/20.
//

import UIKit

class AdvancedSearchViewController: UIViewController {
    
    @IBOutlet weak var advancedSearchLabel: UILabel!
    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var attackMinText: UITextField!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var attackMaxText: UITextField!
    @IBOutlet weak var defenseMinText: UITextField!
    @IBOutlet weak var defenseMaxText: UITextField!
    @IBOutlet weak var specialAttackLabel: UILabel!
    @IBOutlet weak var specialAttackMinText: UITextField!
    @IBOutlet weak var specialAttackMaxText: UITextField!
    @IBOutlet weak var specialDefenseLabel: UILabel!
    @IBOutlet weak var specialDefenseMinText: UITextField!
    @IBOutlet weak var specialDefenseMaxText: UITextField!
    @IBOutlet weak var healthLabel: UILabel!
    @IBOutlet weak var healthMinText: UITextField!
    @IBOutlet weak var healthMaxText: UITextField!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var speedMinText: UITextField!
    @IBOutlet weak var speedMaxText: UITextField!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var type1Button: UIButton!
    @IBOutlet weak var type2Button: UIButton!
    var pokemons = PokemonGenerator.getPokemonArray()
    var attackMin = 0
    var attackMax = 255
    var defenseMin = 0
    var defenseMax = 255
    var spAttackMin = 0
    var spAttackMax = 255
    var spDefenseMin = 0
    var spDefenseMax = 255
    var healthMin = 0
    var healthMax = 255
    var speedMin = 0
    var speedMax = 255
    var type1 = ""
    var type2 = ""
    
    func setValues() {

        attackMin = Int(attackMinText.text ?? "") ?? 0
        attackMax = Int(attackMaxText.text ?? "") ?? 255
        defenseMin = Int(defenseMinText.text ?? "") ?? 0
        defenseMax = Int(defenseMaxText.text ?? "") ?? 255
        spAttackMin = Int(specialAttackMinText.text ?? "") ?? 0
        spAttackMax = Int(specialAttackMaxText.text ?? "") ?? 255
        spDefenseMin = Int(specialDefenseMinText.text ?? "") ?? 0
        spDefenseMax = Int(specialDefenseMaxText.text ?? "") ?? 255
        healthMin = Int(healthMinText.text ?? "") ?? 0
        healthMax = Int(healthMaxText.text ?? "") ?? 255
        speedMin = Int(speedMinText.text ?? "") ?? 0
        speedMax = Int(speedMaxText.text ?? "") ?? 255
             
        if (attackMin < 0) { attackMin = 0 }
        if (defenseMin < 0) { defenseMin = 0 }
        if (spAttackMin < 0) { spAttackMin = 0 }
        if (spDefenseMin < 0) { spDefenseMin = 0 }
        if (healthMin < 0) { healthMin = 0 }
        if (speedMin < 0) { speedMin = 0 }
        if (attackMax > 255) { attackMax = 255 }
        if (defenseMax > 255) { defenseMax = 255 }
        if (spAttackMax > 255) { spAttackMax = 255 }
        if (spDefenseMax > 255) { spDefenseMax = 255 }
        if (healthMax > 255) { healthMax = 255 }
        if (speedMax > 255) { speedMax = 255 }
         }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
