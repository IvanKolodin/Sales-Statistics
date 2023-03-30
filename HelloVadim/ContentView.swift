//
//  ContentView.swift
//  HelloVadim
//
//  Created by Иван Колодин on 21.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText = ""
    
    var body: some View {
        content
    }
    var content: some View {
        ZStack {
            VStack {
                NavBar()
                Greetings()
                search
                Spacer()
                Cards()
                Spacer()
            }
        }
        .ignoresSafeArea()
        .background(.black)
    }
    
    var search: some View {
        HStack {
            TextField(Strings.search, text: $searchText)
        }
        .padding()
        .background(.white)
        .cornerRadius(Spacing.thirteen)
        .padding(.horizontal, Spacing.twentyEight)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
