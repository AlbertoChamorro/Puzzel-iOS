//
//  ViewController.swift
//  Puzzel-iOS
//
//  Created by CoreDeveloper on 3/12/18.
//  Copyright © 2018 CoreDeveloper. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    @IBOutlet var puzzleContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Helpers.buildBoxPuzzle(view: self.puzzleContainerView)
        
    }
}

