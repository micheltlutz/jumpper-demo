//
//  LI.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

class LI: GenericElement {
    override var tag: String {
        get {
            return "li"
        }
    }

    override var container: Bool {
        get {
            return true
        }
    }

    init<T>(_ element: T) {
        super.init()
        if let textElement = element as? String {
            let text = factoryTextWith(textElement)

            objects.append(text)
        } else {
            guard let genericElement = element as? Element else { return }

            objects.append(genericElement)
        }
    }

    private func factoryTextWith(_ text: String) -> Text {
        return Text(text)
    }
}
