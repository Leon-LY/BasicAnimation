//
//  ViewController.swift
//  BasicAnimation
//
//  Created by 李洋 on 16/2/27.
//  Copyright © 2016年 Leon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var v1: UIView!
    @IBOutlet weak var v2: UIView!
    @IBOutlet weak var v3: UIView!
    
    override func viewWillAppear(animated: Bool) {
        v1.alpha = 0
    }
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 0.3, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: UIViewAnimationOptions(rawValue: UIViewAnimationOptions.Repeat.rawValue | UIViewAnimationOptions.Autoreverse.rawValue), animations: { () -> Void in
            self.v1.center.x -= 100
            self.v1.alpha = 1
            
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 1, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: UIViewAnimationOptions(rawValue: UIViewAnimationOptions.AllowAnimatedContent.rawValue ), animations: { () -> Void in
            
            self.v2.transform = CGAffineTransformMakeTranslation(0, 100)
            
            self.v2.transform = CGAffineTransformMakeScale(1.5, 1.5)
            self.v2.backgroundColor = UIColor.yellowColor()
            }) { _  in
                
                UIView.animateWithDuration(0.8, animations: {
                    self.v2.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
                    
                })
        }
        
        let newView = UIView(frame: v3.bounds)
        newView.backgroundColor = UIColor.redColor()
        //过渡
        UIView.transitionWithView(self.v3, duration: 2, options: UIViewAnimationOptions(rawValue: UIViewAnimationOptions.Repeat.rawValue | UIViewAnimationOptions.TransitionFlipFromBottom.rawValue | UIViewAnimationOptions.CurveEaseIn.rawValue ), animations: { () -> Void in
            self.v3.addSubview(newView);
            }, completion: nil)
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

