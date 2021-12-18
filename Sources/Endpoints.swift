//
//  Endpoints.swift
//  Constren
//
//  Created by Doruk Çoban on 21.08.2021.
//

import UIKit

public extension ViewWrapper {

    var rootView: UIView {
        return self_.superview ?? self_
    }
    
    var asNSLayoutConstraint: NSLayoutConstraint? {
        rootView.constraints.last
    }
    
    @discardableResult
    func top(_ top: NSLayoutYAxisAnchor? = nil,
             spacing: CGFloat = 0,
             relation: Relation_ = .equal) -> Self {
        
        let constraint = self_.topAnchor.constraint(relation: relation.rawValue,
                                                    anchor: top ?? rootView.topAnchor,
                                                    constant: spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func lead(_ lead: NSLayoutXAxisAnchor? = nil,
              spacing: CGFloat = 0,
              relation: Relation_ = .equal) -> Self {
        
        let constraint = self_.leadingAnchor.constraint(relation: relation.rawValue,
                                                        anchor: lead ?? rootView.leadingAnchor,
                                                        constant: spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func left(_ left: NSLayoutXAxisAnchor? = nil,
              spacing: CGFloat = 0,
              relation: Relation_ = .equal) -> Self {
        
        let constraint = self_.leftAnchor.constraint(relation: relation.rawValue,
                                                     anchor: left ?? rootView.leftAnchor,
                                                     constant: spacing)
        rootView.addConstraint(constraint)
        return self
    }

    @discardableResult
    func bot(_ bot: NSLayoutYAxisAnchor? = nil,
             spacing: CGFloat = 0,
             relation: Relation_ = .equal) -> Self {
        
        let constraint = self_.bottomAnchor.constraint(relation: relation.rawValue,
                                                       anchor: bot ?? rootView.bottomAnchor,
                                                       constant: -spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func trail(_ trail: NSLayoutXAxisAnchor? = nil,
               spacing: CGFloat = 0,
               relation: Relation_ = .equal) -> Self {
        
        let constraint = self_.trailingAnchor.constraint(relation: relation.rawValue,
                                                         anchor: trail ?? rootView.trailingAnchor,
                                                         constant: -spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func right(_ right: NSLayoutXAxisAnchor? = nil,
               spacing: CGFloat = 0,
               relation: Relation_ = .equal) -> Self {
        
        let constraint = self_.rightAnchor.constraint(relation: relation.rawValue,
                                                      anchor: right ?? rootView.rightAnchor,
                                                      constant: -spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func centerY(_ centerY: NSLayoutYAxisAnchor? = nil,
                 spacing: CGFloat = 0,
                 relation: Relation_ = .equal) -> Self {
        
        let constraint = self_.centerYAnchor.constraint(relation: relation.rawValue,
                                                        anchor: centerY ?? rootView.centerYAnchor,
                                                        constant: spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func centerX(_ centerX: NSLayoutXAxisAnchor? = nil,
                 spacing: CGFloat = 0,
                 relation: Relation_ = .equal) -> Self {
        
        let constraint = self_.centerXAnchor.constraint(relation: relation.rawValue,
                                                        anchor: centerX ?? rootView.centerXAnchor,
                                                        constant: spacing)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func centered(y: CGFloat = 0,
                  x: CGFloat = 0) -> Self {
        return self.centerX(spacing: x)
                   .centerY(spacing: y)
    }
    
    @discardableResult
    func width(_ constant: CGFloat,
               relation: Relation_ = .equal) -> Self {
        
        let constraint = self_.widthAnchor.constraint(relation: relation.rawValue,
                                                      constant: constant)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func height(_ constant: CGFloat,
                relation: Relation_ = .equal) -> Self {
        
        let constraint = self_.heightAnchor.constraint(relation: relation.rawValue,
                                                       constant: constant)
        rootView.addConstraint(constraint)
        return self
    }
    
    @discardableResult
    func squared(_ size: CGFloat) -> Self {
        return self.height(size)
                   .width(size)
    }
    
    @discardableResult
    func horizontalFill(lead: CGFloat = 0,
                        trail: CGFloat = 0) -> Self {
        return self.lead(rootView.leadingAnchor, spacing: lead)
                   .trail(rootView.trailingAnchor, spacing: trail)
    }
    
    @discardableResult
    func verticalFill(top: CGFloat = 0,
                      bot: CGFloat = 0) -> Self {
        return self.top(rootView.topAnchor, spacing: top)
                   .bot(rootView.bottomAnchor, spacing: bot)
    }
    
    func fill(top: CGFloat = 0,
              lead: CGFloat = 0,
              trail: CGFloat = 0,
              bot: CGFloat = 0) {
        self.top(rootView.topAnchor, spacing: top)
            .lead(rootView.leadingAnchor, spacing: lead)
            .trail(rootView.trailingAnchor, spacing: trail)
            .bot(rootView.bottomAnchor, spacing: bot)
    }
}
