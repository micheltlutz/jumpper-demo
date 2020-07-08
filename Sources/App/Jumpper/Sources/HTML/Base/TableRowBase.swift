//
//  TableRowBase.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 07/07/20.
//

import Foundation

public class TableRowBase: GenericElement {
    override var container: Bool {
        get {
            return true
        }
    }

    public func add<T>(_ element: T) {
        guard let genericElement = element as? Element else { return }

        objects.append(genericElement)
    }
}
