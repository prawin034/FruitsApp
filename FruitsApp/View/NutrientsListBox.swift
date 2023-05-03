//
//  NutrientsListBox.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 03/05/23.
//

import SwiftUI

struct NutrientsListBox: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    
    let  nutrients : [String] = [
    
      "Energy", "Sugar", "Fat", "Protein", "Vitamins","Minerals"
    ]
    
    //MARK: BODY
    var body: some View {
       
        DisclosureGroup("Nutrients per 100g"){
            
            ForEach(0..<nutrients.count, id: \.self) { item in
                HStack(alignment:.center, spacing:10) {
                    Image(systemName: "info.circle")
                        .padding(.horizontal,15)
                   
                   
                    Text(nutrients[item])
                   // Spacer()
                    Spacer()
                    Text(fruit.nutrition[item])
                }
                .frame(maxWidth:.infinity)
                
                .padding()
            }
            
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .leading, endPoint: .trailing)
        )
        .cornerRadius(15)
        
    }
    
    //MARK: FUNCTIONS
}
   //MARK: PREVIEWS

struct NutrientsListBox_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsListBox(fruit: fruitData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 440))
            .padding()
    }
}
