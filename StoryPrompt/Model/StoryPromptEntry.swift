//
//  StoryPromptEntry.swift
//  StoryPrompt
//
//  Created by J S on 9/16/21.
//

import Foundation
import UIKit

class StoryPromptEntry {
    var number = 7
    var verb = ""
    var adjective = ""
    var noun = ""
    var image = UIImage(named: "object-object_box-of-books")
    var genre = StoryPrompts.Genre.unicorns
    var text = ""
    
    init() {
        text = StoryPrompts.promptFor(genre: genre)
    }
    
    func isValid() -> Bool {
        return !(verb.isEmpty || adjective.isEmpty || noun.isEmpty)
    }
}

extension StoryPromptEntry: CustomStringConvertible {
    var description: String {
        return text.replacingOccurrences(of: "<noun>", with: noun)
            .replacingOccurrences(of: "<verb>", with: verb)
            .replacingOccurrences(of: "<number>", with: String(number))
            .replacingOccurrences(of: "<adjective>", with: adjective)
    }
}
