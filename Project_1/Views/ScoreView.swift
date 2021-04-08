//
//  ScoreView.swift
//  Project_1
//
//  Created by 刘泓磊 on 4/7/21.
//

import SwiftUI
 
struct ScoreView: View {
    let viewModel: ScoreViewModel
 
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .foregroundColor(GameColor.context)
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .foregroundColor(Color.red)
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) ✅")
                        .foregroundColor(Color.black)
                    Text("\(viewModel.incorrectGuesses) ❌")
                        .foregroundColor(Color.black)
                }.font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                            .foregroundColor(GameColor.context)
                    })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}
 

struct ScoreView_Previews: PreviewProvider {
  static var previews: some View {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
  }
}
