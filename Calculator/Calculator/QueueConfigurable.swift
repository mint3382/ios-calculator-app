//
//  QueueConfigurable.swift
//  Calculator
//
//  Created by Whales on 2023/06/04.
//

protocol QueueConfigurable {
    associatedtype CalculateItem
    
    var queue: LinkedList<CalculateItem> { get }
    var count: Int { get }
    var isEmpty: Bool { get }
    
    mutating func enqueue(_ element: CalculateItem)
    
    mutating func dequeue()
    
    mutating func clearQueue()
}
