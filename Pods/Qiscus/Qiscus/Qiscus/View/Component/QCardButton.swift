//
//  QCardButton.swift
//  Example
//
//  Created by Ahmad Athaullah on 7/31/17.
//  Copyright © 2017 Ahmad Athaullah. All rights reserved.
//

import UIKit

public enum QCardButtonType:Int{
    case link
    case postback
}
class QCardButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var type:QCardButtonType = .link
    var label:String = "" {
        didSet{
            self.setTitle(label, for: .normal)
        }
    }
    var payload:String = ""
}
