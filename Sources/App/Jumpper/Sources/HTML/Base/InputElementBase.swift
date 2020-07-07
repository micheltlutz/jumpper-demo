//
//  InputElementBase.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

class InputElementBase: GenericElement {
    override var tag: String {
        get {
            return "input"
        }
    }

    public init(_ value: String, type: String) {
        super.init()

        self.addAttribute(("value", value))
        self.addAttribute(("type", type))
    }

    override var container: Bool {
        get {
            return false
        }
    }
}
