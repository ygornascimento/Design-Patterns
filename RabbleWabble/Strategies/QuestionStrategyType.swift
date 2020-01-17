//
//  QuestionStrategyType.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 17/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import Foundation

public enum QuestionStrategyType: Int, CaseIterable {
    case random
    case sequential
    
    public func title() -> String {
        switch self {
        case .random:
            return "Random"
        case .sequential:
            return "Sequential"
        }
    }
    
    public func questionStrategy(for questionGroup: QuestionGroup) -> QuestionStrategy {
        switch self {
        case .random:
            return RandomQuestionStrategy(questionGroup: questionGroup)
        case .sequential:
            return SequentialQuestionStrategy(questionGroup: questionGroup)
        }
    }
}
