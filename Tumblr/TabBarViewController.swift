//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Grace Qi on 2/21/16.
//  Copyright © 2016 Grace Qi. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var explorePopupImageView: UIImageView!
    
    var viewControllers: [UIViewController]!
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var selectedIndex: Int = 0
    var previousIndex: Int!
    
    var fadeTransition: FadeTransition!
    var explorePopupImageViewOriginalCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingViewController")
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        // setting initial screen to homeViewControlelr
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        explorePopupImageViewOriginalCenter = explorePopupImageView.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressTab(sender: UIButton) {
        previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].selected = false
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        let currentVC = viewControllers[selectedIndex]
        addChildViewController(currentVC)               // call viewWillAppear
        currentVC.view.frame = contentView.bounds
        contentView.addSubview(currentVC.view)
        currentVC.didMoveToParentViewController(self)   // call viewDidAppear
        
        if(selectedIndex == 1) {
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.explorePopupImageView.alpha = 0
            })
            
        } else {
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.explorePopupImageView.alpha = 1
                }, completion: { (Bool) -> Void in
                    UIView.animateWithDuration(0.5, delay: 0, options: [UIViewAnimationOptions.Repeat, UIViewAnimationOptions.Autoreverse], animations: { () -> Void in
                        self.explorePopupImageView.center = CGPoint(x: self.explorePopupImageViewOriginalCenter.x, y: self.explorePopupImageViewOriginalCenter.y + 5)
                        }, completion: { (Bool) -> Void in
                            
                    })
            })

        }
    }
    
    
    @IBAction func didPressCompose(sender: UIButton) {
        self.performSegueWithIdentifier("composeSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        var destinationViewController = segue.destinationViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition

        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
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
