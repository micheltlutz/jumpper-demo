//
//  Checkbox.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

class Checkbox: InputElementBase {
    init(_ name: String, id: String?) {
        super.init("", type: "checkbox")

        addAttribute(("name", name))

        if let id = id {
            addAttribute(("id", id))
        }
    }
}
