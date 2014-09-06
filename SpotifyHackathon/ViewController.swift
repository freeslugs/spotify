//
//  ViewController.swift
//  SpotifyHackathon
//
//  Created by Gilad Penn on 9/6/14.
//  Copyright (c) 2014 512Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FBLoginViewDelegate {
    
    @IBOutlet var fbLoginView: FBLoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("loaded successfully")
        // Do any additional setup after loading the view, typically from a nib.
        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
    }

    // Facebook Delegate Methods
    
    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
        println("User Logged In")
    }
    
    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser) {
        println("User: \(user)")
        println("User ID: \(user.objectID)")
        println("User Name: \(user.name)")
        var userEmail = user.objectForKey("email") as String
        println("User Email: \(userEmail)")
        
    }


    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
        println(loginView)
        println("User Logged Out")
    }
    
    func loginView(loginView : FBLoginView!, handleError:NSError) {
        println("Error: \(handleError.localizedDescription)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        println("hey we're intercepting")
        if (segue.identifier == "GetStarted") {
            println("get stared")
            println(FBGraphUser)

        }
    }
}

