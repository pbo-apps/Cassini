//
//  ImageViewController.swift
//  Cassini
//
//  Created by Pete Bounford on 10/02/2017.
//  Copyright © 2017 PBO Apps. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    // MARK: - Model
    var imageURL: NSURL? {
        didSet {
            image = nil
            fetchImage()
        }
    }
    
    private func fetchImage() {
        if let url = imageURL {
            if let imageData = NSData(contentsOf: url as URL) {
                image = UIImage(data: imageData as Data)
            }
        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentSize = imageView.frame.size
        }
    }
    
    private var imageView = UIImageView()
    
    private var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
            // scrollView is an outlet, so we need to allow for case where this is nil (i.e. image setting is happening when someone is preparing this MVC to be segued to)
            scrollView?.contentSize = imageView.frame.size
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.addSubview(imageView)
        imageURL = NSURL(string: DemoURL.Stanford)
    }
    
}
