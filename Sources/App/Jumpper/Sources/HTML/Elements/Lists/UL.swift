//
//  UL.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

class UL: GenericElement {
    override var tag: String {
        get {
            return "ul"
        }
    }

    override var container: Bool {
        get {
            return true
        }
    }

    func add<T>(_ element: T) {
        if element is LI {
            guard let genericElement = element as? Element else { return }

            objects.append(genericElement)
        } else {
            objects.append(LI(element))
        }
    }

    private func factoryTextWith(_ text: String) -> Text {
        return Text(text)
    }
}
