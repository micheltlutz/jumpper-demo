//
// MIT License
//
// Copyright (c) 2020 micheltlutz
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

import Foundation

struct DemoJumpper {
    // MARK: - Typography
    private func typography() -> GenericElement {
        let section = Section(("id","typography"), ("class","container"))

        let title = H3("Typography")
        title.addAttribute(("class","title"))
        title.addAttribute(("style","color: #99cc00;"))
        section.add(title)
        //
        let description = Blockquote()
        description.add("This is Typography blockquote demo.")
        section.add(description)
        //
        section.add(H1("Heading H1"))
        section.add(H2("Heading H2"))
        section.add(H3("Heading H3"))
        section.add(H4("Heading H4"))
        section.add(H5("Heading H5"))
        section.add(H6("Heading H6"))
        //
        let paragraph = P()
        paragraph.add("This is Typography Paragraph demo.")
        section.add(paragraph)
        section.add(Em("Emphasis"))
        section.add(Br())
        section.add(Small("Small"))
        section.add(Br())
        section.add(Strong("Strong"))
        section.add(Br())
        section.add(U("Underline"))

        return section
    }

    // MARK: - Buttons
    private func buttons() -> GenericElement {
        let section = Section(("id","buttons"), ("class","container"))

        let title = H3("Buttons")
        title.addAttribute(("class","title"))
        section.add(title)
        //
        let description = Blockquote()
        description.add("This is Buttons demo.")
        section.add(description)
        //
        let linkButton = Link(("href","#"), ("class","button"))
        linkButton.add("Default Button")
        section.add(linkButton)
        //
        let button = Button("Outlined Button")
        button.addAttribute(("class","button button-outline") )
        section.add(button)
        //
        let inputSubmit = Submit("Clear Button")
        inputSubmit.addAttribute(("class","button button-clear") )
        section.add(section.add(inputSubmit))

        return section
    }

    // MARK: - Lists
    private func lists() -> GenericElement {
        let section = Section(("id","lists"), ("class","container"))

        let title = H3("Lists")
        title.addAttribute(("class","title"))
        section.add(title)
        //
        let description = Blockquote()
        description.add("This is Lists demo.")
        section.add(description)
        //
        let ul = UL()
        ul.add("Unordered list item 1")
        ul.add("Unordered list item 2")
        section.add(ul)
        //
        let ol = OL()
        ol.add("Ordered list item 1")
        ol.add("Ordered list item 2")
        section.add(ol)
        //
        let dl = DL()
        dl.add("Description list item 1")
        let dd = DD("Description list item 1.1")
        dl.add(dd)
        section.add(dl)

        return section
    }
    // MARK: - Forms
    private func forms() -> GenericElement {
        let section = Section(("id","forms"), ("class","container"))

        let title = H3("Forms")
        title.addAttribute(("class","title"))
        section.add(title)
        //
        let description = Blockquote()
        description.add("This is Forms demo.")
        section.add(description)
        //
        let form = Form()
        //
        let fieldset = Fieldset()
        //
        let labelName = Label("Name")
        labelName.addAttribute(("for", "nameField"))
        fieldset.add(labelName)
        let inputName = InputText("", id: "nameField", placeholder: "Name")
        fieldset.add(inputName)
        //
        let labelAge = Label("Age Range")
        labelAge.addAttribute(("for", "ageRangeField"))
        fieldset.add(labelAge)

        let select = Select([["0-13": "0-13"],
                             ["14-17": "14-17"],
                             ["18-23": "18-23"]],
                            attr:("id", "ageRangeField"))

        fieldset.add(select)
        //
        let labelComment = Label("Comment")
        labelComment.addAttribute(("for", "commentField"))
        fieldset.add(labelComment)
        fieldset.add(Textarea(("placeholder", "Hi Mike …"), ("id", "commentField")))
        //
        let div = Div(("class", "float-right"))
        div.add(Checkbox("confirmField", id: "confirmField"))
        let labelConfirm = Label("Send a copy to yourself")
        labelConfirm.addAttribute(("for", "confirmField"))
        labelConfirm.addAttribute(("class", "label-inline"))
        div.add(labelConfirm)
        fieldset.add(div)
        //
        let inputSubmit = Submit("Send")
        inputSubmit.addAttribute(("class","button-primary") )
        fieldset.add(inputSubmit)
        //
        form.add(fieldset)
        
        section.add(form)
        return section
    }

    // MARK: - Table
    private func table() -> GenericElement {
        let section = Section(("id","table"), ("class","container"))

        let title = H3("Table")
        title.addAttribute(("class","title"))
        section.add(title)
        //
        let description = Blockquote()
        description.add("This is Table demo.")
        section.add(description)
        //

        let table = Table()
        table.tableHeaders(titles: ["Name", "Age", "Height", "Location"])
//        table.tableHeaders(titles: ["Name", "Age", "Height", "Location"], aligns: ["center", "left", "left", "left"])

        table.addRow()
        table.addInRow("Arthurito Thompson")
        table.addInRow("52")
        table.addInRow("1,30")
        table.addInRow("Torresmo, RS")
        table.addRow()
        table.addInRow("Stephen Curry")
        table.addInRow("27")
        table.addInRow("1,91")
        table.addInRow("Akron, OH")
        table.addRow()
        table.addInRow("Klay Thompson")
        table.addInRow("25")
        table.addInRow("2,01")
        table.addInRow("Los Angeles, CA")

        section.add(table)
        return section
    }

    // MARK: - Img
    private func img() -> GenericElement {
        let img = Img("images/banner.png")

        return img
    }

    // MARK: - Developed by
    private func developedBy() -> GenericElement {
        let clearDiv = Div(("class", "clearfix"))
        let divRight = Div(("class", "float-right"))

        let link = Link(("href","https://micheltlutz.me"), ("target","_blank"))
        link.add("Developed by Michel Lutz - micheltlutz.me 🚀")

        divRight.add(link)
        clearDiv.add(divRight)

        return clearDiv
    }

    // MARK: - Main
    func main() -> GenericElement {
        let main = Main(("class","wrapper"))
        main.add(img())
        main.add(Hr())
        main.add(typography())
        main.add(Hr())
        main.add(buttons())
        main.add(Hr())
        main.add(lists())
        main.add(Hr())
        main.add(forms())
        main.add(Hr())
        main.add(table())
        main.add(Hr())
        main.add(developedBy())

        return main
    }
}
