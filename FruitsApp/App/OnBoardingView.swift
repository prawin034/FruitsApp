//
//  OnBoardingView.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 02/05/23.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: PROPERTIES
    var fruits : [Fruit] = fruitData
    
    //MARK: BODY
    var body: some View {
        TabView {
            
          
            ForEach(fruits[0..<5]) { fruit in
               FruitCardView(fruit: fruit)
            }
        }//end tabview
       .tabViewStyle(.page)
       .ignoresSafeArea()
        
    }
    
    //MARK: FUNCTIONS
}
   
   //MARK: PREVIEWS
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitData)
    }
}
