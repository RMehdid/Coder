//
//  ScoreView.swift
//  Coder?
//
//  Created by Samy Mehdid on 28/3/2021.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    var body: some View {
        ZStack {
              GameColor.main.ignoresSafeArea()
              VStack{
                Spacer()
                Text("Final Score: ")
                    .font(.system(size: 20))
                    .padding()
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                Text("\(viewModel.correctGuess) ✅")
                    .bold()
                    .font(.system(size: 30))
                Text("\(viewModel.inCorrectGuess) ❌")
                    .bold()
                    .font(.system(size: 30))
                Spacer()
                NavigationLink(
                destination: GameView(),
                label: {
                    BottomTextView(str: "Prove me wrong")
                })
              }
              .foregroundColor(.white)
              .navigationBarHidden(true)
        }
    }
}
struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuess: 8, inCorrectGuess: 2))
    }
}
