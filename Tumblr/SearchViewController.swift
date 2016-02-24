//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Grace Qi on 2/21/16.
//  Copyright © 2016 Grace Qi. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchFeedImageView: UIImageView!
    @IBOutlet weak var loadingImageView: UIImageView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        images = [loading_1, loading_2, loading_3]
        animatedImage = UIImage.animatedImageWithImages(images, duration: 0.5)
        loadingImageView.image = animatedImage

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        searchFeedImageView.hidden = true
        searchFeedImageView.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        delay(1.5) {
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.searchFeedImageView.hidden = false
                self.searchFeedImageView.alpha = 1
            })
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // helper function
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
