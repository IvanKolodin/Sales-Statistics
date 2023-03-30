//
//  Greetings.swift
//  HelloVadim
//
//  Created by Наталья Белоусова on 21.03.2023.
//

import SwiftUI

struct Greetings: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(Strings.helloVadim)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                Text(Strings.welcomeBack)
                    .foregroundColor(.white)
                    .font(.title3)
            }
            Spacer()
            Button(
                action: { print("!") },
                label: { Images.settingsButton  }
            )
            .frame(width: Spacing.l, height: Spacing.l)
                .foregroundColor(.white)
                .padding()
        }
        .padding(.horizontal, Spacing.twentyEight)
        .padding(.bottom, Spacing.thirtySix)
    }
}
