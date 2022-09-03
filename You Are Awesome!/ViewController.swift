//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Ian Waddington on 03/09/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍 viewDidLoad has run!")
        myMessage.text = "Fabulous? That's You!"
    }
    @IBAction func anotherMessageButtonPressed(_ sender: UIButton) {
        print("🆒 The other message button was pressed!")
        myMessage.text = "You Are Great!"
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        myMessage.text = "You Are Awesome!"
    }
    
}

