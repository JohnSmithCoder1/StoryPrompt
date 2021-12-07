//
//  StoryPrompts.swift
//  StoryPrompt
//
//  Created by J S on 9/16/21.
//

import Foundation

class StoryPrompts {
  enum Genre: Int {
    case unicorns
  }
  
  static func promptFor(genre: Genre) -> String {
    let prompts = stubs[genre.rawValue]
    return prompts[Int.random(in: 0 ..< prompts.count)]
  }
  
  static var stubs = [
    [
      "The Tale of <name> and the <adjective2> Tiger\n\nOnce upon a time, there was a very <adjective> unicorn named <name>. <name> had <number> unicorn friends and they loved to <verb> together everyday next to their favorite <noun>.\n\nIt was all good. Until one day, a <adjective2> tiger named <name2> came to Unicorn Kingdom to <verb2>. When <name2> saw <name> and her <number> unicorn friends having so much fun together, <name2> got sad.\n\n<name2> had never been asked to <verb> with <name> and the unicorn friends before. But instead of asking nicely to <verb> with them, <name2> took their <noun>! <name> said “Hey! Please give our <noun> back! That’s not very nice!”. Then, <name2> said “Not unless you give me <number2> of your best <noun2>s. RIGHT NOW!”.\n\nBut <name> was not mad at <name2>. Instead, <name> said “Don’t be sad. We didn't know you wanted to join us. You can come <verb> with us any time you want! We love having new friends!\"\n\n<name2> was so happy, gave <name> their <noun> back, and had so much fun playing with the unicorns all day long."
//      "The <adjective> <noun> <name> saved the day when they <verb> over <number> oceans to return the crown to the princess. Until the villain showed up to <verb2> their plans by bringing <number2> <adjective2> <noun2> to <name2>...",
      //            "There once was a hero named <noun>, who was very wise. <noun> left home to go on a very <adjective> adventure. After travelling for <number> years, the <noun> finally <verb> all the way back home.",
      //            "<number> years ago, there was a very <adjective> storm, but <noun> wasn't scared. <noun> knew exactly what to do. They had to <verb> up to the clouds in order to quiet the storm and save the day. The end."
    ],
    [
      ""
    ]
  ]
}
