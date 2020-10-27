//
//  ViewController.swift
//  MyMovies
//
//  Created by RVC Terry on 10/26/20.
//  Copyright © 2020 RVC Terry. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destinationViewController.
        
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "first"
            
        {
            
            let destination = segue.destination as! PlayerViewController
            
            //Change to match you video filename in supporting files
            
            let termsPath:String? = Bundle.main.path(forResource: "trailer1", ofType: "mp4")!
            
            let url = NSURL(fileURLWithPath: termsPath!)
            
            
            
            destination.player = AVPlayer(url: url as URL)
            
            destination.player!.play()
            
        }
        
        if segue.identifier == "second"
            
        {
            
            let destination = segue.destination as! PlayerViewController
            
            //Change to match you video filename in supporting files
            
            let termsPath:String? = Bundle.main.path(forResource: "trailer2", ofType: "mp4")!
            
            let url = NSURL(fileURLWithPath: termsPath!)
            
            destination.player = AVPlayer(url: url as URL)
            
            destination.player!.play()
            
        }
        
        if segue.identifier == "third"
            
        {
            
            let destination = segue.destination as! PlayerViewController
            
            //Change to match you video filename in supporting files
            
            let termsPath:String? = Bundle.main.path(forResource: "trailer3", ofType: "mp4")!
            
            let url = NSURL(fileURLWithPath: termsPath!)
            
            destination.player = AVPlayer(url: url as URL)
            
            destination.player!.play()
            
        }
        
        
        
    }
    
    
}




