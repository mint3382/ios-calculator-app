//
//  String+.swift
//  Calculator
//
//  Created by minsong kim on 2023/06/06.
//

import Foundation

extension String {
    func split(with target: Character) -> [String] {
        return self.components(separatedBy: String(target))
    }
}