//
//  ContentView.swift
//  StackViewProject
//
//  Created by Вячеслав Каньшин on 19.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                VStack {
                    Text("Instant Developer")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        
                    Text("Get help from experts in 15 minutes")
                        .foregroundColor(.white)
                }
                HStack {
                    Image("student")
                        .resizable()
                        .scaledToFit()
                    Image("tutor")
                        .resizable()
                        .scaledToFit()
                }
                .padding(.horizontal, 45)
                .padding()
                
                Text("Need help with coding problems? Register!")
                    .foregroundColor(.white)
                Spacer()
                
                VStack {
                    Button {
                        
                    }label: {
                        Text("Sing up")
                    }
                    .frame(width: 200)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.indigo)
                    .cornerRadius(15)
                    
                    Button {
                        
                    }label: {
                        Text("Log in")
                    }
                    .frame(width: 200)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(15)
                }
                
            }.background {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
