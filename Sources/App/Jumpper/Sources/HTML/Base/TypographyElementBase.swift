//
//  TypographyElementBase.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

class TypographyElementBase: GenericElement {
    public init<T>(_ element: T) {
        super.init()

        self.add(element)
    }

    override var container: Bool {
        get {
            return true
        }
    }

    func add<T>(_ element: T) {
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
