//
//  MoodTextView.swift
//  MyPlan
//
//  Created by Mac on 04/09/2022.
//

import SwiftUI

struct MoodTextView: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.black)
        .padding()
        .background(.white.opacity(0.4))
        .cornerRadius(15)

    }
}

struct OtherMood: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.custom("Amiri-BoldItalic", size: 25))
        .foregroundColor(.black)
        

    }
}


