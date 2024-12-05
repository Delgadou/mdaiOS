//
//  SwiftUIView.swift
//  MDA2024
//
//  Created by Henrique Delgado on 03/12/24.
//

import SwiftUI

struct LoginView: View {
    @State var emailID: String = ""
    @State var password: String = ""
    //var action: () -> Void

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Text("Login")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
                Text("Caixadagua + Racha Taruma + Kymbal?")
                    .font(.headline)
                    .foregroundStyle(.gray)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
                
                VStack {
                    ZStack(alignment: .leading) {
                        if $emailID.wrappedValue.isEmpty {
                            Text("Email")
                                .foregroundColor(.gray)
                                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                        }
                        TextField("Email", text: $emailID)
                            .foregroundColor(.white)
                            .textContentType(.emailAddress)
                            .autocapitalization(.none)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }.padding(.bottom)
                    
                    
                    ZStack(alignment: .leading) {
                        if $password.wrappedValue.isEmpty {
                            Text("Senha")
                                .foregroundColor(.gray)
                                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                        }
                        SecureField("Senha", text: $password)
                            .foregroundColor(.white)
                            .textContentType(.password)
                            .autocapitalization(.none)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Esqueceu a senha?")
                            .foregroundStyle(.white)
                            .padding(.top)
                    }.hAlign(.trailing)
                        .padding(.bottom)
                }
                
                NavigationLink(destination: LionView()) {
                    GradientButton(title: "Entrar")
                }

            }.padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black)
        }
    }
}

struct GradientButton: View {
    var title: String

    var body: some View {
        Text(title)
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(gradient:
                                Gradient(colors: [Color.green, Color.yellow, Color.red]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing))
            .cornerRadius(10)
            .shadow(radius: 5)
    }

}

struct GradientBackground: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.red]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

extension View {
    func hAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }

    func vAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
}

#Preview {
    LoginView()
}
