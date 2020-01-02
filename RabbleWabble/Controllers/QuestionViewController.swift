//
//  QuestionViewController.swift
//  RabbleWabble
//
//  Created by Ygor Nascimento on 02/01/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

public final class QuestionViewController: UIViewController {

    //MARK: - Instance Properties
    public var questionGroup = QuestionGroup.basicPhrases()
    public var questionIndex = 0
    
    public var correctCount = 0
    public var incorrecCount = 0
    
    public var questionView: QuestionView! {
        guard isViewLoaded else {return nil}
        return (view as! QuestionView)
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        showQuestion()
    }
    
    private func showQuestion() {
        let question = questionGroup.questions[questionIndex]
        
        questionView.answerLabel.text = question.answer
        questionView.promptLabel.text = question.prompt
        questionView.hintLabel.text = question.hint
        
        questionView.answerLabel.isHidden = true
        questionView.hintLabel.isHidden = true
    }
    
    @IBAction func toggleAnswerLabels(_ sender: Any) {
        questionView.answerLabel.isHidden = !questionView.answerLabel.isHidden
        questionView.hintLabel.isHidden = !questionView.hintLabel.isHidden
    }
    
    @IBAction func handleCorrect(_ sender: Any) {
        correctCount += 1
        questionView.correctCountLabel.text = "\(correctCount)"
        showNextQuestion()
    }
    
    @IBAction func handleIncorrect(_ sender: Any) {
        incorrecCount += 1
        questionView.incorrectCountLabel.text = "\(incorrecCount)"
        showNextQuestion()
    }
    
    private func showNextQuestion() {
        questionIndex += 1
        guard questionIndex < questionGroup.questions.count else {
            //questionIndex - 1
            return
        }
        showQuestion()
    }


}

