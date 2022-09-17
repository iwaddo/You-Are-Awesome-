//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Ian Waddington on 03/09/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    
    
    @IBAction func showMessagePressed(_ sender: UIButton) {

        let messages = ["You Are замечательно!",
                        "You Are Great!",
                        "You Are Da Bomb!",
                        "I am the Best!"]

        
        
        // let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"
        
        messageLabel.text = messages[messageNumber]
        messageNumber += 1
        
        if messageNumber == messages.count {
            messageNumber = 0
        }
        
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        if imageNumber == 10 {
            imageNumber = 0
        }
        
        
        
        //        let awesomeMessage = "You Are замечательно!"
        //        let greatMessage = "You Are Great!"
        //        let bombMessage = "You Are Da Bomb!"
        //
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        } else if messageLabel.text == greatMessage {
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "image2")
        //        } else {
        //            messageLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "image0")
        //        }
    }
}

