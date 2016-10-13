//
//  UIView+Extention.swift
//  Relax
//
//  Created by 钟凡 on 16/9/27.
//  Copyright © 2016年 钟凡. All rights reserved.
//

import Foundation

extension UIView {

    public func clipToCircle() {
        let maskLayer = CAShapeLayer()
        clipsToBounds = true
        let xCenter = width * 0.5
        let yCenter = height * 0.5
        let center = CGPointMake(xCenter, yCenter)
        let radius = min(xCenter, yCenter)
        let lineW = max(xCenter, yCenter)

        let circlePath = UIBezierPath(arcCenter: center, radius: radius + lineW * 0.5, startAngle: 0, endAngle: CGFloat(M_PI * 2), clockwise: true)
        maskLayer.lineWidth = lineW
        maskLayer.strokeColor = UIColor.whiteColor().CGColor
        maskLayer.fillColor = nil
        maskLayer.path = circlePath.CGPath
        
        layer.addSublayer(maskLayer)
    }
}