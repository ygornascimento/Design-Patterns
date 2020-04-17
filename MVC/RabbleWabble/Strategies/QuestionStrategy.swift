//
//  QuestionStrategy.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 07/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import Foundation

public protocol QuestionStrategy: AnyObject {
    
    var title: String { get }
    var correctCount: Int { get }
    var incorrectCount: Int { get }
    
    func advanceToNextQuestion() -> Bool
    func currentQuestion() -> Question
    
    func markQuestionCorrect(_ question: Question)
    func markQuestionIncorrect(_ question: Question)
    
    func questionIndexTitle() -> String
}
