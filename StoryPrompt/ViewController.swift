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
    
    let storyPrompt = StoryPromptEntry()
    
    @IBAction func changeNumber(_ sender: UISlider) {
        numberLabel.text = "Number: \(Int(sender.value))"
        storyPrompt.number = Int(sender.value)
    }
    
    @IBAction func changeStoryType(_ sender: UISegmentedControl) {
        if let genre = StoryPrompts.Genre(rawValue: sender.selectedSegmentIndex) {
            storyPrompt.genre
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberSlider.value = 7.5
        storyPrompt.noun = "fish"
        storyPrompt.adjective = "silly"
        storyPrompt.verb = "fly"
        storyPrompt.number = Int(numberSlider.value)
        print(storyPrompt)
    }
}
