//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 02/05/23.
//

import SwiftUI

@main
struct FruitsAppApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding : Bool = true
    var body: some Scene {
        WindowGroup {
           // ContentView()
           
            if isOnBoarding {
                OnBoardingView()
            }else {
                ContentView()
            }
        }
    }
}
