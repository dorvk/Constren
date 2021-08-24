//
//  Constrainable.swift
//  Constren
//
//  Created by Doruk Çoban on 22.08.2021.
//

import UIKit

public protocol Constrainable {
    var constren: ViewWrapper { get }
}

public extension Constrainable where Self: UIView {

    var constren: ViewWrapper {
        get { return ViewWrapper(self) }
    }
}

extension UIView: Constrainable {}
