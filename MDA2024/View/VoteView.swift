//
//  VoteView.swift
//  MDA2024
//
//  Created by Henrique Delgado on 04/12/24.
//

import SwiftUI

public struct VoteView: View {
    public var body: some View {
        VStack {
            Text("Quem será o ")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding(.top)
            Text("MELHOR DO ANO?")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .bold()
        }
        .vAlign(.top)
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    VoteView()
}
