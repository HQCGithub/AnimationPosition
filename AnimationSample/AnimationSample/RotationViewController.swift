//
//  RotationViewController.swift
//  AnimationSample
//
//  Created by 润朴科技 on 16/9/22.
//  Copyright © 2016年 惠清川的Mac. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var rotationView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func rotation(){
    UIView.animate(withDuration: 2, delay: 0, options: .curveLinear, animations: {
            self.rotationView.transform = self.rotationView.transform.rotated(by: CGFloat(M_PI))
        }) { (finished) in
            self.rotation()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.rotation()
    }

}
