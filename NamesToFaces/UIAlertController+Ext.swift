//
//  UIAlertController+Ext.swift
//  NamesToFaces
//
//  Created by Giovanna Pezzini on 30/01/21.
//

import UIKit

extension UIAlertController {
    func pruneNegativeWidthConstraints() {
        for subView in self.view.subviews {
            for constraint in subView.constraints where constraint.debugDescription.contains("width == - 16") {
                subView.removeConstraint(constraint)
            }
        }
    }
}
