//
//  ScoreViewModel.swift
//  Coder?
//
//  Created by Samy Mehdid on 28/3/2021.
//

import Foundation

struct ScoreViewModel {
    let correctGuess: Int
    let inCorrectGuess: Int
    var percentage: Int{
        (correctGuess * 100 / (correctGuess + inCorrectGuess))
    }
}
