//
//  ScaleViewController.swift
//  AnimationSample
//
//  Created by 润朴科技 on 16/9/22.
//  Copyright © 2016年 惠清川的Mac. All rights reserved.
//

import UIKit

class ScaleViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1) { 
            self.blueView.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
    }

}
