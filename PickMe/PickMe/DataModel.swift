//
//  DataModel.swift
//  PickMe
//
//  Created by Luthfor Khan on 3/27/22.
//

import Foundation

struct AvaliableOptions: Identifiable {
    let id = UUID()
    
    var name: String
}

struct Quotes {
    let id = UUID()
    
    var Message: String
    var Person: String = "Anonymous"
}


var quotes: [Quotes] = [
Quotes(Message: "When someone makes a decision, he is really diving into a strong current that will carry him to places he had never dreamed of when he first made the decision.", Person: "Paulo Coelho"),
Quotes(Message: "Sometimes the hardest thing and the right thing are the same."),
Quotes(Message: "A major life decision is never a choice but rather a realization that the decision has already been made", Person: "Doug Cooper"),
Quotes(Message: "Sometimes it’s the smallest decisions that can change your life forever."),
Quotes(Message: "Good decisions come from experience, and experience comes from bad decisions."),
Quotes(Message: "Don’t base your decisions on the advice of those who don’t have to deal with the results"),
Quotes(Message: "A wise man makes his own decisions. An ignorant man follows public opinion.", Person: "Chinese Proverb"),
Quotes(Message: "You and only you are responsible for your life choices and decisions.", Person: "Robert T. Kiyosaki"),
Quotes(Message: "Stay committed to your decisions, but stay flexible in your approach.", Person: "Tony Robbins"),
Quotes(Message: "It is not hard to make decisions when you know what your values are.", Person: "Roy Disney"),
Quotes(Message: "Once the decision is made, do not look back, do not second guess your decisions.", Person: "Muhammad Ali"),
Quotes(Message: "Indecision is a decision."),
Quotes(Message: "You cannot make progress without making decisions.", Person: "Jim Rohn"),
Quotes(Message: "It is in your moments of decision that your destiny is shaped.", Person: "Tony Robbins"),
Quotes(Message: "When faced with a decision, choose the path that feeds your soul.", Person: "Dorothy Mendoza Row")
]
