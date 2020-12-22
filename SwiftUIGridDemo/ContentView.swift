//
//  ContentView.swift
//  SwiftUIGridDemo
//
//  Created by Ngo Dang tan on 22/12/2020.
//

import SwiftUI

struct ContentView: View {
    let items = Array(1...12).map({"image\($0)"})
    let layout = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
 
    ]
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVGrid(columns: layout, content: {
                    ForEach(items,id: \.self){item in
                        VStack{
                            Image(item)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .border(Color.secondary)
                                .cornerRadius(12)
                                .padding()
                            Spacer()
                            Button("GET"){
                                
                            }
                            .foregroundColor(.blue)
                            .padding()
                        }
                    }
                })
            }
            .navigationTitle("App Store")
        }
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
