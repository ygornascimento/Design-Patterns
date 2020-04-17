//
//  Question.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 02/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import Foundation

public class Question: Codable {
    public let answer: String
    public let hint: String?
    public let prompt: String
    
    public init(answer: String, hint: String?, prompt: String) {
        self.answer = answer
        self.hint = hint
        self.prompt = prompt
    }
}
