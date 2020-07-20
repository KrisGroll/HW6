//
//  ViewController.swift
//  HW6
//
//  Created by KrisGroll on 20.07.2020.
//  Copyright © 2020 KrisGroll. All rights reserved.
//

import UIKit

import UIKit
import PlaygroundSupport


struct ChessGame{
    var name: String
    var score: Int
}

extension ChessGame: CustomStringConvertible{
    var description: String {
        return "Name: \(name), Score: \(score)"
    }
    
}

struct queue <T> {
     var items: [T] = []
     public var isEmpty: Bool {
     return items.count == 0
        
}

 mutating func particularQueue(item: T) {
        items.append(item)
    }
    mutating func anotherQueue()->T {
        return items.removeLast()
    }
    
    public var back: T? {
        if isEmpty {
            print("Array is empty due to lack of items.")
            return nil
            
        } else {
            print("Last item is \(items.last!)")
            return items.last
        }
    }
    
    public var front: T? {
        if isEmpty {
            print("Array is empty due to the fact that all items are not found.")
            return nil
            
        } else {
            print("First item is \(items.first!)")
            return items.first
        }
    }
    
    func theQueue() {
        print(items)
    }
}

extension queue {
    func myFilter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in items {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}

var gamers = queue<ChessGame>()

gamers.particularQueue(item: .init(name: "Sasha", score: 10))

gamers.particularQueue(item: .init(name: "Sam", score: 7))

gamers.particularQueue(item: .init(name: "Julia", score: 9))

gamers.particularQueue(item: .init(name: "Lana", score: 5))

gamers.particularQueue(item: .init(name: "Rue", score: 2))

var gameWinners = gamers.myFilter(predicate: {$0.score == 10})

print(gameWinners)

gamers.theQueue()
gamers.back
gamers.front

