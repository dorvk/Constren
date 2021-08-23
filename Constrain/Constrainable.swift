//
//  Constrainable.swift
//  DCTools
//
//  Created by Doruk Çoban on 22.08.2021.
//

import UIKit

public protocol Constrainable {
    var constrain: ViewWrapper { get }
}

public extension Constrainable where Self: UIView {

    var constrain: ViewWrapper {
        get {
            translatesAutoresizingMaskIntoConstraints = false
            return ViewWrapper(self)
        }
    }
}

extension UIView: Constrainable {}
