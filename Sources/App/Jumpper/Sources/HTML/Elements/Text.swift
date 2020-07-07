//
//  Text.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 01/07/20.
//

import Foundation

public class Text: Element {
    private let value: String

    public init(_ value: String) {
        self.value = value
    }

    public func getString() -> String {
        return value
    }

    public func generate() {
        print(value)
    }
}
