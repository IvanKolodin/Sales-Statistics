//
//  Components.swift
//  HelloVadim
//
//  Created by Иван Колодин on 21.03.2023.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        HStack {
            Images.chartBar
                .foregroundColor(.white)
                .frame(width: Spacing.twentyEight,
                       height: Spacing.twentyEight)
            Spacer()
            Images.vadim
                .resizable()
                .scaledToFill()
                .frame(width: Spacing.xxl,
                       height: Spacing.xxl)
                .cornerRadius(Spacing.xs)
                .padding()
                .background(
                    CornerRadiusShape(
                        radius: Spacing.m,
                        corners: .allCorners,
                        isStroked: true
                    )
                    .stroke(
                        .white,
                        lineWidth: Spacing.two
                    )
                )
        }
        .padding(.horizontal, Spacing.twentyEight)
        .padding(.top, Spacing.thirtyEight)
        .padding(.bottom, Spacing.ninetyTwo)
    }
}

