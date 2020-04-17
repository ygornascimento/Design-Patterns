//
//  QuestionViewControllerDelegate.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 05/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import Foundation

public protocol QuestionViewControllerDelegate: AnyObject {
    func questionViewController(_ viewController: QuestionViewController, didCancel questionGroup: QuestionStrategy)
    func questionViewController(_ viewController: QuestionViewController, didComplete questionGroup: QuestionStrategy)
}
