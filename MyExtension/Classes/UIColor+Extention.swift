//
//  UIColor+Extention.swift
//  Pods
//
//  Created by 钟凡 on 16/10/26.
//
//
import UIKit
import Foundation

extension UIColor {
    convenience init(r:Int, g:Int, b:Int, alpha:CGFloat) {
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
    convenience init(hex:Int, alpha:CGFloat) {
        let r = (hex & 0xFF0000) >> 16
        let g = (hex & 0xFF00) >> 8
        let b = (hex & 0xFF)
        self.init(red: CGFloat() / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
}
