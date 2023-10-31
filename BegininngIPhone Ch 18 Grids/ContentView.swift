//
//  ContentView.swift
//  BegininngIPhone Ch 18 Grids
//
//  Created by Eddington, Nick on 10/30/23.
//
//Photo:
//https://unsplash.com/photos/brown-and-black-animal-on-green-grass-C1BjxQCqba0
//https://unsplash.com/photos/raccoon-walking-on-lawn-grass-6GMq7AGxNbE
//https://unsplash.com/photos/brown-and-black-turtle-on-green-grass-during-daytime-VFTq3si9YVw
//https://unsplash.com/photos/brown-turtle-swimming-underwater-L-2p8fapOA8
//https://unsplash.com/photos/brown-and-white-owl-oqYHtXrLXLo
//https://unsplash.com/photos/owl-on-green-plant-during-daytime-LEWbO3MqUsM
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HGrid()
                .tabItem {
                    Image(systemName: "1.circle")
                }

            VGrid()
                .tabItem {
                    Image(systemName: "2.circle")
                }

            UploadPhoto()
                .tabItem {
                    Image(systemName: "3.circle")
                }
        }
        .tabViewStyle(DefaultTabViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
