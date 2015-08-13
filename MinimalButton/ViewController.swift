//
//  ViewController.swift
//  MinimalButton
//
//  Created by Jason Seney on 8/12/15.
//  Copyright (c) 2015 Tumblr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let button = UIButton.buttonWithType(.System) as? UIButton {
            
            button.setTitle("I'm a button!", forState: .Normal)
            button.setTranslatesAutoresizingMaskIntoConstraints(false)
            button.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
            button.setTitleColor(UIColor.blackColor(), forState: .Normal)
            button.titleLabel?.font = UIFont.systemFontOfSize(16)
            button.titleLabel?.lineBreakMode = .ByTruncatingTail
            
            self.view.addSubview(button)
            
            self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-(padding)-[button]-(padding)-|",
                options: nil,
                metrics: ["padding": 20],
                views: ["button": button]))
            
            self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-(padding)-[button]-(padding)-|",
                options: nil,
                metrics: ["padding": 20],
                views: ["button": button]))
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

