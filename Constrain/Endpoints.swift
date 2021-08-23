//
//  d+Layout.swift
//  DCTools
//
//  Created by Doruk Çoban on 21.08.2021.
//

import UIKit

public extension ViewWrapper {
    
    var rootView: UIView {
        return self_.superview ?? self_
    }
    
    @discardableResult
    func top(_ top: NSLayoutYAxisAnchor? = nil, spacing: CGFloat = 0) -> Self {
        let constraint = self_.topAnchor.constraint(equalTo: top ?? rootView.topAnchor, constant: spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func lead(_ lead: NSLayoutXAxisAnchor? = nil, spacing: CGFloat = 0) -> Self {
        let constraint = self_.leadingAnchor.constraint(equalTo: lead ?? rootView.leadingAnchor, constant: spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func left(_ left: NSLayoutXAxisAnchor? = nil, spacing: CGFloat = 0) -> Self {
        let constraint = self_.leftAnchor.constraint(equalTo: left ?? rootView.leftAnchor, constant: spacing)
        rootView.addConstraint(constraint)
        return self
    }

    @discardableResult
    func bot(_ bot: NSLayoutYAxisAnchor? = nil, spacing: CGFloat = 0) -> Self {
        let constraint = self_.bottomAnchor.constraint(equalTo: bot ?? rootView.bottomAnchor, constant: -spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func trail(_ trail: NSLayoutXAxisAnchor? = nil, spacing: CGFloat = 0) -> Self {
        let constraint = self_.trailingAnchor.constraint(equalTo: trail ?? rootView.trailingAnchor, constant: -spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func right(_ right: NSLayoutXAxisAnchor? = nil, spacing: CGFloat = 0) -> Self {
        let constraint = self_.rightAnchor.constraint(equalTo: right ?? rootView.rightAnchor, constant: -spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func centerY(_ center: NSLayoutYAxisAnchor? = nil, spacing: CGFloat = 0) -> Self {
        let constraint = self_.centerYAnchor.constraint(equalTo: center ?? rootView.centerYAnchor, constant: spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func centerX(_ center: NSLayoutXAxisAnchor? = nil, spacing: CGFloat = 0) -> Self {
        let constraint = self_.centerXAnchor.constraint(equalTo: center ?? rootView.centerXAnchor, constant: spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func width(_ constant: CGFloat) -> Self {
        let constraint = self_.widthAnchor.constraint(equalToConstant: constant)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func height(_ constant: CGFloat) -> Self {
        let constraint = self_.heightAnchor.constraint(equalToConstant: constant)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func centered(ySpacing: CGFloat = 0, xSpacing: CGFloat = 0) -> Self {
        return self.centerX(spacing: xSpacing)
                   .centerY(spacing: ySpacing)
    }
    
    @discardableResult
    func leftRight(_ spacing: CGFloat = 0) -> Self {
        return self.lead(rootView.leadingAnchor, spacing: spacing)
                   .trail(rootView.trailingAnchor, spacing: spacing)
    }
    
    @discardableResult
    func makeSquare(_ constant: CGFloat) -> Self {
        return self.height(constant)
                   .width(constant)
    }
    
    func fillSuperview(_ spacing: CGFloat = 0) {
        self.top(rootView.topAnchor, spacing: spacing)
            .lead(rootView.leadingAnchor, spacing: spacing)
            .trail(rootView.trailingAnchor, spacing: spacing)
            .bot(rootView.bottomAnchor, spacing: spacing)
    }
}

