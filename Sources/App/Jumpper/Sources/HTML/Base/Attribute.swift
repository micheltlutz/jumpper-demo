//
//  Attribute.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 01/07/20.
//

import Foundation

public typealias AttributeType = (String, String?)

public final class Attribute {
    private var attributes: [AttributeType] = []

    public init(_ attributes: [AttributeType]){
        self.attributes = attributes
    }

    public func add(_ attr: AttributeType){
        attributes.append(attr)
    }

    public func getAll() -> [AttributeType] {
        return attributes
    }

    public func generate() -> String {
        var attrs: String = ""

        attributes.forEach { (attr, value) in
            if value == "#" {
                attrs += " " + attr;
            } else {
                if let value = value {
                    attrs += " " + attr + "='" + value + "'";
                } else {
                    attrs += " " + attr;
                }
            }
        }
        return attrs
    }

    public func getString() -> String {
        return self.generate()
    }
}
