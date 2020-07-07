//
//  Br.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

final class Br: GenericElement {
    override var tag: String {
        get {
            return "br"
        }
    }

    override var container: Bool {
        get {
            return false
        }
    }
}
