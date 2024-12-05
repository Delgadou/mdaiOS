//
//  LionView.swift
//  MDA2024
//
//  Created by Henrique Delgado on 04/12/24.
//

import SwiftUI

struct LionView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Leao")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                LinearGradient(gradient:
                                Gradient(colors: [Color.green.opacity(0.8), Color.yellow.opacity(0.8), Color.red.opacity(0.8)]),
                               startPoint: .leading,
                               endPoint: .trailing)
                .ignoresSafeArea()

                VStack {
                    VStack {
                        Text("Você está pronto")
                            .font(.title)
                            .foregroundStyle(.black)
                            .padding(.top)
                        Text("PARA VOTAR?")
                            .font(.largeTitle)
                            .foregroundStyle(.black)
                            .bold()
                    }.vAlign(.top)

                    NavigationLink(destination: VoteView()) {
                        Text("Começar votação")
                            .font(.headline)
                            .foregroundStyle(
                                LinearGradient(gradient:
                                    Gradient(colors:
                                                [Color.green, Color.yellow, Color.red]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing))
                            .frame(minWidth: 100, maxWidth: 350, minHeight: 55)
                            .background(Color.black)
                            .cornerRadius(10)
                            .padding()
                    }
                }
            }
        }
    }
}

struct LionViewPreview: PreviewProvider {
    static var previews: some View {
        LionView()
    }
}
