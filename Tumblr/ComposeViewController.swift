//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Grace Qi on 2/21/16.
//  Copyright © 2016 Grace Qi. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var textButtonOriginalPoint: CGPoint!
    var photoButtonOriginalPoint: CGPoint!
    var quoteButtonOriginalPoint: CGPoint!
    var linkButtonOriginalPoint: CGPoint!
    var chatButtonOriginalPoint: CGPoint!
    var videoButtonOriginalPoint: CGPoint!
    
    override func viewWillAppear(animated: Bool) {
        textButtonOriginalPoint = textButton.center
        photoButtonOriginalPoint = photoButton.center
        quoteButtonOriginalPoint = quoteButton.center
        linkButtonOriginalPoint = linkButton.center
        chatButtonOriginalPoint = chatButton.center
        videoButtonOriginalPoint = videoButton.center
        
        textButton.center = CGPoint(x: textButtonOriginalPoint.x, y: textButtonOriginalPoint.y + 568)
        photoButton.center = CGPoint(x: photoButtonOriginalPoint.x, y: photoButtonOriginalPoint.y + 568)
        quoteButton.center = CGPoint(x: quoteButtonOriginalPoint.x, y: quoteButtonOriginalPoint.y + 568)
        linkButton.center = CGPoint(x: linkButtonOriginalPoint.x, y: linkButtonOriginalPoint.y + 568)
        chatButton.center = CGPoint(x: chatButtonOriginalPoint.x, y: chatButtonOriginalPoint.y + 568)
        videoButton.center = CGPoint(x: videoButtonOriginalPoint.x, y: videoButtonOriginalPoint.y + 568)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {

        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.photoButton.center = CGPoint(x: self.photoButtonOriginalPoint.x, y: self.photoButtonOriginalPoint.y)
            }) { (Bool) -> Void in

        }
        
        UIView.animateWithDuration(0.3, delay: 0.1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.chatButton.center = CGPoint(x: self.chatButtonOriginalPoint.x, y: self.chatButtonOriginalPoint.y)
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.quoteButton.center = CGPoint(x: self.quoteButtonOriginalPoint.x, y: self.quoteButtonOriginalPoint.y)
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.textButton.center = CGPoint(x: self.textButtonOriginalPoint.x, y: self.textButtonOriginalPoint.y)
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.linkButton.center = CGPoint(x: self.linkButtonOriginalPoint.x, y: self.linkButtonOriginalPoint.y)
            }) { (Bool) -> Void in
                
        }
        
        UIView.animateWithDuration(0.3, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.videoButton.center = CGPoint(x: self.videoButtonOriginalPoint.x, y: self.videoButtonOriginalPoint.y)
            }) { (Bool) -> Void in
                
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressNevermind(sender: UIButton) {
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
