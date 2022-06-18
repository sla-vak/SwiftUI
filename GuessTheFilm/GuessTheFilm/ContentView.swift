//
//  ContentView.swift
//  GuessTheFilm
//
//  Created by Вячеслав Каньшин on 18.06.2022.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "ru-Ru")
        let sythesizer = AVSpeechSynthesizer()
        sythesizer.speak(utterance)
    }
    
    var body: some View {
        
        VStack {
            
            Text("Угадай фильм по эмодзи!")
                .font(.system(.title, design: .rounded))
                .fontWeight(.semibold)
            
            Text("Нажми на кнопку и узнаешь правильный ответ!")
                .font(.system(.title2, design: .rounded))
                .padding()
            
            Button {
                speak(text: "Это Бэтмэн!")
            } label: {
                Text("🦇🤡🌃")
                    .fontWeight(.bold)
                    .font(.title)
            }
            .padding()
            .background(Color.gray)
            .cornerRadius(25)
            
            Button {
                speak(text: "Это Холодное сердце!")
            } label: {
                Text("👭❄️☃️")
                    .fontWeight(.bold)
                    .font(.title)
            }
            .padding()
            .background(Color.purple)
            .cornerRadius(25)
            
            Button {
                speak(text: "Это Властелин Колец")
            } label: {
                Text("🧙‍♂️💍🧑🏻‍🦱")
                    .fontWeight(.bold)
                    .font(.title)
            }
            .padding()
            .background(Color.mint)
            .cornerRadius(25)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
