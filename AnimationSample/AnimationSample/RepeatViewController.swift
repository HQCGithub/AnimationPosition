//
//  RepeatViewController.swift
//  AnimationSample
//
//  Created by 润朴科技 on 16/9/22.
//  Copyright © 2016年 惠清川的Mac. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var yellowView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1) {
            self.blueView.center.x = self.view.bounds.width - self.blueView.center.x
            
        }
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: .repeat, animations: { 
             self.redView.center.x = self.view.bounds.width - self.redView.center.x
            }) { (finished) in
             self.redView.center.x = self.view.bounds.width - self.redView.center.x
        }
        UIView.animate(withDuration: 1, delay: 0, options: [.autoreverse , .repeat], animations: {
             self.yellowView.center.x = self.view.bounds.width - self.yellowView.center.x
            }) { (finished) in
            self.yellowView.center.x = self.view.bounds.width - self.yellowView.center.x
        }
    }
   

}
