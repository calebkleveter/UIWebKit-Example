//
//  Main.swift
//  UIWebKit-Example
//
//  Created by Caleb Kleveter on 12/21/16.
//
//

import Foundation
import UIWebKit
import Vapor

final class MainView {
    let head = UIElement(element: Element.head)
    let header = UIElement(element: Element.header)
    let section = UIElement(element: Element.section)
    let footer = UIElement(element: Element.footer)
    
    func addSectionText() {
        let content = UIElement(element: Element.p)
        content.add("Text")
        content.attributes["style"] = "font-family: Roboto, sans-serif;"
        for _ in 0...10 {
            section.add(content)
        }
    }
    
    func addHead() {
        let title = UIElement(element: .title)
        title.add("UIWebKit Example")
        let link = UIElement(element: .link)
        link.attributes["rel"] = "stylesheet"
        link.attributes["href"] = "https://fonts.googleapis.com/css?family=Roboto"
        head.add(title)
        head.add(link)
    }
    
    func render(with drop: Droplet) -> String? {
        self.addHead()
        self.addSectionText()
        let page = UIWebPage(head: head, header: header, section: section, footer: footer)
        page.add(drop)
        page.import(.jQuery)
        do {
            return try page.render()
        } catch let error {
            print("Web Page Error: ", error)
        }
        return nil
    }
}
