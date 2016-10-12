//
//  UITableViewCell + Badge.swift
//  MyRill
//
//  Created by 钟凡 on 16/8/12.
//
//

import UIKit

extension UITableViewCell {
    func showBadge(title:String) {
        for view in subviews {
            if view.tag == 888 {
                view.hidden = false
                return
            }
        }
        let redBadge = UILabel()
        redBadge.text = title
        redBadge.textColor = UIColor.whiteColor()
        redBadge.textAlignment = NSTextAlignment.Center
        redBadge.font = UIFont.systemFontOfSize(14)
        redBadge.frame = CGRectMake(UIScreen.mainScreen().bounds.width - 70, height * 0.5 - 8, 40, 18)
        redBadge.layer.cornerRadius = 9
        redBadge.layer.masksToBounds = true
        redBadge.tag = 888
        redBadge.backgroundColor = UIColor.redColor()
        addSubview(redBadge)
    }
    func hideBadge() {
        for view in subviews {
            if view.tag == 888 {
                view.hidden = true
            }
        }
    }

}
