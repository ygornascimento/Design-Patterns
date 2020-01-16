//
//  AppSettings.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 16/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import Foundation

public class AppSettings {
    private struct Keys {
        static let questionStrategy = "questionStrategy"
    }
    
    public static let shared = AppSettings()
    private init() { }
    
    public func questionStrategy(for questionGroup: QuestionGroup) -> QuestionStrategy {
        return questionStrategyType.questionStrategy(for: questionGroup)
    }
    
    private let userDefaults = UserDefaults.standard
    
    public var questionStrategyType: QuestionStrategyType {
        get {
            let rawValue = userDefaults.integer(forKey: Keys.questionStrategy)
            return QuestionStrategyType(rawValue: rawValue)!
        } set {
            userDefaults.set(newValue.rawValue, forKey: Keys.questionStrategy)
        }
    }
}

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
