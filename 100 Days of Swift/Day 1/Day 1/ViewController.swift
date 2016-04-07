//
//  ViewController.swift
//  Day 1
//
//  Created by 邓岚锋 on 16/4/7.
//  Copyright © 2016年 邓岚锋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Counter"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func ResetNumberLabel(sender: AnyObject) {
        
        self.numberLabel.text = "0"
    }
    
    @IBAction func longPressGesture(sender: UILongPressGestureRecognizer) {
   
        if  sender.state  == .Changed {
            if  let tempNum = Int(self.numberLabel.text!) {
              self.numberLabel.text  = "\(tempNum + 1)"
            }
        }
    }
    
    @IBAction func tapToChange(sender: AnyObject) {
        if let tempNum = Int(self.numberLabel.text!){
          self.numberLabel.text = "\(tempNum+1)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

