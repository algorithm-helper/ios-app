//
//  SegueRevertLeft.swift
//  AlgorithmHelper
//
//  Created by Eric Liu on 2018-01-17.
//  Copyright © 2018 Eric Liu. All rights reserved.
//

import UIKit

class SegueRevertLeft: UIStoryboardSegue {
    
    override func perform() {
        let src = self.source as UIViewController
        let dst = self.destination as UIViewController
        
        src.view.superview?.insertSubview(dst.view, belowSubview: src.view)
        src.view.transform = CGAffineTransform(translationX: 0, y: 0)
        
        UIView.animate(withDuration: 0.25,
                       delay: 0.0,
                       options: UIViewAnimationOptions.curveEaseInOut,
                       animations: {
                            src.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y: 0)
                        },
                       completion: {
                            finished in
                            src.dismiss(animated: false, completion: nil)
                        })
    }
}