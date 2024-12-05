//
//  WelcomeView.swift
//  MDA2024
//
//  Created by Henrique Delgado on 04/12/24.
//
import SwiftUI

struct WelcomeView: View {
    var action: () -> Void

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                VStack {
                    Text("2024 Andow")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .bold()
                        .hAlign(.center)
                    Text("MEMBRO DO ANO")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .bold()
                        .hAlign(.center)
                }
                .vAlign(.center)

                VStack {
                    NavigationLink(destination: RegisterView()) {
                        GradientButton(title: "Criar conta")
                    }

                    NavigationLink(destination: LoginView()) {
                        Text("Já possui conta? Logue aqui")
                            .foregroundStyle(.white)
                            .padding()
                    }

                }.padding()


            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black)
        }
    }
}

#Preview {
    WelcomeView(action: {})
}
