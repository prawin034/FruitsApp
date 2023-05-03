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
    
    @State private var isPresented :  Bool = false
    
  
    
    @State private var presented : Bool = false

    
    var body: some View {
        
        NavigationView{
          
            ZStack {
                
                
                Color.green.opacity(0.3).ignoresSafeArea()
                
             
                ScrollView {
                    
                    ForEach(fruits){item in
                        ZStack {
                           
                            NavigationLink(destination: FruitDetailView(fruit: item)) {
                                FruitRowView(fruit: item)
                                   
                            }
                        }


                    }

                }
                
                

                .listStyle(GroupedListStyle())
               
                
                .navigationTitle("Fruits Row View")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading:
                        Text("back".capitalized)
                            .font(.headline)
                            .foregroundColor(.secondary)
                            .fontWeight(.bold)
                            .onTapGesture {
                        isOnBoarding = true
                                
                                
                    },
                    trailing: Button(action: {
                        isPresented.toggle()
                    }, label: {
                        Image(systemName: "text.justify")
                         
                    })
                    .sheet(isPresented: $isPresented, content: {
                        SettingsView()
                            
                    })
                    
            )
            }
            .overlay(
                
                Button(action: {
                    presented.toggle()
                        
                    
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal,10)
                        .frame(width:60,height: 60)
                        .background(Color.black)
                      
                        .cornerRadius(30)
                        .padding()
                })
                
                , alignment: .bottomTrailing)
            
            .sheet(isPresented: $presented) {
                Text("second screen")
            }
            
            
            
        }//end navigationstack
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( fruits: fruitData)
        
    }
}
