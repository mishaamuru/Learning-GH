//
//  ContentView.swift
//  challenge-part2
//
//  Created by Mishaa on 2022-07-05.
//

import SwiftUI

struct ContentView: View {
    
    @State var array:[String]?
    
    var body: some View {
        VStack {
            Button {
                array = nil
            } label: {
                Text("Number1")}
            
            Button {
                array = [String]()
                array?.append("cheese")
                array?.append("Milk")
            } label: {
                Text("Number2")}
            
            if array == nil {
                Text("Plese press on second button to add")
            } else {
                List(array!, id: \.self) { item in
                                    Text(item)
            }

        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
