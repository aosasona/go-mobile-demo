//
//  ContentView.swift
//  GoMobileTest
//
//  Created by Ayodeji Osasona on 04/06/2024.
//

import SwiftUI
import Shared

struct ContentView: View {
    @State var result: Int
    
    func sum(_ a: Int, _ b: Int) {
        result = Shared.SharedSum(a, b)
    }
    
    func minus(_ a: Int, _ b: Int) {
        result = Shared.SharedDiff(a, b)
    }
    
    var body: some View {
        VStack {
            Text("\(result)")
            
            Button(action: { sum(4, 8) }) {
                Text("Run")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(result: 0)
}
