//
//  ViewController.swift
//  Day 3
//
//  Created by 邓岚锋 on 16/4/7.
//  Copyright © 2016年 邓岚锋. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController,ADBannerViewDelegate {

    @IBOutlet weak var adBanner: ADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.canDisplayBannerAds = true
        self.adBanner.delegate = self
        self.adBanner.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        
        self.adBanner.hidden = false
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        print("fail")
        
        self.adBanner?.hidden = true
        
    }
    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return willLeave
    }
   
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

