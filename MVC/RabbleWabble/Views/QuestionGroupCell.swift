//
//  QuestionGroupCell.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 04/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit
import Combine

public class QuestionGroupCell: UITableViewCell {
    @IBOutlet public var titleLabel: UILabel!
    @IBOutlet public var percentageLabel: UILabel!
    
    public var percentageSubscriber: AnyCancellable?
}

