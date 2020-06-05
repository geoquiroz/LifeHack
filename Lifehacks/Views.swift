//
//  RoundImageView.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 4/15/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class RoundImageView: UIImageView {}
@IBDesignable class RoundTextField: UITextField {}
@IBDesignable class RoundTextView: UITextView {}


extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
        set { layer.borderColor = newValue?.cgColor }
    }
    
    @IBDesignable class RoundTextField: UITextField {
        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            var rect = super.editingRect(forBounds: bounds)
            rect.origin.x += 12.0
            return rect
        }
    }
     
    @IBDesignable class RoundTextView: UITextView {
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            textContainerInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        }
    }

    
}

