//
//  FruitDetailView.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 03/05/23.
//

import SwiftUI

struct FruitDetailView: View {
    
    //MARK: PROPERTIES
    var fruit: Fruit
    
    //MARK: BODY
    
    var body: some View {
        NavigationStack {
            
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center,spacing: 20){
                    
                    //header
                    DetailHeader(fruit: fruit)
                    LinkView()
                        .padding(.top,10)
                        .padding(.bottom,40)
                    VStack(alignment: .leading, spacing: 20){
                        
                        //title
                        Text(fruit.title)
                            .font(.title).fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //headline
                        Text(fruit.headline)
                            .font(.headline)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                        
                        //nutrients
                        GroupBox{
                            NutrientsListBox(fruit: fruit)
                                
                               
                        }
                        .foregroundColor(
                            Color.black
                        )
                        .fontWeight(.bold)
                       
                        
                        
                      
                        //subheading
                        Text("Learn more About \(fruit.title) ")
                            .foregroundColor(fruit.gradientColors[1])
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        
                        //description
                        Text(fruit.description)
                            .font(.subheadline)
                            .font(.footnote)
                            .foregroundColor(.gray.opacity(6))
                            .fontWeight(.black)
                            .multilineTextAlignment(.leading)
                        //link
                      
                    }//END: VSTACK
                    .padding()
                    .frame(maxWidth:640)
                }//END: VSTACK
            }
            .ignoresSafeArea()
            
            .navigationBarTitle(fruit.title)
            .navigationBarTitleDisplayMode(.inline)
            
        }//END: NAVIGATION STACK
    }
    
    //MARK: FUNCTIONS
    
}
   //MARK: PREVIEWS
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[2])
    }
}
