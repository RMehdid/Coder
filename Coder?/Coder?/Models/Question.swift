//
//  Question.swift
//  Trivia
//
//  Created by Samy Mehdid on 25/3/2021.
//

import Foundation
struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    static var allQuestions = [
            Question(questionText: "Who invented the World Wide Web?",
                     possibleAnswers: [
                        "Steve Jobs",
                        "Linus Torvalds",
                        "Bill Gates",
                        "Tim Berners-Lee"
                     ],
                     correctAnswerIndex: 3),
            Question(questionText: "What was the first object oriented programming language?",
                     possibleAnswers: [
                        "Simula",
                        "Python",
                        "Swift",
                        "C"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "The Internet age was in",
                    possibleAnswers: [
                        "2000's",
                        "1990's",
                        "1980's",
                        "2010's"
                     ],
                     correctAnswerIndex: 1),
           Question(questionText: "The first programming codes were developed in",
                 possibleAnswers: [
                    "1930's",
                    "1940's",
                    "1950's",
                    "1990's"
                 ],
                 correctAnswerIndex: 1),
           Question(questionText: "Bill Gates was responsible for creating",
                 possibleAnswers: [
                    "BASIC",
                    "JAVA",
                    "HTML",
                    "PYTHON"
                 ],
                 correctAnswerIndex: 0),
           Question(questionText: "Sun MicroSystems in 1995 released",
                 possibleAnswers: [
                    "BASIC",
                    "JAVA",
                    "HTML",
                    "PYTHON"
             ],
             correctAnswerIndex: 1),
           Question(questionText: "The language most commonly used to develop WebPages is",
                 possibleAnswers: [
                    "BASIC",
                    "JAVA",
                    "HTML",
                    "PYTHON"
                 ],
                 correctAnswerIndex: 2),
           Question(questionText: "TThe most Popular programming language in 2021",
                 possibleAnswers: [
                    "C",
                    "C++",
                    "JavaScript",
                    "PYTHON"
                 ],
              correctAnswerIndex: 2),
           Question(questionText: "Which one of this is Data Language",
                 possibleAnswers: [
                    "SQL",
                    "PHP",
                    "CSS",
                    "PYTHON"
                 ],
              correctAnswerIndex: 2),
    ]
}
