//
//  LazyVGrid.swift
//  BegininngIPhone Ch 18 Grids
//
//  Created by Eddington, Nick on 10/30/23.
//

import SwiftUI

struct VGrid: View {
    let columns = [GridItem(.fixed(150), spacing: 10), GridItem(.fixed(150), spacing: 10)]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            VStack{
                Image(.owl1)
                    .resizable()
                    .scaledToFit()
                Text("Owl1")
            }
            VStack{
                Image(.owl2)
                    .resizable()
                    .scaledToFit()
                Text("Owl2")
            }
            VStack{
                Image(.raccoon1)
                    .resizable()
                    .scaledToFit()
                Text("Raccoon1")
            }
            VStack{
                Image(.raccoon2)
                    .resizable()
                    .scaledToFit()
                Text("Raccoon2")
            }
            VStack{
                Image(.turtle1)
                    .resizable()
                    .scaledToFit()
                Text("Turtle2")
            }
            VStack{
                Image(.turtle2)
                    .resizable()
                    .scaledToFit()
                Text("Turtle2")
            }
        }
        .padding()
    }
}


#Preview {
    VGrid()
}
