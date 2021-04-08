//
//  QuestionView.swift
//  Project_1
//
//  Created by 刘泓磊 on 4/7/21.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
  let question: Question
 
  var body: some View {
    VStack {
      Text(question.questionText)
        .foregroundColor(GameColor.context)
        .font(.largeTitle)
        .bold()
        .multilineTextAlignment(.leading)
      Spacer()
        VStack {
          ForEach(0..<question.possibleAnswers.count) { answerIndex in
            Button(action: {
              print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
              viewModel.makeGuess(atIndex: answerIndex)
            }) {
              ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                .foregroundColor(GameColor.context)
                .background(viewModel.color(forOptionIndex: answerIndex))
                .multilineTextAlignment(.leading)
            }
            .disabled(viewModel.guessWasMade) // new line
          }
          
        }
        if viewModel.guessWasMade {
            Button(action: { viewModel.displayNextScreen() }) {
                BottomTextView(str: "Next")
                    .foregroundColor(GameColor.context)
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
