//
//  Dice.swift
//  Skate-Or-Dice
//
//  Created by Michael Granberry II on 2/12/21.
//

import Foundation
import UIKit

class Dice {
    let orientation : Array = [#imageLiteral(resourceName: "Frontside"),#imageLiteral(resourceName: "Backside"),#imageLiteral(resourceName: "Skate Or Dice"),#imageLiteral(resourceName: "Skateboards")]
    let stance : Array =      [#imageLiteral(resourceName: "Ollie"),#imageLiteral(resourceName: "Fakie"),#imageLiteral(resourceName: "Switch"),#imageLiteral(resourceName: "Nollie"),#imageLiteral(resourceName: "Skate Or Dice"),#imageLiteral(resourceName: "Skateboards")]
    let spin : Array =        [#imageLiteral(resourceName: "360"),#imageLiteral(resourceName: "180"),#imageLiteral(resourceName: "0"),#imageLiteral(resourceName: "Skate Or Dice"),#imageLiteral(resourceName: "Skateboards")]
    let flip : Array =        [#imageLiteral(resourceName: "Kickflip"),#imageLiteral(resourceName: "Heelflip"),#imageLiteral(resourceName: "Skateboards"),#imageLiteral(resourceName: "Skate Or Dice")]
    var diceImage : Array = [#imageLiteral(resourceName: "Frontside"),#imageLiteral(resourceName: "Backside"),#imageLiteral(resourceName: "Skate Or Dice"),#imageLiteral(resourceName: "Skateboards")]

    func rollDice() {
        diceImage[0] = orientation.randomElement()!
        diceImage[1] = stance.randomElement()!
        diceImage[2] = spin.randomElement()!
        diceImage[3] = flip.randomElement()!
    }
    
}
