//
//  FirstViewController.swift
//  Paley Pain Support
//
//  Created by refstaff on 5/5/17.
//  Copyright © 2017 Piggy Inc. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var painAmount: UISlider!{
        didSet{
            painAmount.transform = CGAffineTransform(rotationAngle: CGFloat(3 * Double.pi / 2))
        }
    }
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var pain = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SliderSlid(_ sender: UISlider) {
        pain = Int(round(sender.value))
        numberLabel.text = String(pain)
    }

}

