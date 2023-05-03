//
//  SettingsView.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 03/05/23.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @State private var BackgroundColor : Color = .black
   @State var Toggle : Bool = false
    
    //MARK: BODY
    var body: some View {
        NavigationStack{
            ZStack {
                
               BackgroundColor.ignoresSafeArea()
               
                
                
                ScrollView(.vertical,showsIndicators: false){
                    
                    VStack(spacing:20){
                        
                        
                        
                        GroupBox(label:
                                HStack {
                                 Text("FruitsApp")
                            
                                 Spacer()
                            
                                Image(systemName: "info.circle")
                            
                                 }
                                 )
                        {
                            HStack {
                               
                                Spacer()
                                ColorPicker(selection: $BackgroundColor, supportsOpacity: true) {
                                    Text("Select a color")
                                }
                            }
                            .padding()
                            HStack {
                               
                                Spacer()
                                
                                SwiftUI.Toggle(isOn: $Toggle) {
                                    Text(Toggle ? "DarkMode" : "LightMode")
                                }
                            }
                            .padding()
                            HStack {
                               Image("logo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100,height: 100)
                                    .cornerRadius(15)
                                Spacer()
                                
                               Text("This fruits app is build with various functionalities, more focused on UI design of the app")
                            }
                           
                        }
                        .padding(.top,5)
                        
                    }//end: vstack
                    
                }//end: scrollview
                .navigationTitle("Settings")
                
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                                .font(.title)
                                .fontWeight(.bold)
                                
                        })
            )//end: navigationbaritems
                
            }
        }//end : navigationview
        .accentColor(.gray)
        
    
    }
    
    //MARK: FUNCTIONS
    
}
   //MARK: PREVIEWS
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
