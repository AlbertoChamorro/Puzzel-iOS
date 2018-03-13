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
    static let margin: CGFloat = 2.0
    
    public static func buildLabel(view: UIView, positionX: CGFloat,
                                  margin: CGFloat, backgroundColor: UIColor = UIColor.cyan) -> UILabel {
    
        let height = view.frame.height/CGFloat(columsNum)
        let width = view.frame.width/CGFloat(rowsNum)
        
        let label = UILabel(frame: CGRect(x: positionX + margin, y: 0, width: width - margin, height: height))
        label.backgroundColor = backgroundColor
        
        return label
    }
    
    public static func buildBoxPuzzle(view: UIView){
    
        var positionX: CGFloat = 0
        
        for i in 0..<columsNum {
            let margin: CGFloat = i == 0 ? 0.0 : Helpers.margin
            let label = Helpers.buildLabel(view: view, positionX: positionX, margin: margin)
            view.addSubview(label)
            positionX = label.frame.origin.x + label.frame.width
        }
    }

}
