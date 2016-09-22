//
//  EassingViewController.swift
//  AnimationSample
//
//  Created by 润朴科技 on 16/9/22.
//  Copyright © 2016年 惠清川的Mac. All rights reserved.
//

import UIKit

class EassingViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!    
    @IBOutlet weak var greenView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 2) {
            self.blueView.center.x = self.view.bounds.width - self.blueView.center.x
        }
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn, animations: {
            self.redView.center.x = self.view.bounds.width - self.redView.center.x
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseOut, animations: {
            self.yellowView.center.x = self.view.bounds.width - self.yellowView.center.x
            }, completion: nil)
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseInOut, animations: {
            self.greenView.center.x = self.view.bounds.width - self.greenView.center.x
            }, completion: nil)
        
    }
}
