//
//  InfoViewController.swift
//  animal-sounds
//
//  Created by Adam Goth on 8/5/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var backBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        backBtn.layer.cornerRadius = 5.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed() {
        dismissViewControllerAnimated(true, completion: nil)
    }


}
