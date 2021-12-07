//
//  ViewController.swift
//  StoryPrompt
//
//  Created by J S on 9/16/21.
//

import UIKit
import PhotosUI

class AddStoryPromptViewController: UIViewController {
  
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var nounTextField: UITextField!
  @IBOutlet weak var adjectiveTextField: UITextField!
  @IBOutlet weak var verbTextField: UITextField!
  @IBOutlet weak var numberSlider: UISlider!
  @IBOutlet weak var numberLabel: UILabel!
  @IBOutlet weak var storyPromptImageView: UIImageView!
  
  @IBOutlet weak var name2TextField: UITextField!
  @IBOutlet weak var noun2TextField: UITextField!
  @IBOutlet weak var adjective2TextField: UITextField!
  @IBOutlet weak var verb2TextField: UITextField!
  @IBOutlet weak var number2Slider: UISlider!
  @IBOutlet weak var number2Label: UILabel!
  
  let storyPrompt = StoryPromptEntry()
  
  deinit {
    NotificationCenter.default.removeObserver(self)
  }
  
  @IBAction func changeNumber(_ sender: UISlider) {
    numberLabel.text = "Number: \(Int(sender.value))"
    storyPrompt.number = Int(sender.value)
  }
  
  @IBAction func changeNumber2(_ sender: UISlider) {
    number2Label.text = "Number: \(Int(sender.value))"
    storyPrompt.number2 = Int(sender.value)
  }
  
  //  @IBAction func changeStoryType(_ sender: UISegmentedControl) {
//    if let genre = StoryPrompts.Genre(rawValue: sender.selectedSegmentIndex) {
//      storyPrompt.genre = genre
//    } else {
//      storyPrompt.genre = .unicorns
//    }
//  }
  
  @IBAction func generateStoryPrompt(_ sender: Any) {
    updateStoryPrompt()
    
    if storyPrompt.isValid() {
      performSegue(withIdentifier: "StoryPrompt", sender: nil)
    } else {
      let alert = UIAlertController(title: "Not Enough information",
                                    message: "Please fill out all of the fields if you want to create a new story",
                                    preferredStyle: .alert)
      let action = UIAlertAction(title: "OK", style: .default) { action in }
      alert.addAction(action)
      present(alert, animated: true)
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    numberSlider.value = 6
  }
  
  @objc func updateStoryPrompt() {
    storyPrompt.name = nameTextField.text ?? ""
    storyPrompt.noun = nounTextField.text ?? ""
    storyPrompt.adjective = adjectiveTextField.text ?? ""
    storyPrompt.verb = verbTextField.text ?? ""
    storyPrompt.name2 = name2TextField.text ?? ""
    storyPrompt.noun2 = noun2TextField.text ?? ""
    storyPrompt.adjective2 = adjective2TextField.text ?? ""
    storyPrompt.verb2 = verb2TextField.text ?? ""
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "StoryPrompt" {
      guard let storyPromptViewController = segue.destination as? StoryPromptViewController else { return }
      storyPromptViewController.storyPrompt = storyPrompt
      storyPromptViewController.isNewStoryPrompt = true
    }
  }
}

extension AddStoryPromptViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    
    return true
  }
}
