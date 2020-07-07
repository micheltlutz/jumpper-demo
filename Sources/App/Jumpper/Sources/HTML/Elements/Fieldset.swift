//
//  Fieldset.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

final class Fieldset: GenericElement {
    override var tag: String {
        get {
            return "fieldset"
        }
    }

    override var container: Bool {
        get {
            return true
        }
    }

    func add<T>(_ element: T) {
        guard let genericElement = element as? Element else { return }

        objects.append(genericElement)
    }
}
