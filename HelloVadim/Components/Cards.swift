//
//  Cards.swift
//  HelloVadim
//
//  Created by Наталья Белоусова on 21.03.2023.
//

import SwiftUI

struct Cards: View {
    
    private var columns: [GridItem] = [
        GridItem(.fixed(200)),
        GridItem(.fixed(150))
    ]
    
    private var array = [
        informationCards(
              image: Images.sales,
              text: Strings.figuresSales,
              textTwo: Strings.sales,
              color: Colors.ColorString.colorSales
        ),
        informationCards(
              image: Images.customers,
              text: Strings.numberOfClients,
              textTwo: Strings.costomers,
              color: Colors.ColorString.colorCustomers
        ),
        informationCards(
              image: Images.productStatistics,
              text: Strings.numberOfProducts,
              textTwo: Strings.products,
              color: Colors.ColorString.colorProductStatistics
        ),
        informationCards(
              image: Images.revenue,
              text: Strings.amountOfIncome,
              textTwo: Strings.revenue,
              color: Colors.ColorString.colorRevenue
        )
    ]
    
    var body: some View {
        LazyHGrid(rows: columns, spacing: Spacing.thirtyFour) {
            ForEach(0..<array.count, id: \.self) { index in
                array[index]
            }
        }
    }
}

extension View {
    func cornerRadius(
        _ radius: CGFloat,
        corners: UIRectCorner,
        isStroked: Bool
    ) -> some View {
        clipShape(
            CornerRadiusShape(
                radius: radius,
                corners: corners,
                isStroked: isStroked
            )
        )
    }
}

struct informationCards: View {
    var image: Image
    var text: String
    var textTwo: String
    var color: String
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                VStack(spacing: 0) {
                    image
                        .padding()
                    Text(text)
                        .bold()
                        .font(.title2)
                    Text(textTwo)
                        .padding(.vertical,  Spacing.m)
                }
            }
        }
        .padding(.all, Spacing.thirtySix)
        .background() {
            Circle()
                .foregroundColor(Color(hex: color))
                .frame(width: Spacing.oneHundredAndSixty,
                       height: Spacing.oneHundredAndSixty)
        }
    }
}

struct CornerRadiusShape: Shape {
    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners
    var isStroked: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(
                width: radius,
                height: radius
            )
        )
        
        if isStroked {
            path.stroke()
        }
        
        return Path(path.cgPath)
    }
}

