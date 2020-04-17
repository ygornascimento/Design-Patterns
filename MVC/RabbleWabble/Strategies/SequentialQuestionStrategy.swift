//
//  SequentialQuestionStrategy:.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 07/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import Foundation

public class SequentialQuestionStrategy: BaseQuestionStrategy {
    
    public convenience init(questionGroupCaretaker: QuestionGroupCaretaker) {
        let questionGroup = questionGroupCaretaker.selectedQuestionGroup!
        let questions = questionGroup.questions
        self.init(questionGroupCaretaker: questionGroupCaretaker, questions: questions)
    }
    
//    private let questionGroup: QuestionGroup
//    private var questionIndex = 0
//    
//    public var title: String {
//        return questionGroup.title
//    }
//    
//    public var correctCount: Int {
//        get {return questionGroup.score.correctCount}
//        set {questionGroup.score.correctCount = newValue}
//    }
//    public var incorrectCount: Int {
//        get {return questionGroup.score.incorrectCount}
//        set {questionGroup.score.incorrectCount = newValue}
//    }
//    
//    //MARK: - Object Lifecycle
//    public init(questionGroup: QuestionGroup) {
//        self.questionGroup = questionGroup
//    }
//    
//    public func advanceToNextQuestion() -> Bool {
//        guard questionIndex + 1 < questionGroup.questions.count else {
//            return false
//        }
//        questionIndex += 1
//        return true
//    }
//    
//    public func currentQuestion() -> Question {
//        questionGroup.questions[questionIndex]
//    }
//    
//    public func markQuestionCorrect(_ question: Question) {
//        correctCount += 1
//    }
//    
//    public func markQuestionIncorrect(_ question: Question) {
//        incorrectCount += 1
//    }
//    
//    public func questionIndexTitle() -> String {
//        return "\(questionIndex + 1)/" + "\(questionGroup.questions.count)"
//    }
    
    
}
