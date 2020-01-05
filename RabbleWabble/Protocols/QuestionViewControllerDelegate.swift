//
//  QuestionViewControllerDelegate.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 05/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import Foundation

public protocol QuestionViewControllerDelegate: class {
    func questionViewController(_ viewController: QuestionViewController, didCancel questionGroup: QuestionGroup, at questionIndex: Int)
    func questionViewController(_ viewController: QuestionViewController, didComplete questionGroup: QuestionGroup)
}
