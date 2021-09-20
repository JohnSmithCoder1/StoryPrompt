//
//  StoryPromptViewController.swift
//  StoryPrompt
//
//  Created by J S on 9/20/21.
//

import UIKit

class StoryPromptViewController: UIViewController {
    @IBOutlet weak var storyPromptTextView: UITextView!
    
    var storyPrompt = StoryPromptEntry()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        storyPrompt.noun = "fish"
        storyPrompt.adjective = "silly"
        storyPrompt.verb = "fly"
        storyPrompt.number = 7
        
        storyPromptTextView.text = storyPrompt.description
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
