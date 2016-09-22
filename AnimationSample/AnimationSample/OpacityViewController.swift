//
//  OpacityViewController.swift
//  AnimationSample
//
//  Created by 润朴科技 on 16/9/22.
//  Copyright © 2016年 惠清川的Mac. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var redView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1) { 
            self.blueView.alpha = 0
        }
     
        UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
            self.redView.alpha = 0.1
            }, completion: { (finished) in
            self.redView.alpha = 1
        })
        
    }
}
