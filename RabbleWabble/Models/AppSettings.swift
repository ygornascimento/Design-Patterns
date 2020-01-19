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


