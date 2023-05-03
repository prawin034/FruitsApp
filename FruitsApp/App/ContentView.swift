//
//  ContentView.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 02/05/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isOnBoarding") var isOnBoarding : Bool = false
    var fruits: [Fruit] = fruitData
    var body: some View {
        
        NavigationStack{
            
            List {
                ForEach(fruits){item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                    }
                    
                   
                }
               
            }
            .listStyle(GroupedListStyle())
           
            
            .navigationTitle("Fruits Row View")
            .navigationBarTitleDisplayMode(.inline)
            //.navigationBarItems(leading: Text("back"))
            .toolbar {
                Text("Back")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .fontWeight(.bold)
                    .onTapGesture {
                        isOnBoarding = true
                    }
            }
        }//end navigationstack
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( fruits: fruitData)
    }
}
