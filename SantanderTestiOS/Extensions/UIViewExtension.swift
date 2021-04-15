//
//  UIViewExtension.swift
//  SantanderTestiOS
//
//  Created by Otavio Brito on 14/04/21.
//

import UIKit

// DEFINED RISK

extension UIView {
  func round(corners: UIRectCorner, radius: CGFloat) {
    let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    mask.path = path.cgPath
    self.layer.mask = mask
  }
}
