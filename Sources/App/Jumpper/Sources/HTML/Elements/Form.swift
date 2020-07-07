//
//  Form.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

final class Form: GenericElement {
    override var tag: String {
        get {
            return "form"
        }
    }

    override var container: Bool {
        get {
            return true
        }
    }

    func add(_ element: GenericElement) {
        objects.append(element)
    }
}
