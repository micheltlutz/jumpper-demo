//
//  InputElementBase.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

public class InputElementBase: GenericElement {
    override var tag: String {
        get {
            return "input"
        }
    }

    override var container: Bool {
        get {
            return false
        }
    }

    public init(_ value: String, type: String) {
        super.init()

        self.addAttribute(("value", value))
        self.addAttribute(("type", type))
    }
}
