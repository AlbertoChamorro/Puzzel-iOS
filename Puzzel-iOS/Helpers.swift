//
//  Helpers.swift
//  Puzzel-iOS
//
//  Created by CoreDeveloper on 3/12/18.
//  Copyright © 2018 CoreDeveloper. All rights reserved.
//

import Foundation
import UIKit

public class Helpers {
    
    static let columsNum: Int = 4
    static let rowsNum: Int   = 4
    
    public static func buildLabel(view: UIView, backgroundColor: UIColor = UIColor.cyan) -> UILabel {
    
        let height = view.frame.height/CGFloat(columsNum)
        let width = view.frame.width/CGFloat(rowsNum)
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height))
        label.backgroundColor = backgroundColor
        
        return label
    }

}
