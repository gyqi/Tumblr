//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Grace Qi on 2/23/16.
//  Copyright © 2016 Grace Qi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.backgroundColor = UIColor(red: 0.18, green: 0.27, blue: 0.36, alpha: 0.9)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressCancelButton(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
