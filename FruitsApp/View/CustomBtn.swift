//
//  CustomBtn.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 02/05/23.
//

import SwiftUI

struct CustomBtn: View {
    //MARK: PROPERTIES
    
    //MARK: BODY
    var body: some View {
         
        Button {
            
        } label: {
            HStack(alignment:.center, spacing:5 ) {
                Text("Start")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.bold)
                   
               
                
                Image(systemName: "arrow.right.circle")
                    .font(.subheadline)
                    .foregroundColor(.white)
                
            }
            .padding(20)
            .padding(.horizontal,40)
            .frame(width: 200)
           // .background(Color("ColorBlueBerryLight"))
            .background(
            
             //   Capsule().strokeBorder(Color.black, lineWidth: 1.25)
                Capsule()
                    
                
            )
            .shadow(color: Color.black.opacity(0.3), radius: 15, x:0, y:10)
            .cornerRadius(20)
              
        }

    }
    
    //MARK: FUNCTIONS
}
    //MARK: PREVIEW
struct CustomBtn_Previews: PreviewProvider {
    static var previews: some View {
        CustomBtn()
            .previewLayout(.sizeThatFits)
    }
}
