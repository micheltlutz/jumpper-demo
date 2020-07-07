//
//  Hr.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

final class Hr: GenericElement {
    override var tag: String {
        get {
            return "hr"
        }
    }

    override var container: Bool {
        get {
            return false
        }
    }
}
