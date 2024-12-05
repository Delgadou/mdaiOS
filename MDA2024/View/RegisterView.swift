//
//  RegisterView.swift
//  MDA2024
//
//  Created by Henrique Delgado on 04/12/24.
//

import SwiftUI

struct RegisterView: View {
    @State var emailID: String = ""
    @State var password: String = ""
    @State var passwordConfirmation = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome!")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
                
                Text("Please fill the form below")
                    .font(.headline)
                    .foregroundStyle(.gray)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
                
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
                        Text("Password")
                            .foregroundColor(.gray)
                            .padding()
                    }
                    TextField("Email", text: $password)
                        .foregroundColor(.white)
                        .textContentType(.password)
                        .autocapitalization(.none)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }.padding(.bottom)
                
                ZStack(alignment: .leading) {
                    if $password.wrappedValue.isEmpty {
                        Text("Confirm password")
                            .foregroundColor(.gray)
                            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                    }
                    TextField("Email", text: $password)
                        .foregroundColor(.white)
                        .textContentType(.password)
                        .autocapitalization(.none)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                
                Text("Ao criar a conta você concorda em dar o cuzinho para o Delgado")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                    .foregroundStyle(.gray)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
                    .hAlign(.center)
                
                GradientButton(title: "Criar conta")
            }
            .vAlign(.topLeading)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
        }
    }
}

#Preview {
    RegisterView()
}
