//
//  UITabBar+Custom.swift
//  testTabbar
//
//  Created by 钟凡 on 16/6/12.
//  Copyright © 2016年 钟凡. All rights reserved.
//

import UIKit
extension UITabBar {
    public func showBadgeOnItemIndex(index:Int) {
        for view in subviews {
            if view.tag == 888 + index {
                view.hidden = false
                return
            }
        }
        let count = self.items?.count ?? 0
        let redBadge = UIView()
        let width = (self.bounds.width / CGFloat(count))
        redBadge.frame = CGRectMake(width * CGFloat(index + 1) - 20, 4, 10, 10)
        redBadge.layer.cornerRadius = 5
        redBadge.layer.masksToBounds = true
        redBadge.tag = 888 + index
        redBadge.backgroundColor = UIColor.redColor()
        addSubview(redBadge)
    }
    public func hideBadgeOnItemIndex(index:Int) {
        for view in subviews {
            if view.tag == 888 + index {
                view.hidden = true
            }
        }
    }
}
