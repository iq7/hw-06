//
//  CoffeeDecorator.swift
//  homeWork_1
//
//  Created by Андрей Тихонов on 28/03/2019.
//  Copyright © 2019 Марат Нургалиев. All rights reserved.
//

import Foundation

protocol Coffee {
    var cost: Int { get }
}

protocol CoffeeDecorator: Coffee {
    var base: Coffee { get }
    init(base: Coffee)
}

class SimpleCoffee: Coffee {
    var cost: Int {
        return 100
    }
}

class Milk: CoffeeDecorator {
    let base: Coffee
    
    var cost: Int {
        return base.cost + 50
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class Whip: CoffeeDecorator {
    let base: Coffee
    
    var cost: Int {
        return base.cost + 75
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class Sugar: CoffeeDecorator {
    let base: Coffee
    
    var cost: Int {
        return base.cost + 25
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

func initCoffee() {
    let coffee = SimpleCoffee()
    let milkCoffee = Milk(base: coffee)
    let sugarCoffee = Sugar(base: coffee)
    let milkSugarCoffee = Milk(base: sugarCoffee)
    let whipCoffee = Whip(base: coffee)
    let milkSugarWhipCoffee = Milk(base: Sugar(base: Whip(base: coffee)))
    print("простой: \(coffee.cost)")
    print("простой с молоком: \(milkCoffee.cost)")
    print("простой с сахаром: \(sugarCoffee.cost)")
    print("простой с молоком и сахаром: \(milkSugarCoffee.cost)")
    print("простой со сливками: \(whipCoffee.cost)")
    print("простой с молоком, сахаром и сливками: \(milkSugarWhipCoffee.cost)")
}
