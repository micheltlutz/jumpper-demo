//
//  Select.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

public typealias SelectOptionsType = [[String: CustomStringConvertible]]

class Select: GenericElement {
    override var tag: String {
        get {
            return "select"
        }
    }

    override var container: Bool {
        get {
            return true
        }
    }
    public private (set) var options: SelectOptionsType = []

    public init(_ options: SelectOptionsType, attr: AttributeType) {
        super.init(attr)

        self.options = options

        self.makeOptions()
    }

    private func makeOptions() {
        options.forEach { (optionDic) in
            optionDic.forEach { (kvArg) in
                let (key, value) = kvArg
                let option = Option(key, text: value)
                objects.append(option)
            }
        }
    }
}
