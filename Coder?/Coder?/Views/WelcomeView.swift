//
//  WelcomeView.swift
//  Coder?
//
//  Created by Samy Mehdid on 28/3/2021.
//

import SwiftUI
struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Welcome To The \n Coding Game")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    Spacer()
                    VStack(alignment: .center, spacing: 0) {
                        Text("*  Play To Prove Yourself  *")
                            .bold()
                            .font(.system(size: 23))
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Start Game")
                    })
                    Spacer()
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
