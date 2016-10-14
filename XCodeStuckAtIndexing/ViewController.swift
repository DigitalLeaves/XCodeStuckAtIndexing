//
//  ViewController.swift
//  XCodeStuckAtIndexing
//
//  Created by Ignacio Nieto Carvajal on 14/10/16.
//  Copyright © 2016 Ignacio Nieto Carvajal. All rights reserved.
//

import UIKit

// private consts
private let kDLNumericKeyboardNormalImage = UIImage(named: "numericKeyBackground")!
private let kDLNumericKeyboardPressedImage = UIImage(named: "pressedNumericKeyBackground")!

class ViewController: UIViewController {
    // MARK: - outlets
    // numbers
    @IBOutlet weak var buttonKey0: UIButton!
    @IBOutlet weak var buttonKey1: UIButton!
    @IBOutlet weak var buttonKey2: UIButton!
    @IBOutlet weak var buttonKey3: UIButton!
    @IBOutlet weak var buttonKey4: UIButton!
    @IBOutlet weak var buttonKey5: UIButton!
    @IBOutlet weak var buttonKey6: UIButton!
    @IBOutlet weak var buttonKey7: UIButton!
    @IBOutlet weak var buttonKey8: UIButton!
    @IBOutlet weak var buttonKey9: UIButton!
    // backspace
    @IBOutlet weak var buttonKeyBackspace: UIButton!
    // symbols
    @IBOutlet weak var buttonKeyLeftParenthesis: UIButton!
    @IBOutlet weak var buttonKeyRightParenthesis: UIButton!
    @IBOutlet weak var buttonKeyPoint: UIButton!
    @IBOutlet weak var buttonKeyComma: UIButton!
    @IBOutlet weak var buttonKeyHyphen: UIButton!
    
    // appearance variables
    var normalBackgroundImage = kDLNumericKeyboardNormalImage { didSet { updateButtonsAppearance() } }
    var pressedBackgroundImage = kDLNumericKeyboardPressedImage { didSet { updateButtonsAppearance() } }
    var normalFontColor = UIColor.black { didSet { updateButtonsAppearance() } }
    var pressedFontColor = UIColor.white { didSet { updateButtonsAppearance() } }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        updateButtonsAppearance()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Un-comment this method to make XCode stuck forever at "indexing"
    fileprivate func updateButtonsAppearance() {
        /*
        for button in [buttonKey0, buttonKey1, buttonKey2, buttonKey3, buttonKey4, buttonKey5, buttonKey6, buttonKey7, buttonKey8, buttonKey9, buttonKeyLeftParenthesis, buttonKeyRightParenthesis, buttonKeyPoint, buttonKeyComma, buttonKeyHyphen] {
            button?.setTitleColor(normalFontColor, for: .normal)
            button?.setTitleColor(pressedFontColor, for: [.selected, .highlighted])
            button?.setBackgroundImage(normalBackgroundImage, for: .normal)
            button?.setBackgroundImage(pressedBackgroundImage, for: [.selected, .highlighted])
        }
         */
    }
    
    // Un-comment the line below to get a weird error indicating that the expression is too complex (sigh).
    func thisCalculationIsOhSoComplex() {
        let inputRadius = 1.0
        //let radius = UInt32(floor(inputRadius * 3.0 * CGFloat(sqrt(2 * M_PI)) / 4 + 0.5))
    }
    
}

