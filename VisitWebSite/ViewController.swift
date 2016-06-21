//
//  ViewController.swift
//  VisitWebSite
//
//  Created by Kristin Kamenar on 6/21/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

//get access to Safari Services
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    var urlString = "https://www.wikipedia.com"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openInSafariWithDoneButton(sender: UIButton) {
        
        let url = NSURL(string: urlString)!
        
        //create view controller
        let svc = SFSafariViewController(URL: url)
        
        //present view controller
        presentViewController(svc, animated: true, completion: nil)

    }
    
    @IBAction func openInSafariWithBackButton(sender: UIButton) {
        
        let url = NSURL(string: urlString)!
        UIApplication.sharedApplication().openURL(url)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

