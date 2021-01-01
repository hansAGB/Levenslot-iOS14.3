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
    
    let story = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    var linkIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UpdateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == story[0].choice1 {
            //Left
            linkIndex = 1
        } else if sender.currentTitle == story[0].choice2 {
            //Right
            linkIndex = 2
        }
        UpdateUI()
    }
    
    func UpdateUI() {
        storyLabel.text = story[linkIndex].title
        choice1Button.setTitle(story[linkIndex].choice1, for: .normal)
        choice2Button.setTitle(story[linkIndex].choice2, for: .normal)
    }
    
}

