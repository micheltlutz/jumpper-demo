//
//  InputText.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

class InputText: InputElementBase {
    init(_ value: String, id: String? ,placeholder: String?) {
        super.init(value, type: "text")

        if let placeholder = placeholder {
            addAttribute(("placeholder", placeholder))
        }

        if let id = id {
            addAttribute(("id", id))
        }
    }
}
