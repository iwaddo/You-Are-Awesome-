//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Ian Waddington on 03/09/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 6
    var audioPlayer: AVAudioPlayer!
    var newNumber = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    // Function to playsound
    func playSound(soundfile: String) {
        if let sound = NSDataAsset(name: soundfile) {
            do {
               try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription)Could not initialize AVAudioPlayer Object")
            }
            
        } else {
            print("ERROR: Could not read data from file sound0")
        }

    }
    
    // Funtion to generate non-repeating random values
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int {
        var theNumber = originalNumber
        repeat {
            theNumber = Int.random(in: 0...upperBounds)
        } while originalNumber == theNumber
        return theNumber
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great",
                        "You Are Fantastic!",
                        "When the Genius Bar Needs Help, They Call You!",
                        "Faboulous? That's You!",
                        "You've Got The Design Skills of Jon Ive"]
        
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        messageLabel.text = messages[messageNumber]
//        print("\nMessage Number: = \(messageNumber)")
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
//        print("Image Number: = \(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds-1)
        playSound(soundfile: "sound\(soundNumber)")
//        print("Sound Number: = \(soundNumber)")
        
    }
    
}
    
