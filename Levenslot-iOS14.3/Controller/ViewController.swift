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
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.NextStory(choiceText: sender.currentTitle!)
        UpdateUI()
    }
    
    func UpdateUI() {
        let storyNumber = storyBrain.getLinkIndex()
        storyLabel.text = storyBrain.story[storyNumber].title
        choice1Button.setTitle(storyBrain.story[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[storyNumber].choice2, for: .normal)
    }
    
}

