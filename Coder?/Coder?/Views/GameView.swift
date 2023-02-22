//
//  ContentView.swift
//  Trivia
//
//  Created by Samy Mehdid on 16/3/2021.
//

import SwiftUI

struct GameView: View {
    let question = Question(
            questionText: "What was the first computer bug?",
            possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
            correctAnswerIndex: 2)
    
    @StateObject var viewModel = GameViewModel()
   
    var body: some View {
      ZStack {
        GameColor.main.ignoresSafeArea()
        VStack {
          Text(viewModel.questionProgressText)
            .font(.callout)
            .multilineTextAlignment(.leading)
            .padding()
          QuestionView(question: viewModel.currentQuestion)
        }
      }
      .foregroundColor(.white)
      .navigationBarHidden(true)
      .environmentObject(viewModel)
      .background(
        NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuess: viewModel.correctGuesses, inCorrectGuess: viewModel.incorrectGuesses)),
                         isActive: .constant(viewModel.gameIsOver),
                         label: { EmptyView() })
      )
    }
  }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
                
        }
}
