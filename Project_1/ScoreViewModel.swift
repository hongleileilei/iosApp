//
//  ScoreViewModel.swift
//  Project_1
//
//  Created by 刘泓磊 on 4/7/21.
//

import Foundation
struct ScoreViewModel {
  let correctGuesses: Int
  let incorrectGuesses: Int
 
  var percentage: Int {
    (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
  }
}
