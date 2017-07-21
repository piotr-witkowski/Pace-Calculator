//
//  ViewController.swift
//  Pace Calculator
//
//  Created by Piotr Witkowski on 14.03.2017.
//  Copyright © 2017 OstrichSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var txtDistance: UITextField!
    
    @IBOutlet var txtTime: UITextField!
    
    @IBOutlet var lblPace: UILabel!
    
    @IBAction func btnCount(_ sender: Any) {
        var theDistance:String = txtDistance.text!
        let theDistanceInt:Int = Int(theDistance)!
        var theTime:String = txtTime.text!
        let theTimeInt:Int = Int(theTime)!
        let pace:Int = theTimeInt / theDistanceInt
        let paceSeconds:Int = (theTimeInt % theDistanceInt) * 60 / theDistanceInt
        lblPace.text = "\(pace):\(paceSeconds) min/km"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

