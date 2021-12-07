//
//  StoryPromptEntry.swift
//  StoryPrompt
//
//  Created by J S on 9/16/21.
//

import Foundation
import UIKit

class StoryPromptEntry {
  var name = ""
  var noun = ""
  var adjective = ""
  var verb = ""
  var number = 6
  var name2 = ""
  var noun2 = ""
  var adjective2 = ""
  var verb2 = ""
  var number2 = 6
  var image = UIImage(named: "object-object_box-of-books")
  var genre = StoryPrompts.Genre.unicorns
  var text = ""
  
  init() {
    text = StoryPrompts.promptFor(genre: genre)
  }
  
  func isValid() -> Bool {
    return !(name.isEmpty ||
             noun.isEmpty ||
             adjective.isEmpty ||
             verb.isEmpty ||
             name2.isEmpty ||
             noun2.isEmpty ||
             adjective2.isEmpty ||
             verb2.isEmpty)
  }
}

extension StoryPromptEntry: CustomStringConvertible {
  var description: String {
    return text
      .replacingOccurrences(of: "<name>", with: name)
      .replacingOccurrences(of: "<noun>", with: noun)
      .replacingOccurrences(of: "<adjective>", with: adjective)
      .replacingOccurrences(of: "<verb>", with: verb)
      .replacingOccurrences(of: "<number>", with: String(number))
      .replacingOccurrences(of: "<name2>", with: name2)
      .replacingOccurrences(of: "<noun2>", with: noun2)
      .replacingOccurrences(of: "<adjective2>", with: adjective2)
      .replacingOccurrences(of: "<verb2>", with: verb2)
      .replacingOccurrences(of: "<number2>", with: String(number2))
  }
}
