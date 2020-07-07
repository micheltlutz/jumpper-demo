//
//  Textarea.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

final class Textarea: GenericElement {
    override var tag: String {
        get {
            return "textarea"
        }
    }

    override var container: Bool {
        get {
            return true
        }
    }

    func add(_ text: String) {
        objects.append(Text(text))
    }
}
