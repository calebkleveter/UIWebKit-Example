//
//  Main.swift
//  UIWebKit-Example
//
//  Created by Caleb Kleveter on 12/21/16.
//
//

import UIWebKit
import Vapor

final class MainView: UIWebPage {
    
    override func configure() {
        self.import(Dependency.bootstrap)
        addSectionText()
        addHead()
    }
    
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
}
