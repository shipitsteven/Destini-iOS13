//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = stories[0].title
        choice1Button.setTitle(stories[0].choice1, for: .normal)
        choice2Button.setTitle(stories[0].choice2, for: .normal)
    }
    
    @IBAction func userClicks(_ sender: UIButton){
        let text = sender.titleLabel?.text
        if (text == stories[0].title) {
            updateUI(newStory: stories[1])
        } else {
            updateUI(newStory: stories[2])
        }
    }
    
    func updateUI(newStory: Story) {
        storyLabel.text = newStory.title
        choice1Button.setTitle(newStory.choice1, for: .normal)
        choice2Button.setTitle(newStory.choice2, for: .normal)
    }
    
}

