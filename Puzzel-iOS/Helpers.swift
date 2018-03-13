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
    
    public static func buildLabel(view: UIView, backgroundColor: UIColor = UIColor.cyan) -> UILabel {
    
        let height = getHeightBoxElement(view: view)
        let width = getWidthBoxElement(view: view)
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: width - margin, height: height - margin))
        label.backgroundColor = backgroundColor
        
        return label
    }
    
    public static func buildBoxPuzzle(view: UIView){
    
        var titleCenterX: CGFloat = getWidthBoxElement(view: view) / 2
        let titleCenterY: CGFloat = getHeightBoxElement(view: view) / 2
        
        for _ in 0..<columsNum {
            let label = Helpers.buildLabel(view: view)
            label.center = CGPoint(x: titleCenterX, y: titleCenterY)
            view.addSubview(label)
            titleCenterX += getWidthBoxElement(view: view)
        }
    }
    
    public static func getHeightBoxElement(view: UIView) -> CGFloat{
        
        return view.frame.height/CGFloat(rowsNum)
    }

    public static func getWidthBoxElement(view: UIView) -> CGFloat{
        
        return view.frame.width/CGFloat(columsNum)
    }
}
