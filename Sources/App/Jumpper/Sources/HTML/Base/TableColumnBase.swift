//
//  TableColumnBase.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 07/07/20.
//

import Foundation

public class TableColumnBase: GenericElement {
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
