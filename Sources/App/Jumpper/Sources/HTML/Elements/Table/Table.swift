//
//  Table.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

final class Table: GenericElement {
    override var tag: String {
        get {
            return "table"
        }
    }

    override var container: Bool {
        get {
            return true
        }
    }

    func addRow(id: String, class: String) {

    }

    func addInRow<T>(_ element: T, id: String?, class: String?) {

    }
    
//    func add<T>(_ element: T) {
//        if let textElement = element as? String {
//            let text = factoryTextWith(textElement)
//
//            objects.append(text)
//        } else {
//            guard let genericElement = element as? Element else { return }
//
//            objects.append(genericElement)
//        }
//    }

//    private func factoryTextWith(_ text: String) -> Text {
//        return Text(text)
//    }
}
