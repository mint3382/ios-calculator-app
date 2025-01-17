//
//  CalculatorItemQueue.swift
//  Calculator
//
//  Created by mint on 2023/05/30.
//

import Foundation

struct CalculatorItemQueue<T: CalculateItem> {
    private var enqueueStack: [T] = []
    private var dequeueStack: [T] = []
    var count: Int {
        return enqueueStack.count + dequeueStack.count
    }
    var isEmpty: Bool {
        return enqueueStack.isEmpty && dequeueStack.isEmpty
    }
    var first: T? {
        if dequeueStack.isEmpty {
            return enqueueStack.first
        } else {
            return dequeueStack.last
        }
    }
    var last: T? {
        if enqueueStack.isEmpty {
            return dequeueStack.first
        } else {
            return enqueueStack.last
        }
    }
    
    mutating func enqueue(_ input: T) {
        enqueueStack.append(input)
    }
    
    mutating func dequeue() -> T? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        
        return dequeueStack.popLast()
    }
    
    mutating func clear() {
        enqueueStack.removeAll()
        dequeueStack.removeAll()
    }
}
