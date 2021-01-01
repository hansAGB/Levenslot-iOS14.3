//
//  ViewController.swift
//  Levenslot-iOS14.3
//
//  Created by Hans Aangeenbrug on 31/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let story = Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right.")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)

    }

    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
}

