//
//  DetailHeader.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 03/05/23.
//

import SwiftUI

struct DetailHeader: View {
    
    @State private var isAnimatingImage : Bool = false
    
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .leading, endPoint: .trailing)
            
        
            Image(fruit.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(23)
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
            .padding()
        }
        .frame(height: 440)
        .onAppear{
            withAnimation(.spring()){
                isAnimatingImage = true
            }
          
        }
        
           
            
    }
}

struct DetailHeader_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeader(fruit: fruitData[1])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
