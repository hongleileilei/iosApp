//
//  BottomTextView.swift
//  Project_1
//
//  Created by 刘泓磊 on 4/7/21.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
 
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
