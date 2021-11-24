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
            "UNICORNS: The <adjective> legion, a horrific cult led by a cyborg <noun>, <verb> <number> missles at Earth.",
            "UNICORNS: Harid Ryder is a half human, half <noun>. He <verb> the last remaining <noun> in a <adjective> quest before the sun explodes in <number> days.",
            "UNICORNS: Axel is a <noun> who hacks into a <adjective> agency. In it, he <verb> a secret plot to lace <number> hotdogs with <noun> dust.",
            "UNICORNS: The Tressal-1 is a <adjective> <noun> on an intergalatic quest. It <verb> from earth, hoping to reach a nearby star system in <number> of decades.",
            "UNICORNS: Aliens <verb> on the <noun>. The aliens declare all the water belongs to them. They give <number> of days before they start their <adjective> plan.",
            "UNICORNS: A world war ends when a <adjective> <noun> <verb> on the earth. People have only <number> of days to unite or be destroyed."
        ],
        [
            ""
        ]
    ]
}
