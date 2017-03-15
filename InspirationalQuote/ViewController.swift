//
//  ViewController.swift
//  InspirationalQuote
//
//  Created by Andy Wong on 3/15/17.
//  Copyright © 2017 Andy Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    
    
    @IBAction func changeImage(sender: AnyObject) {
        changeImages()
    }
    
    
    
    
    let images = ["image1", "image2", "image3"]
    
    
    func changeImages() {
        let randomImage = Int(arc4random_uniform(UInt32(3)))
        
        imageView.image = UIImage(named: images[randomImage])
        
        if (randomImage == 0){
            textView.text = "Have a good day today! Don't let some lets downs bring you down!"
        }
        else if (randomImage == 1){
            textView.text = "Compliment someone today, OR do something you fear"
        }
        else if (randomImage == 2) {
            textView.text = "It's okay, you're lost, what matters is finding that light!"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
