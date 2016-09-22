//
//  PositionViewController.swift
//  AnimationSample
//
//  Created by 惠清川的Mac on 16/9/21.
//  Copyright © 2016年 惠清川的Mac. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1) { 
            self.blueView.center.x = self.view.bounds.width - self.blueView.center.x
            
        }
        
        UIView.animate(withDuration: 1, delay: 0.5, options: UIViewAnimationOptions(rawValue: UInt(0)), animations: {
            self.redView.center.y = self.view.bounds.height - self.redView.center.y
            
            }, completion: nil)
        UIView.animate(withDuration: 1, delay: 1, options: UIViewAnimationOptions(rawValue: UInt(0)), animations: { 
            self.greenView.center.x = self.view.bounds.width - self.greenView.center.x
            self.greenView.center.y = self.view.bounds.height - self.greenView.center.y
            }, completion: nil)
        
    }

}
