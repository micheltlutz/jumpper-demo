//
//  Option.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

final class Option: GenericElement {
    override var tag: String {
        get {
            return "option"
        }
    }

    override var container: Bool {
        get {
            return true
        }
    }

    public init(_ value: CustomStringConvertible, text: CustomStringConvertible) {
        super.init()

        addAttribute(("value", value.description))
        objects.append(Text(text.description))
    }
}
