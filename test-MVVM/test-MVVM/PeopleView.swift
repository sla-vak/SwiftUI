//
//  ContentView.swift
//  test-MVVM
//
//  Created by Вячеслав Каньшин on 03.11.2022.
//

import SwiftUI

struct PeopleView: View {
    @ObservedObject var viewModel = PersonViewModel()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                ForEach(viewModel.people) { person in
                    
                    HStack {
                        Text(person.name)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text(person.email)
                            Text(person.phoneNumber)
                        }
                    }
                    .frame(height:80)
                    .padding(12)
                    
                }
            }
            Menu("Menu".uppercased()) {
                Button("Reverse", action: {viewModel.reverseOrder()})
                Button("Shuffle", action: {viewModel.shuffleOrder()})
                Button("Remove last", action: {viewModel.removeLast()})
                Button("Remove first", action: {viewModel.removeFirst()})
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
