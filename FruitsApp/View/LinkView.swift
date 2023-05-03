//
//  LinkView.swift
//  FruitsApp
//
//  Created by Manikandan.MC on 03/05/23.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        GroupBox {
            
            HStack{
                Text("Content Source")
                Spacer()
                
                Link(destination: URL(string: "https://wikipedia.com")!) {
                    Text("Wikipedia")
                    Image(systemName: "arrow.up.right.square")
                }
            }
            .font(.subheadline)
            
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
            .previewLayout(.sizeThatFits)
    }
}
