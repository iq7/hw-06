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
    var additionCoast: Int { get }
    init(base: Coffee)
}

extension CoffeeDecorator {
    var cost: Int {
        return self.base.cost + self.additionCoast
    }
}

class SimpleCoffee: Coffee {
    var cost: Int {
        return 100
    }
}

class Milk: CoffeeDecorator {
    let base: Coffee
    var additionCoast: Int {
        return 50
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class Whip: CoffeeDecorator {
    let base: Coffee
    var additionCoast: Int {
        return 75
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class Sugar: CoffeeDecorator {
    let base: Coffee
    var additionCoast: Int {
        return 25
    }
    // Оставил для примера
    // var cost: Int {
    //    return self.base.cost + self.additionCoast
    // }
    
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
