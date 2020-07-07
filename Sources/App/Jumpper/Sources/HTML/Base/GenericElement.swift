//
//  GenericElement.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 01/07/20.
//

import Foundation

public class GenericElement: Element {
    public var attributes: [AttributeType] = []
    private(set) var tag: String = ""
    private(set) var container: Bool = false
    private(set) var formElement: Bool = false
    public var objects: [Element] = [Element]()

    public init(_ attributes: AttributeType...){
        self.attributes = attributes
    }

    public func addAttribute(_ attr: AttributeType) {
        attributes.append(attr)
    }

    private func openTag() -> String {
        let attr = Attribute(attributes)

        return "<\(tag)\(attr.generate())>"
    }

    private func closeTag() -> String {
        return "</"+tag+">"
    }

    public func getString() -> String {
        var code = openTag()

        if objects.count > 0 {
            for obj in objects {
                code += obj.getString()
            }
        }
        code += closeTag()
        return code
    }

    public func generate() {
        print(openTag())
        if objects.count > 0 {
            for obj in objects {
                obj.generate()
            }
        }
        print(closeTag())
    }
}
