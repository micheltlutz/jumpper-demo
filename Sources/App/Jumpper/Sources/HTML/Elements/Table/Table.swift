//
//  Table.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 06/07/20.
//

import Foundation

public final class Table: GenericElement {
    private let tbody: TBody = TBody()

    private var thead: THead?
    private var rows: [Tr] = []
    private var actualIndexRow = 0

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

    public func tableHeaders(titles: [String], aligns: [String]? = nil, `class`: [String]? = nil) {
        thead = THead()

        for (index, title) in titles.enumerated() {
            let th = Th()
            th.add(title)

            if let aligns = aligns {
                let align = aligns[index]
                th.addAttribute(("align", align))
            }

            if let `class` = `class` {
                let classItem = `class`[index]
                th.addAttribute(("class", classItem))
            }
            thead?.add(th)
        }
    }

    @discardableResult
    public func addRow(_ attributes: AttributeType...) -> Tr {
        let tr = Tr(attributes)

        rows.append(tr)

        actualIndexRow += 1
        return tr
    }

    @discardableResult
    public func addInRow<T>(_ element: T, attributes: AttributeType...) -> Td {
        let td = Td(attributes)

        td.add(element)

        guard let lastRow = rows.last else {
            fatalError("‼️ [Wrong usage for addInRow] Use addRow first to create a new row")
        }

        lastRow.add(td)
        return td
    }

    public override func getString() -> String {
        var code = openTag()
        if let thead = thead {
            code += thead.getString()
        }

        rows.forEach { (row) in
            tbody.add(row)
        }

        code += tbody.getString()
        code += closeTag()
        return code
    }

    public override func generate() {
//        print(openTag())
//        if objects.count > 0 {
//            for obj in objects {
//                obj.generate()
//            }
//        }
//        print(closeTag())
    }
}
