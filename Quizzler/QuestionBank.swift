//
//  QuestionBank.swift
//  Quizzler
//
//  Created by 강병우 on 05/04/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]()
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "여보는 나만 좋아한다..", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "여보는.. 오늘 내 생각을 했다..", correctAnswer: true))
        
        list.append(Question(text: "여보는.. 꿈에서 내 꿈을 꿧다...", correctAnswer: true))
        
        list.append(Question(text: "여보는 오늘 나한테 사랑한다고 7번 이상 말했다..", correctAnswer: true))
        
        list.append(Question(text: "여보는... 세젤예이다..", correctAnswer: true))
        
        list.append(Question(text: "여보보다.. 두부가 더 기엽다..", correctAnswer: false))
        
        list.append(Question(text: "여보가 젤 기엽다..", correctAnswer: true))
        
        list.append(Question(text: "융융..", correctAnswer: true))
        
        list.append(Question(text: "여보는 모닝콜을 평생 받았음 좋겠다고 생각한다..", correctAnswer: true))
        
        list.append(Question(text: "❤️", correctAnswer: true))
        list.append(Question(text: "융융이는 지금 배가 고프다.. ㅠ _ㅜ", correctAnswer: true))
        list.append(Question(text: "융융이는 집에 언능 가고싶다..", correctAnswer: true))
        list.append(Question(text: "융융이는.. 말랑이보다 내가 더 좋다.", correctAnswer: true))
    }
         
}
