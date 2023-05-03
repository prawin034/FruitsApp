//
//  FruitRowView.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 02/05/23.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: PROPERTIES
    var fruit : Fruit
    
    //MARK: BODY
    var body: some View {
        
        HStack {//MARK: START HSTACK
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 100,height: 100,alignment: .center)
                .background(
                
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .leading, endPoint: .trailing)
                    
                )
                .cornerRadius(12)
                .padding()
            Spacer()
           
            
            
            HStack {
                VStack(alignment:.leading,spacing: 5) {
                    Text(fruit.title)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                  
                    Text(fruit.headline)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
              
            Spacer()
            
        }//MARK: END HSTACK
        
        
    }
    
    //MARK: FUNCTIONS
    
}
   //MARK: PREVIEWS
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitData[2])
            .previewLayout(.sizeThatFits)
            
    }
}
