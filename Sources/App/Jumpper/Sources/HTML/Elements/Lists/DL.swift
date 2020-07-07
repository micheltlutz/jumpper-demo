//
//  DL.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

final class DL: UL {
    override var tag: String {
        get {
            return "dl"
        }
    }

    override func add<T>(_ element: T) {
        if element is DT, element is DD {
            guard let genericElement = element as? Element else { return }

            objects.append(genericElement)
        } else {
            objects.append(DT(element))
        }
    }
}
