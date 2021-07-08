//
//  UIView.swift
//  testui
//
//  Created by user on 6/7/2021.
//

import UIKit
import SnapKit

extension UIWindow{
    
    static var keySafeAreaTop: CGFloat {
            let top = keySafeAreaInsets.top
            // For status bar 20px
            return top == 0 ? 20 : top// if top = 0{return top = 20}else return {top = top}
        }
        
        static var keySafeAreaBottom: CGFloat {
            return keySafeAreaInsets.bottom
        }
        
        static var keySafeAreaInsets: UIEdgeInsets {
           
            return UIEdgeInsets.zero//An edge insets struct whose top, left, bottom, and right fields are all set to 0.
        }
    
}
extension UIView {
    var safeArea : ConstraintLayoutGuideDSL {
        return safeAreaLayoutGuide.snp
    }
}
