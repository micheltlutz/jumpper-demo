//
//  Canvas.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

public final class Canvas: GenericElement {
    override var tag: String {
        get {
            return "canvas"
        }
    }

    override var container: Bool {
        get {
            return true
        }
    }

    public func add<T>(_ element: T) {
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
