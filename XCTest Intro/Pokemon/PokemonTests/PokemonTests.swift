//
//  PokemonTests.swift
//  PokemonTests
//
//  Created by Thiago Magalhães Mendes Guimarães on 01/06/20.
//  Copyright © 2020 Thiago Magalhães Mendes Guimarães. All rights reserved.
//

import XCTest
@testable import Pokemon

class PokemonTests: XCTestCase {

    var squirtle: Pokemon!
    var charmander: Pokemon!
    var psyduck: Pokemon!
    
    override func setUp() {
      super.setUp()
      // Put setup code here. This method is called before the invocation of each test method in the class.
      squirtle = Pokemon(name: "Squirtle", type: .water, attackType: .water)
      charmander = Pokemon(name: "Charmander", type: .fire, attackType: .fire)
      psyduck = Pokemon(name: "Psyduck", type: .water, attackType: .water)
    }
    
    override func tearDown() {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
      super.tearDown()
      squirtle = nil
      charmander = nil
      psyduck = nil
    }
    
    func testThatAWaterPokemonDoesMoreDamageToAFirePokemon() {
      
      //1. Have Squirtle Attack Charmander
      squirtle.attack(enemy: charmander)
      //Ouch!
      
      //2. Now Have Squirtle Attack Psyduck
      squirtle.attack(enemy: psyduck)
      
      //Oooh. That had to hurt.
      
      //Who took more damage? Charmander or Psyduck?
      
      //If a Water Pokemon Does More Damage To A Fire Pokemon,
      //We would expect Charmander to have less health than Psyduck.
      
      //3. Test it
      XCTAssertTrue(charmander.health < psyduck.health)
      XCTAssertLessThan(charmander.health, psyduck.health)
    }
    
    func testAttack() {
        squirtle.attack(enemy: charmander)
        
        XCTAssertEqual(charmander.name, "Charmander")
        XCTAssertLessThan(charmander.health, 100)
        XCTAssertEqual(charmander.health, 40)
        XCTAssertEqual(charmander.attackedCount, 1)
    }
    
    func testPokemonAttackCompatibleWithType () {
        
        XCTAssertEqual(squirtle.attackType, PokemonAttackType.water)
        
    }

}
