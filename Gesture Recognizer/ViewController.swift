//
//  ViewController.swift
//  Gesture Recognizer
//
//  Created by Selçuk Arıöz on 15.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!

    var metallica1 = true

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gastureRegonnizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gastureRegonnizer)
    }

    @objc func changePic() {
        if metallica1 == true{
            imageView.image = UIImage(named: "metallica1")
            myLabel.text = "first pic"
            metallica1 = false
        }else {
            imageView.image = UIImage(named: "Metallica2")
            myLabel.text = "second pic"
            metallica1 = true
        }
    }
}

