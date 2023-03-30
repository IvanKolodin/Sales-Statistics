//
//  Constants.swift
//  HelloVadim
//
//  Created by Иван Колодин on 21.03.2023.
//

import SwiftUI

enum Strings {
    static let helloVadim = "Hello, Vadim"
    static let welcomeBack = "Welcome Back!"
    static let search = "Search"
    
    static let figuresSales = "230k"
    static let sales = "Sales"
    static let numberOfClients = "8.549k"
    static let costomers = "Costomers"
    static let products = "Products"
    static let numberOfProducts = "1.423k"
    static let revenue = "Revenue"
    static let amountOfIncome = "$9745"
}

enum Images {
    static let chartBar = Image (systemName: "chart.bar")
    
    static let vadim = Image("Vadim")
    static let settingsButton = Image("settingsButton")
    static let productStatistics = Image("productStatistics")
    static let customers = Image("customers")
    static let revenue = Image("revenue")
    static let sales = Image("sales")
}

enum Spacing {
    static let two: CGFloat = 2
    static let xs: CGFloat = 8
    static let thirteen: CGFloat = 12
    static let m: CGFloat = 16
    static let l: CGFloat = 24
    static let twentyEight: CGFloat = 28
    static let thirtyFour: CGFloat = 32
    static let thirtySix: CGFloat = 36
    static let thirtyEight: CGFloat = 40
    static let xxl: CGFloat = 48
    static let ninetyTwo: CGFloat = 92
    static let oneHundredAndSixty: CGFloat = 160
    static let imageHeight: CGFloat = 200
}

enum Colors {
    enum ColorsStatic {
        static let colorSales = Color(hex: "#C0DEDD")
        static let colorCustomers = Color(hex: "#E6DFF1")
        static let colorProductStatistics = Color(hex: "#F2EEE9")
        static let colorRevenue = Color(hex: "#F1DFDE")
    }
    enum ColorString {
        static let colorSales: String = "#C0DEDD"
        static let colorCustomers = "#E6DFF1"
        static let colorProductStatistics = "#F2EEE9"
        static let colorRevenue = "#F1DFDE"
    }
}

