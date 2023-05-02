//
//  FruitCardView.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 02/05/23.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: PROPERTIES
    
    var fruit : Fruit
    @State private var isAnimating : Bool = false
    
   
    
    //MARK: BODY
    var body: some View {
        
        ZStack {
            
            //background
            
            //foreground
            VStack(spacing:20) {
                //1 FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color:Color(red:0,green:0, blue:0, opacity: 0.15),radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 :0.6)
                
                // 2 FRUIT: TITLE
                    
                
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
                
                
                //3 FRUIT:SUBHEADLINE
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                
                //4 FRUIT: START BUTTON
                CustomBtn()
                
            } //END : VSTACK
        }// END: ZSTACK
        .onAppear {
            withAnimation(.spring()) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(
            LinearGradient(gradient:  Gradient(colors: fruit.gradientColors), startPoint: .leading, endPoint: .trailing)
                .cornerRadius(20)
        )
        .padding(.horizontal,10)
    }
    
    
    //MARK: FUNCTIONS
    
}
   //MARK: PREVIEWS

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitData[2])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
