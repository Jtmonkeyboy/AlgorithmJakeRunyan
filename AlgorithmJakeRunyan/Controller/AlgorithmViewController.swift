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

    @IBOutlet weak var algorithmLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
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
        let next : String = "Click 'Next'"
        let step5 : String = "Name your project in the product name."
        let step7 : String = "Put it where you want it."
        let step8 : String = "Click 'Create'"
    }
}

