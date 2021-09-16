//
//  ViewController.swift
//  StoryPrompt
//
//  Created by J S on 9/16/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyPrompt = StoryPromptEntry()
        storyPrompt.noun = "fish"
        storyPrompt.adjective = "silly"
        storyPrompt.verb = "fly"
        storyPrompt.number = 10
        print(storyPrompt)
    }
}
