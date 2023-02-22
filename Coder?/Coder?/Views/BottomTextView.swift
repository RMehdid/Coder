//
//  BottomTextView.swift
//  Coder?
//
//  Created by Samy Mehdid on 28/3/2021.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    var body: some View {
        HStack {
            Text(str)
                .font(.system(size: 21))
                .bold()
                .padding(25)
            .background(GameColor.accent)
            .cornerRadius(10)
        }
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
