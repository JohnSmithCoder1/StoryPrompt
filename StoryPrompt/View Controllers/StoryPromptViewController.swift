//
//  StoryPromptViewController.swift
//  StoryPrompt
//
//  Created by J S on 9/20/21.
//

import UIKit

class StoryPromptViewController: UIViewController {
    @IBOutlet weak var storyPromptTextView: UITextView!
    
    @IBAction func cancelStoryPrompt(_ sender: UIButton) {
        performSegue(withIdentifier: "CancelStoryPrompt", sender: nil)
    }
    
    var storyPrompt: StoryPromptEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        storyPromptTextView.text = storyPrompt?.description
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
