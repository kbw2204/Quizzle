 //
//  Question.swift
//  Quizzler
//
//  Created by 강병우 on 01/04/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation
 class Question {
    let questionText: String
    let answer: Bool
    // 이 클래스 시작 시 위 변수들을 초기화(옵셔널 아니게끔) 주기 위해 초기화 값 설정해줌 이런식으로
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
 }
