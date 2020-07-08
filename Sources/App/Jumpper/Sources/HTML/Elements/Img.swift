//
//  Img.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 07/07/20.
//

import Foundation

public final class Img: GenericElement {
    override var tag: String {
        get {
            return "img"
        }
    }

    override var container: Bool {
        get {
            return false
        }
    }

    public init(_ src: String, attributes: AttributeType...) {
        super.init(attributes)

        addAttribute(("src", src))
    }
}
