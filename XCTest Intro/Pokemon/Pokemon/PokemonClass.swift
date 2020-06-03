//
//  PokemonClass.swift
//  Pokemon
//
//  Created by Thiago Magalhães Mendes Guimarães on 01/06/20.
//  Copyright © 2020 Thiago Magalhães Mendes Guimarães. All rights reserved.
//

import Foundation

class Pokemon {
    
    var type: PokemonType
    var attackType: PokemonAttackType
    var health: Int = 100
    var name: String
    var attackedCount = 0
    
    init(name: String, type: PokemonType, attackType: PokemonAttackType) {
        self.name = name
        self.type = type
        self.attackType = attackType
    }
    
    func attack(enemy: Pokemon) {
        
        var damage = 30
        
        if enemy.type == .fire && attackType == .water {
            damage = 60
        }
        
        if enemy.type == .water && attackType == .fire {
            damage = 10
        }
        
        enemy.health = enemy.health - damage
        enemy.attackedCount = enemy.attackedCount + 1
        
        print("\(self.name), ataque o \(enemy.name)!")
        print("\(self.name), \(self.name)!!")
    }
}

enum PokemonType {
    case neutral
    case fire
    case water
}

enum PokemonAttackType {
    case normal
    case fire
    case water
}
