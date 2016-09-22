//
//  SpringViewController.swift
//  AnimationSample
//
//  Created by 惠清川的Mac on 16/9/22.
//  Copyright © 2016年 惠清川的Mac. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var redView: UIView!
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
        UIView.animate(withDuration: 3, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: .allowAnimatedContent, animations: {
            self.redView.center.x = self.view.bounds.width - self.redView.center.x
            }) { (finished) in
                
        }
        UIView.animate(withDuration: 3, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 1, options: .allowAnimatedContent, animations: {
            self.yellowView.center.x = self.view.bounds.width - self.yellowView.center.x
        }) { (finished) in
            
        }
    }
   

}
