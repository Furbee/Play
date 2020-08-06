//
//  ContentView.swift
//  Play
//
//  Created by Oscar Nord on 2020-08-02.
//  Copyright © 2020 Oscar Nord. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        GeometryReader { g in
            Color.init(red:0.04, green:0.05, blue:0.05)
            .edgesIgnoringSafeArea(.all)
            ScrollView {
                Color.init(red:0.04, green:0.05, blue:0.05)
                .edgesIgnoringSafeArea(.all)
                Spacer().frame(height: 20)
                WebView()
                    .frame(height: g.size.height)
            }.frame(height: g.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
