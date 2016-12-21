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
        content.text = "Another line"
        content.attributes["style"] = "color: green; font-size: 2rem;"
        for _ in 0...10 {
            section.children.append(content)
        }
    }
}
