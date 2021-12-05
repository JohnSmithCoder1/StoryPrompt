//
//  StoryPrompts.swift
//  StoryPrompt
//
//  Created by J S on 9/16/21.
//

import Foundation

class StoryPrompts {
    enum Genre: Int {
        case scifi, horror
    }
    
    static func promptFor(genre: Genre) -> String {
        let prompts = stubs[genre.rawValue]
        return prompts[Int.random(in: 0 ..< prompts.count)]
    }
    
    static var stubs = [
        [
            "The <adjective> <noun> saved the day when they <verb> over <number> oceans to return the crown to the princess.",
            "There once was a hero named <noun>, who was very wise. <noun> left home to go on a very <adjective> adventure. After travelling for <number> years, the <noun> finally <verb> all the way back home.",
            "<number> years ago, there was a very <adjective> storm, but <noun> wasn't scared. <noun> knew exactly what to do. They had to <verb> up to the clouds in order to quiet the storm and save the day. The end."
        ],
        [
            ""
        ]
    ]
}
