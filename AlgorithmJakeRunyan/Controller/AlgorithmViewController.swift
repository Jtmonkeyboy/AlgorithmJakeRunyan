//
//  ViewController.swift
//  AlgorithmJakeRunyan
//
//  Created by Runyan, Jacob on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{

    @IBOutlet weak var algorithmText: UILabel!
    @IBOutlet weak var swiftImage: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func formatAlgorithm() -> Void
    {
        let title : String = "How to make an IOS app"
        
        let step1 : String = "First open up Xcode"
        let step2 : String = "Click on 'Create a new Xcode project'"
        let step3 : String = "Make sure that you have 'IOS' and 'Single View App'."
        let step4 : String = "Click 'Next'"
        let step5 : String = "Name your project in the product name."
        let step6 : String = "Click 'Next'"
        let step7 : String = "Put it where you want it."
        let step8 : String = "Click 'Create'"
        
        let algorithm = [step1, step2, step3, step4, step5, step6, step7, step8]
        
        let attributesDictionary = [NSAttributedString.Key.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        //I think this makes a bullet variable for a certain game.
        for step in algorithm
        {
            let bullet : String = "👾"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedString.Key.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }
}

