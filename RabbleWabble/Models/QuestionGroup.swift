//
//  QuestionGroup.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 02/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import Foundation
import Combine

public class QuestionGroup: Codable {
    
    public class Score: Codable {
        public var correctCount: Int = 0
        public var incorrectCount: Int = 0
        
        @Published public var runningPercentage: Double = 0
        
        public init () {}
    }
    
    public let questions: [Question]
    public var score: Score
    public let title: String
    
    public init(questions: [Question], score: Score = Score(), title: String) {
        self.questions = questions
        self.score = score
        self.title = title
    }
}
