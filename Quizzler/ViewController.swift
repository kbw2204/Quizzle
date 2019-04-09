//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestion = QuestionBank()
    // 이건 전역으로 되있어서 밑에 함수에서 사용 가능한 거
    var PickedAnswer :Bool = false
    var questionNumber : Int = 0
    var questionCount :Int = 0
    var score :Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startOver()
        let firstQuestion = allQuestion.list[questionNumber]
        questionLabel.text = firstQuestion.questionText

    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            PickedAnswer = true
        } else if sender.tag == 2 {
            PickedAnswer = false
        }
        checkAnswer()
        questionNumber = Int.random(in: 0 ... 12)
        questionCount += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        print("잘 알고 있군..")
        scoreLabel.text = "Score : \(score)"
        progressLabel.text = "\(questionCount) / 13"
        // 바 증가
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionCount)
    }
    

    func nextQuestion() {
        if questionCount < 13 {
            questionLabel.text = allQuestion.list[questionNumber].questionText
        }
        else {
            let alert = UIAlertController(title: "오..추카추카..", message: "\(score)점!\n 여보..또 할래요..?", preferredStyle: .alert )
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
                
            }
            alert.addAction(restartAction)
            present(alert, animated: true)
        }
        updateUI()
    }
    
    
    func checkAnswer() {
        if allQuestion.list[questionNumber].answer == PickedAnswer {
            // 점수 상승
            score += 8
            if score == 104 {
                score = 100
            }
            ProgressHUD.showSuccess("올.. 여보 정말 나 사랑하는구나..?")
            
        } else {
            // 꽝 모션
            ProgressHUD.showError("에헴..")
        }
    }
    
    
    func startOver() {
       // 다시 초기화..
        questionCount = 0
        score = 0
        nextQuestion()
        progressBar.frame.size.width = 0
    }
    

    
}
