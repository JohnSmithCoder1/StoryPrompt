//
//  ViewController.swift
//  StoryPrompt
//
//  Created by J S on 9/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func changeNumber(_ sender: UISlider) {
        
    }
    
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
