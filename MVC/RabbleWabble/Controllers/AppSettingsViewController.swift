//
//  AppSettingsViewController.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 17/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class AppSettingsViewController: UITableViewController {
    public let appSettings = AppSettings.shared
    private let cellIdentifier = "basicCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
}

extension AppSettingsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuestionStrategyType.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let questionStrategyType = QuestionStrategyType.allCases[indexPath.row]
        
        cell.textLabel?.text = questionStrategyType.title()
        
        if appSettings.questionStrategyType == questionStrategyType {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
}

extension AppSettingsViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let questionStrategyType = QuestionStrategyType.allCases[indexPath.row]
        appSettings.questionStrategyType = questionStrategyType
        tableView.reloadData()
    }
}
