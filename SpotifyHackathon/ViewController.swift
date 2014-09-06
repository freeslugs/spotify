//
//  ViewController.swift
//  SpotifyHackathon
//
//  Created by Gilad Penn on 9/6/14.
//  Copyright (c) 2014 512Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var button: UIButton!
    @IBAction func buttonTapped(AnyObject) {
        println("button tapped!")
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        println("hey we're intercepting")
        if (segue.identifier == "LoginWithFacebook") {
            println("login with facebook")
        }
    }

    
}

