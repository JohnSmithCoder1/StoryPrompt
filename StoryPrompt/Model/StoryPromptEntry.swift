//
//  StoryPromptEntry.swift
//  StoryPrompt
//
//  Created by J S on 9/16/21.
//

import Foundation
import UIKit

class StoryPromptEntry {
  var noun = ""
  var adjective = ""
  var verb = ""
  var number = 6
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
    return !(noun.isEmpty || adjective.isEmpty || verb.isEmpty || noun2.isEmpty )
  }
}

extension StoryPromptEntry: CustomStringConvertible {
  var description: String {
    return text.replacingOccurrences(of: "<noun>", with: noun)
      .replacingOccurrences(of: "<adjective>", with: adjective)
      .replacingOccurrences(of: "<verb>", with: verb)
      .replacingOccurrences(of: "<number>", with: String(number))
      .replacingOccurrences(of: "<noun2>", with: noun2)
  }
}
