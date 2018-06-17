//
//  DetailViewController.swift
//  Project-1-Storm-Viewer
//
//  Created by verebes on 05/06/2018.
//  Copyright © 2018 A&D Progress. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String? {
        didSet{
            print("NOW IT HAS A VALUE")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let pictureToShow = selectedImage {
            imageView.image = UIImage(named: pictureToShow)
        }
        title = selectedImage
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
