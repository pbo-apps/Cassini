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
    
    private var imageView = UIImageView()
    
    private var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(imageView)
    }
    
}
