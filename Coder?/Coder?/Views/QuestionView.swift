//
//  QuestionView.swift
//  Coder?
//
//  Created by Samy Mehdid on 28/3/2021.
//

import SwiftUI

struct QuestionView: View {
  @EnvironmentObject var viewModel: GameViewModel
  let question: Question
 
  var body: some View {
    VStack {
      Text(question.questionText)
        .font(.system(size: 33))
        .bold()
        .multilineTextAlignment(.center)
      Spacer()
      HStack {
        ForEach(0..<question.possibleAnswers.count) { answerIndex in
          Button(action: {
            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
            viewModel.makeGuess(atIndex: answerIndex)
          }) {
            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                .background(viewModel.color(forOptionIndex: answerIndex))
          }
          .disabled(viewModel.guessWasMade)
        }
      }
      if viewModel.guessWasMade {
            Button(action: { viewModel.displayNextScreen() }) {
                BottomTextView(str: "Next")
            }
      }
    }
  }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}
